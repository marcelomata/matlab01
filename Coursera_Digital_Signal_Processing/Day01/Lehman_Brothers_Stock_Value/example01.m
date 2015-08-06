%{
%pylab inline
import datetime as dt

fp = open('LehmanBrothers_data.txt')
columns = ['Close/Last','Volume']
data = empty((0,len(columns)))
dates = []
for line in fp.readlines()[1:]:
    fields = line.split('\t')
    dates.append(dt.datetime.strptime(fields[0], "%Y/%m/%d"))
    data = vstack([data, array([[float(fields[1].replace(',','')), float(fields[2].replace(',',''))]])])
fp.close()
%}

%{
import pandas as pd
df = pd.DataFrame(data, index=dates, columns=columns)
df.head()
%}

%{
subplot(311)
df['Close/Last'].plot()
ylabel('Value')
xlabel('Date');
subplot(313)
df['Volume'].plot()
ylabel('Volume')
xlabel('Date');
%}

%{
import scipy
values=df['Close/Last'];
y=np.zeros((len(values),1))
k=100;
for i in range(0,k+1):
    y[i]=values[i];
for i in range(k+1,len(values)): # (H-red)
    _sum=0.0;   
    for j in range(0,k+1):  
        _sum=_sum+values[i-j];
    y[i]=_sum/k;
subplot(311)   
df['Close/Last'].plot();
xlabel("Date")
ylabel("Value")
title('Original Signal')

subplot(313)
dfs=df.copy();
dfs['Close/Last']=y;
dfs['Close/Last'].plot();
xlabel("Date")
ylabel("Value")
title('Smoothed Signal')
%}

%{
<matplotlib.text.Text at 0xe3ae320>
%}


