# Concat de strings antes e depois da entrada
# José Luiz Corrêa Junior - juninhoojl
# Escrito em Ruby
# ----------------------------------------


nome_conf = 'pre_config'

#caso não exista parametro de execucao sera usado o arquivo "pre_conf"
##confere se foi executado com argumento
if ARGV[0] != nil
	##artribuicao de valor para nome do pre_conf caso argv[0] exista
	arq_configuracao = ARGV[0]
elsif ARGV[0] == nil && File.file?(nome_conf)
	##artribuicao de valor para nome do pre_conf caso argv[0] nao exista e tenha arquivo
	arq_configuracao = 'pre_config'
else #nao existe nenhum nem outro
	puts "\t O arquivo #{nome_conf} nao existe e nao foi passado parametro\n"
	puts "\n Ou coloque o nome do arquivo de arq_configuracao <nome_conf>\n"
	exit(1)

end

configs=File.open(arq_configuracao).read

# Item 0 = arquivo de entrada
# Item 1 = arquivo de saida
# Item 2 = argumento antes
# Item 3 = argumento depois

#vetor que vai conter as linhas
linhas = []

#transformar cada linha em um item de vetor
configs.each_line do |line|
	linhas << line
end

#caminhos
arquivo_entrada = linhas[0].chomp
arquivo_saida = linhas[1].chomp

#string de antes
#para poder ficar linha nula
if linhas[2] != nil
add_antes = linhas[2].chomp
else
add_antes = ''
end

#string de depois
#para poder ficar linha nula
if linhas[3] != nil
add_depois = linhas[3].chomp
else
add_depois = ''
end

#quanto a ter espacos antes
if linhas[4] != nil
#vai conter espaco antes
	if linhas[4].chomp == 'esp_antes=sim'
		espaco_antes = true
	else #nao vai conter
		espaco_antes = false
	end
else#por padrao nao tem
	espaco_antes = false
end

#quanto a ter espacos depois
if linhas[5] != nil
#vai conter espaco antes
	if linhas[5].chomp == 'esp_depois=sim'
		espaco_depois = true
	else #nao vai conter
		espaco_depois = false
	end
else#por padrao nao tem
	espaco_depois = false
end

#cria arquivo de saida
arq_escrita = File.new(arquivo_saida, "w")

#leitura do arquivo
text=File.open(arquivo_entrada).read

text.each_line do |line|
	#so vai adicionar se a linha for diferente de nil para poder usar chomp
	if line != nil
		if espaco_antes && espaco_depois #espaco antes e depois
		
			#escrita adicionando espaco antes e depois
			arq_escrita.puts "#{add_antes} #{line.chomp} #{add_depois}"

		elsif !espaco_antes && !espaco_depois #sem nenhum espaco
		
			#escrita adicionando sem nenhum espaco
			arq_escrita.puts "#{add_antes}#{line.chomp}#{add_depois}"

		elsif espaco_antes && !espaco_depois
		
			#escrita adicionando espaco antes somente
			arq_escrita.puts "#{add_antes} #{line.chomp}#{add_depois}"

		else #espaco depois somente

			#escrita adicionando depois somente
			arq_escrita.puts "#{add_antes}#{line.chomp} #{add_depois}"

		end

	end
end
#fecha arquivo de escrita
arq_escrita.close




