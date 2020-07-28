clc;
clf;
clear all;
close all;
hold off;
alpha=0.9;
Wcr=2.1584;a=2;
w1=logspace(-2,log10(Wcr),1000);
w2=logspace(log10(Wcr),2,1000); 
mag1= (20*log10(abs(a)))*ones(1,numel(w1));
Mag2=@(w2) (20*alpha*log10(w2));
y=semilogx(w1,mag1,'Color','black','LineStyle','--');
hold on;
y=semilogx(w2,Mag2(w2),'Color','black','LineStyle','--');
grid on;
xlabel('Frequency(rad/sec)','FontSize', 15);
ylabel('Magnitude dB','FontSize', 15);


clc;
clear all;
syms s alpha
alpha=0.9;a=2;
s=logspace(-2,2,1000);
mag1=@(w) (20*log10(abs(sqrt(((1i.*s).^alpha + a).^2))));
x=semilogx(s,mag1(s),'Color','black');
hold on;
grid on;
xlabel('Frequency(rad/sec)','FontSize', 15);
ylabel('Magnitude dB','FontSize', 15);
legend('Asymptotic magnitude bode plot','Exact magnitude bode plot','Location','northeast');