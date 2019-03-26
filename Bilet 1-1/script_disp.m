dimensiune = 10;
pm = unifrnd(0,1);
disp(pm);
populatie = gen_pop_real(dimensiune);
disp(populatie);
populatie_mutata = mutatie_pop(populatie,dimensiune,0.6,pm);
disp(populatie_mutata);