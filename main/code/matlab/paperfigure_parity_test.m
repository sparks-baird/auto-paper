folder = 'latex-teaching/figures/';
%LaTeX Defaults
setlatex();

%Single Parity Plot
paperfigure();
ytrue = (0.01:0.0001:1).';
ypred = normrnd(ytrue,0.02);
parityplot(ytrue,ypred)
savefigpng(folder,'single-parity')
str = 'Parity plot with \\gls{rmse} of \\SI{%.5d}{\\J\\per\\square\\m}';
caption = sprintf(str,get_errmetrics(ypred,ytrue,'rmse'));
savefigstr(caption,'multi-parity',folder)

%Multiple Parity Plots
ypred2 = normrnd(ytrue,0.05);
ypred3 = normrnd(ytrue,0.1);
ypred4 = normrnd(ytrue,0.15);

S2 = struct('ytrue',ytrue,'ypred',ypred2);
S3 = struct('ytrue',ytrue,'ypred',ypred3);
S4 = struct('ytrue',ytrue,'ypred',ypred4);

Slist = {S,S2,S3,S4};
multiparity(Slist,'ht',14)
savefigpng(folder,'multi-parity')
rmse = zeros(4,1);
for i = 1:4
    yp = Slist{i}.ypred;
    rmse(i) = get_errmetrics(yp,ytrue,'rmse');
end
writematrix(rmse,fullfile(folder,'parity-test-rmse.csv'))

captionlist = get_captionlist(rmse);
str = 'Parity plots with \\glspl{rmse} of %s \\SI{}{\\J\\per\\square\\m}.';
caption = sprintf(str,captionlist);
savefigstr(caption,'multi-parity',folder);
