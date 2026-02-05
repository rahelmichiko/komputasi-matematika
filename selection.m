function [parent1,parent2] = selection(population)
fitness = zeros(1,length(population)); %mengurutkan dari terkecil hingga terbesar
for i=1: length(population)
    fitness(i) = population(i).fitness; %membuat kategori
end

[~,index] = max(fitness); %mengambil fitness paling besar
parent1 = population(index); %individu pertama
population(index) = []; 
fitness(index) = [];
[~,index] = max(fitness);
parent2 = population(index);
end