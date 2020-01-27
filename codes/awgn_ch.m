function [rec] = awgn_ch(A , sigma , size , p)
%UNTITLED Summary of this function goes here
%

data = zeros(size , 1);
noise = normrnd(0 , sigma , size , 1);
rng shuffle;

for i = 1:size
    r = rand();
    if r <= p
        data(i) = +A;
    else
        data(i) = -A;
    end
end
rec = data + noise;
end

