pkg load audio; %make sure you have octave version greater than or equal to 5.2.0
pkg load signal;
pkg load communications;
filename='C:\Octave\Octave-5.2.0\mingw64\share\octave\packages\audio-2.0.0\data\sample.wav'; %remember to store your audio file in audio package data folder only 
[y,fs]= audioread(filename);
l=length(filename);
m=input('Enter the value of m: ');
R=a/m;
zeros_matrix=zeros(1,R-1);
starting_one=[1];
alpha_value=[0.8];
echo_filter=cat(2,o,z,f); % It is a way of creating a discrete time domain echo filter (refer the image is attached in the main repository)  
output=conv(y,h); %applying filter on the audio file
sound(output,fs)
numerator=echo_filter; %creating numerator of coefficients of transfer function of echo filter
d=zeros(1,R);
denominator=cat(2,o,d); %creating denominator of coefficients of transfer function of echo filter
H=tf(numerator,denominator);
bode(H) %plots magnitude and phase response of our designed echo filter

