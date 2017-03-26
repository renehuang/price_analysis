sigma = zeros(10000,1);
for i = 1:10000
    diff = Close(1+i:end,1)-Close(1:end-i,1);
    diffperct = diff./Close(1:end-i,1);
    sigma(i,1)=std(diffperct);
end

%%
T=1:10000;
plot(T,sigma)

%%

logsigma = log10(sigma);
plot(log10(T),logsigma)