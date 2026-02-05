function genes = create_genes(len)
random_number = randi([32,126],1,len); %membuat random karakter
genes = char(random_number);
end