# Concat de strings
# José Luiz Corrêa Junior - juninhoojl
# Escrito em Ruby
# ----------------------------------------

#caminhos
arquivo_entrada = './Arquivos/entrada.txt'
arquivo_saida = './Arquivos/saida.txt'

#adicao strings em cada linha
add_antes = 'antes disso '
add_depois = ' depois disso'

#cria arquivo de saida
arq_escrita = File.new(arquivo_saida, "w")

#leitura do arquivo
text=File.open(arquivo_entrada).read

text.each_line do |line|
#escrita adicionando o que precisa antes e depois
	arq_escrita.puts add_antes+line.chomp+add_depois

end

#fecha arquivo de escrita
arq_escrita.close




