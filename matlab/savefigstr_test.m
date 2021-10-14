%savefigstr_test
folder = '../../../latex/latex-teaching/figures/';
csvfpath = fullfile(folder,'parity-test-rmse.csv');
rmse = readmatrix(csvfpath);
captionlist = get_captionlist(rmse);
str = 'Parity plots with \\glspl{rmse} of %s \\SI{}{\\J\\per\\square\\m}.';
caption = sprintf(str,captionlist);
savefigstr(caption,'multi-parity',folder);
