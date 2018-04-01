%% Simulação de Laboratório de Máquinas - ES963 EXP 1

close all;
clc;
clear all

R = 200;

sim('Simula_Maq_1',[0,1]);

tempo = CCarga(:,1);

auxCC = CCarga(:,2);
auxCF = CFonte(:,2);
auxTF = TPrim(:,2);
auxTC = TCarga(:,2);


for i = 1:1:length(CCarga(:,2))
    Pot_ent(i) = auxCF(i)*auxTF(i);
    Pot_carga(i) = auxTC(i)*auxCC(i);
    
end; 

%% Questão A

plot(tempo,Pot_ent);
title("Potência na Entrada");
xlabel("Tempo");
ylabel("VA");
figure;
plot(tempo,Pot_carga)
title("Potência na Carga");
xlabel("Tempo");
ylabel("VA");

%% Questão B
figure;


plot(tempo,TCarga(:,2));


hold on

plot(tempo,TMag(:,2));


hold on

plot(tempo,TPrim(:,2));


hold on

plot(tempo,TSaida(:,2));
legend("Tensão na Carga","Tensão de Magnetização","Tensão Primária","Tensão na Saída");
xlabel("Tempo (s)");
ylabel("Tensão (V)");
title("Tensões");

figure;


plot(tempo,CCarga(:,2));

hold on

plot(tempo,CFonte(:,2));

legend("Corrente na Carga","Corrente na Fonte");
xlabel("Tempo (s)");
ylabel("Corrente (A)");
title("Correntes");

%% Questão C
%% Tensão na Carga é igual a Tensão na Saída

sim('Lab_Maq1_Reb',[0,1/30]);

tempoReb = TCReb(:,1);

figure;


plot(tempoReb,TCReb(:,2));


hold on

plot(tempoReb,TMReb(:,2));


hold on

plot(tempoReb,TPReb(:,2));


hold on


legend("Tensão na Carga","Tensão de Magnetização","Tensão Primária");

xlabel("Tempo (s)");
ylabel("Tensão (V)"); 

title("Tensões Rebatidas");

figure;


plot(tempoReb,CCReb(:,2));

hold on

plot(tempoReb,CFReb(:,2));
legend("Corrente na Carga","Corrente na Fonte");
xlabel("Tempo (s)");
ylabel("Corrente (A)");
title("Correntes Rebatidas");

%% Questão D
%% A tensão na Saída deve ser parecida com o a da Carga

R = 10^6;


sim('Simula_Maq_1',[0,1/30]);

figure;

tempo2 = TCarga(:,1);

plot(tempo2,TCarga(:,2));


hold on

plot(tempo2,TMag(:,2));


hold on

plot(tempo2,TPrim(:,2));


hold on

plot(tempo2,TSaida(:,2));
legend("Tensão na Carga","Tensão de Magnetização","Tensão Primária","Tensão na Saída");
 
title("Tensões Com a Carga 1M");
xlabel("Tempo (s)");
ylabel("Tensão (V)");

figure;


plot(tempo2,CCarga(:,2));

hold on

plot(tempo2,CFonte(:,2));
legend("Corrente na Carga","Corrente na Fonte");
xlabel("Tempo (s)");
ylabel("Corrente (A)");
title("Correntes com a Carga 1M");

%% Questão E

R = 0; %% Curto

sim('Simula_Maq_1',[0,1/30]);

figure;

tempo3 = TCarga(:,1);

plot(tempo3,TCarga(:,2));


hold on

plot(tempo3,TMag(:,2));


hold on

plot(tempo3,TPrim(:,2));


hold on

plot(tempo3,TSaida(:,2));
legend("Tensão na Carga","Tensão de Magnetização","Tensão Primária","Tensão na Saída");
xlabel("Tempo (s)");
ylabel("Tensão (V)");
title("Tensões Com a Carga em Curto");

figure;


plot(tempo3,CCarga(:,2));

hold on

plot(tempo3,CFonte(:,2));
legend("Corrente na Carga","Corrente na Fonte");
xlabel("Tempo (s)");
ylabel("Corrente (A)");
title("Correntes com a Carga em Curto");
