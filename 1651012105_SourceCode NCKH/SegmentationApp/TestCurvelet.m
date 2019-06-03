function res = TestCurvelet(x)

J = 4;
L = [3 4 4 5];

% Noise estimation
[wca wch wcv wcd] = dwt2( x, 'db2' );
sig = median(abs( wcd(:) ))/0.6472;
disp('noise estimation finished');

y = cvt( double(x), J, L, 1 );
disp('cvt finished');
load cvt_th_4_3445_mean_lasl_zero.mat
cth = cvt_llas_2_lasl( cvt_th );
cth = cellmul( cth, 3*sig );
nn = length( cth );
cth{nn} = cellmul( cth{nn}, 4/3 );
y = cvt_llas_2_lasl( y );
yd = cellmul( y, cellcompare( cellabs( y ), cth ) );
yd = cvt_lasl_2_llas( yd );
disp('detection finished');
xr = icvt( yd, J, L, 1 );
disp('icvt finished');
 
 
wv='db2';
filtertype=wv;
level=4;
levels=level;
%Doing the wavelet decomposition
[C,S]=wavedec2(xr,levels,filtertype);
st=(S(1,1)^2)+1;
bayesC=[C(1:st-1),zeros(1,length(st:1:length(C)))];
var=length(C)-S(size(S,1)-1,1)^2+1;
%Calculating sigmahat
sigmahat=median(abs(C(var:length(C))))/0.6745;
% sigmahat=median(abs(C(var:length(C))))/0.6472;
for jj=2:size(S,1)-1
%for the H detail coefficients
coefh=C(st:st+S(jj,1)^2-1);
thr=bayes(coefh,sigmahat);  %undefined
bayesC(st:st+S(jj,1)^2-1)=sthresh(coefh,thr); % undefined
st=st+S(jj,1)^2;
% for the V detail coefficients
coefv=C(st:st+S(jj,1)^2-1);
thr=bayes(coefv,sigmahat);
bayesC(st:st+S(jj,1)^2-1)=sthresh(coefv,thr);
st=st+S(jj,1)^2;
%for Diag detail coefficients 
coefd=C(st:st+S(jj,1)^2-1);
thr=bayes(coefd,sigmahat);
bayesC(st:st+S(jj,1)^2-1)=sthresh(coefd,thr);
st=st+S(jj,1)^2;
end
%Reconstructing the image from the Bayes-thresholded wavelet coefficients
res=waverec2(bayesC,S,filtertype);


