function Dat=FX_DATA_prep(code, period, volatility_smoothing, sys1_open, sys1_close, sys2_open, sys2_close)

% m = readtable('/AUD_USD Historical Data.csv');
filename = ['C:\Users\tsunh\Documents\GitHub\MATLAB-Quantitative-Finance\MATLAB_Quant_book\Chapter 13\data\',code,'.csv'];
raw_data = readtable(filename);

date_col = datenum(table2array(raw_data(end-period:end,1)));
price_col = table2array(raw_data(end-period:end,[3,4,5]));
MAT = cat(2, date_col, price_col);

ATR=[max([MAT(2:end,2)-MAT(2:end,3),MAT(2:end,2)-MAT(1:end-1,4), MAT(1:end-1,4)-MAT(2:end,3)],[],2)];
N=movavg(double(ATR),volatility_smoothing,volatility_smoothing,0);
Dat=dataset(MAT(2:end,1),MAT(2:end,2),MAT(2:end,3),MAT(2:end,4),ATR,N,...
    'VarNames',{'date','HIGH','LOW','CLOSE','ATR','N'});

Dat.signal_1=zeros(size(Dat.date)); 
Dat.signal_2=zeros(size(Dat.date)); 
Dat.quit_1=zeros(size(Dat.date));
Dat.quit_2=zeros(size(Dat.date));

for daynumber=(sys2_open+1):size(Dat,1)  
    Dat.signal_1(daynumber)=(Dat.CLOSE(daynumber)>...
        max(Dat.HIGH(daynumber-sys1_open:daynumber-1)))-...
        (Dat.CLOSE(daynumber)<min(Dat.LOW(daynumber-sys1_open:daynumber-1)));

    Dat.quit_1(daynumber)=-(Dat.CLOSE(daynumber)<...
        min(Dat.LOW(daynumber-sys1_close:daynumber-1)))+...
        (Dat.CLOSE(daynumber)>max(Dat.HIGH(daynumber-sys1_close:daynumber-1)));

    Dat.signal_2(daynumber)=(Dat.CLOSE(daynumber)>...
        max(Dat.HIGH(daynumber-sys2_open:daynumber-1)))-...
        (Dat.CLOSE(daynumber)<min(Dat.LOW(daynumber-sys2_open:daynumber-1)));

    Dat.quit_2(daynumber)=-(Dat.CLOSE(daynumber)<...
        min(Dat.LOW(daynumber-sys2_close:daynumber-1)))+...
        (Dat.CLOSE(daynumber)>max(Dat.HIGH(daynumber-sys2_close:daynumber-1)));
end
Dat(1:55,:)=[];