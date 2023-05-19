clc; clear; close all;
%%
N_fft = 500;
N = 61;
%%
%Các tiêu chí kỹ thuật
sigma_p = 0.02;
sigma_s = 0.02;
omega_cH = 2*pi/3;
omega_cHp = 2*pi/3 + 0.18; omega_cHs = 2*pi/3 - 0.18;
omega_cL = pi/3;
omega_cLp = pi/3 - 0.18; omega_cLs = pi/3 + 0.18;
%%
%Thiết kế lọc FIR
[w] = b0_Hamming(N);
[hn_LT] = a0_DaiChan(omega_cL, omega_cH, N);
hn = hn_LT.*w;
%%
%Vẽ đáp ứng biên độ cho lọc
Hw = fft(hn,N_fft);
delta = 2*pi/N_fft;
omega = 0:delta:pi-delta;
figure(1)
plot(omega,abs(Hw(1:N_fft/2)),'b-','linewidth',1.8); hold on;
line([0 pi],[1-sigma_p 1-sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([0 pi],[1+sigma_p 1+sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([0 pi],[sigma_s sigma_s],'Color','black','LineStyle','--','linewidth',1.6);
line([omega_cHp omega_cHp],[0 1+sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([omega_cHs omega_cHs],[0 1+sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([omega_cH omega_cH],[0 1+sigma_p],'Color','red','LineStyle','--','linewidth',1.6);
line([omega_cLp omega_cLp],[0 1+sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([omega_cLs omega_cLs],[0 1+sigma_p],'Color','black','LineStyle','--','linewidth',1.6);
line([omega_cL omega_cL],[0 1+sigma_p],'Color','red','LineStyle','--','linewidth',1.6);
xlabel('\omega'); ylabel('|H(\omega)|');
