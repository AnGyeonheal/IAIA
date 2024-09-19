function xfeature=timeFeatures(x)
% Returns time-domain features of vector x
% input:    x, 1-d vector
% output:   xFeature in table form


xfeature = table;
N=length(x);



%% mean and STD
xfeature.mean=mean(x);
xfeature.std=std(x);

%% RMS
%**** Your code goes here ****
xfeature.rms=sqrt(sum(x.^2)/N);
%% Square Root Average
%**** Your code goes here ****
xfeature.sra=(sum(sqrt(abs(x)))/N)^2;

%% Average of Absolute Value
xfeature.aav=sum(abs(x))/N;


%% Energy (sum of power_2)
xfeature.energy=sum(x.^2);


%% Peak
%**** Your code goes here ****
xfeature.peak=max(abs(x));

%% Peak2Peak
xfeature.ppv=peak2peak(x);


%% Impulse Factor
xfeature.if=xfeature.peak/xfeature.aav;

%% Shape Factor
xfeature.sf=xfeature.rms/xfeature.aav;

%% Crest Factor
%**** Your code goes here ****
xfeature.cf=max(abs(x)) / sqrt(sum(x.^2)/N);


% Marginal(Clearance) Factor
xfeature.mf=xfeature.peak/xfeature.sra;

%% Skewness
xfeature.sk=skewness(x);


%% Kurtosis
xfeature.kt=kurtosis(x);



