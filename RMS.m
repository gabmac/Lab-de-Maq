function vetor = rms(vet) 

v = 0;
aux = vetor(:,2);
for i = 1:1:length(aux)
        v = (1/length(aux))*(aux(i)^2) + v;
end;

vetor = sqrt(v);