function [pred , theory , as] = plt_data(xlim , size , repeat)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
as = linspace(0,xlim , size).';
pred = zeros(size , 1);
theory = qfunc(as);
for i = 1:size
    pred(i) = awgn_err(as(i) , repeat);
end
end

