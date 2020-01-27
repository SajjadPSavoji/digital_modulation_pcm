function [err] = awgn_err(A , repeat)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

size = 2* repeat;
data = zeros(size , 1);
rng shuffle;
noise = normrnd(0 , 1 , size , 1);
for i = 1:size/2
    data(i) = +A;
end
for i = size/2+1 : size
    data(i) = -A;
end
rec = data + noise;
for i = 1 : size
    if rec(i) > 0
        rec(i) = +A;
    else
        rec(i) = -A;
    end
end
acc = sum(data == rec);
err = (size - acc)/size;
end

