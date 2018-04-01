close all;
clear all;
clc;

sim('PRE_ROT_IND',[0,1/30]);



plot(CC(:,1),CC(:,2));
hold on
plot(CC(:,1),CF(:,2));
title("Corrente com Carga Indutiva");
legend("Corrende da Carga", "Corrente da Fonte");
xlabel("Tempo (s)");
ylabel("Corrente (A)");

figure;

plot(TC(:,1),TC(:,2));
hold on
plot(TC(:,1),TF(:,2));
title("Tens�o com Carga Indutiva");
legend("Tens�o da Carga", "Tens�o da Fonte");
xlabel("Tempo (s)");
ylabel("Tens�o (V)");



sim('Pre_rot_cap',[0,1/30]);



plot(CCC(:,1),CCC(:,2));
hold on
plot(CCC(:,1),CFC(:,2));
title("Corrente com Carga Capacitiva");
legend("Corrende da Carga", "Corrente da Fonte");
xlabel("Tempo (s)");
ylabel("Corrente (A)");

figure;

plot(TCC(:,1),TCC(:,2));
hold on
plot(TCC(:,1),TFC(:,2));
title("Tens�o com Carga Capacitiva");
legend("Tens�o da Carga", "Tens�o da Fonte");
xlabel("Tempo (s)");
ylabel("Tens�o (V)");


