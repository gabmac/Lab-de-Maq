close all;
clear all;
clc;

sim('Pre_rot_trif',[0,1/30]);

plot(CP(:,1),CP(:,2));
hold on;
plot(CP(:,1),CS(:,2));
legend("Corrente Primário","Corrente Secundário")
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
legend("Tensão de Fase Primário","Tensão de Fase Secundário","Tensão de Linha Primário","Tensão de Linha Secundário");
xlabel("Tempo (s)");
ylabel("Tensão (V)");
title("Tensões");

sim("Simul2DY",[0,1/30]);

plot(CPD(:,1),CPD(:,2));
hold on;
plot(CPD(:,1),CSD(:,2));
legend("Corrente Primário","Corrente Secundário")
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
legend("Tensão de Fase Primário","Tensão de Fase Secundário","Tensão de Linha Primário","Tensão de Linha Secundário");
xlabel("Tempo (s)");
ylabel("Tensão (V)");
title("Tensões Delta-Y");