clear; clc;
close all;

path='./home/sophiaahn/Documents/Benjamin/Budget';
[num,txt,raw] = xlsread('testing.xls');

%importing and sorting income data
x = [num(:,1)];
labels = [txt(:,3)];
ax1 = subplot(1,2,1);

%importing and sorting expenditure data
y = [num(:,3)];
labelsy = [txt(:,5)];
ax2 = subplot(1,2,2);

%plotting income chart
a = pie(ax1,x);
title(ax1, [txt(1:1,1)], 'FontSize', 20);
    %creates data labels such that the category and percentage appears
aText = findobj(a, 'Type', 'text');
percentValuesa = get(aText, 'String');
combineda = strcat(labels+", "+ percentValuesa);
for i = 1:length(combineda)
    aText(i).String = combineda(i)
end

%plotting expenditure chart
b = pie(ax2,y);
title(ax2, [txt(1:1,6)], 'FontSize', 20);
bText = findobj(b, 'Type', 'text');
percentValuesb = get(bText, 'String');
combinedb = strcat(labelsy+", "+ percentValuesb);
for i = 1:length(combinedb)
    bText(i).String = combinedb(i)
end