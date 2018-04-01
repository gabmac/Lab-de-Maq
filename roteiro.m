close all;
clear all;
clc


sim("Curto_circ_rot",[0,1/30]);


plot(CCcor(:,1),CCcor(:,2));
xlabel("Tempo (s)");
ylabel("Corrente (A)");
title("Simula��o da Corrente do experimento em Curto Circuito");
CCCrms = rms(CCcor(:,2))

figure;



plot(CCT(:,1),CCT(:,2));
xlabel("Tempo (s)");
ylabel("Tens�o (V)");
title("Simula��o da Tens�o do experimento em Curto Circuito");
CCTrms = rms(CCT(:,2))

figure; 

potCC = CCcor.*CCT;

plot(CCT(:,1),potCC(:,2));
xlabel("Tempo (s)");
ylabel("Pot�ncia (VA)");
title("Simula��o da Pot�ncia do experimento em Curto Circuito");
CCPrms = rms(potCC(:,2))


sim("Circuito_aberto_rot",[0,1/30]);

figure;
plot(CV(:,1),CV(:,2));
xlabel("Tempo (s)");
ylabel("Corrente (A)");
title("Simula��o da Corrente do experimento em Circuito Aberto");
CVrms = rms(CV(:,2))

figure;



plot(TV(:,1),TV(:,2));
xlabel("Tempo (s)");
ylabel("Tens�o (V)");
title("Simula��o da Tens�o do experimento em Circuito Aberto");
TVrms = rms(TV(:,2))

potV = CV.*TV;

figure;

plot(CV(:,1),potV(:,2));
xlabel("Tempo (s)");
ylabel("Pot�ncia (VA)");
title("Simula��o da Pot�ncia do experimento em Circuito Aberto");
PVrms = rms(potV(:,2))
