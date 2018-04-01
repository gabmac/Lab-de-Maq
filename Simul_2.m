close all;
clear all;
clc;

sim('Pre_rot_trif',[0,1/30]);

plot(CP(:,1),CP(:,2));
hold on;
plot(CP(:,1),CS(:,2));
legend("Corrente Prim�rio","Corrente Secund�rio")
xlabel("Tempo (s)");
ylabel("Corrente (A)");
title("Correntes");

figure;

plot(TFP(:,1),TFP(:,2));
hold on;
plot(TFP(:,1),TFS(:,2));
hold on
plot(TFP(:,1),TLP(:,2));
hold on;
plot(TFP(:,1),TLS(:,2));
legend("Tens�o de Fase Prim�rio","Tens�o de Fase Secund�rio","Tens�o de Linha Prim�rio","Tens�o de Linha Secund�rio");
xlabel("Tempo (s)");
ylabel("Tens�o (V)");
title("Tens�es");

sim("Simul2DY",[0,1/30]);

plot(CPD(:,1),CPD(:,2));
hold on;
plot(CPD(:,1),CSD(:,2));
legend("Corrente Prim�rio","Corrente Secund�rio")
xlabel("Tempo (s)");
ylabel("Corrente (A)");
title("Correntes Delta-Y");

figure;

plot(TFPD(:,1),TFPD(:,2));
hold on;
plot(TFPD(:,1),TFSD(:,2));
hold on
plot(TFPD(:,1),TLPD(:,2));
hold on;
plot(TFPD(:,1),TLSD(:,2));
legend("Tens�o de Fase Prim�rio","Tens�o de Fase Secund�rio","Tens�o de Linha Prim�rio","Tens�o de Linha Secund�rio");
xlabel("Tempo (s)");
ylabel("Tens�o (V)");
title("Tens�es Delta-Y");