% 在做一个关于投票的模拟
% 例如：有5个人参加的投票，候选人有6人，我想要模拟出所有的投票情况
% 把问题抽象出来就是。
% x1+x2+x3+x4+x5+x6 = 5
% x1, x2, x3, x4, x5, x6是0到5的整数

clear;clc;
[A{1:6}] = ndgrid(0:5);
B = reshape(cat(7,A{:}),[],6);
ind = sum(B,2)==5;
C = B(ind,:)