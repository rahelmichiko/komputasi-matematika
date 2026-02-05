function [mutant] = mutation(child,mutation_rate)

mutant = child; %individu yang bermutasi
for i=1:length(child.genes)
    if rand <= mutation_rate
        mutant.genes(i) = char(randi([32,126])); %mutant akan menggatikan gen mana yg bermutasi
    end
end

end