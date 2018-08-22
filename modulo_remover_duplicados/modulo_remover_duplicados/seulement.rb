# Recebe uma entrada e dá uma saida desduplicando
# José Luiz Corrêa Junior - juninhoojl
# Escrito em Ruby
# ----------------------------------------

#metodo .uniq

#caminhos
arq_entrada = './entrada.txt'
arq_saida = './saida.txt'

#lendo arquivo com entradas
val_entrada = File.readlines(arq_entrada).map do |line|
	  line.split.map(&:to_s)
	end
#selecionando somente a coluna 0
val_entrada.map! {|row| row[0]}

#metodo uniq, para verificar se nao existe mais de uma vez o mesmo valor
val_entrada.uniq!

#criando arquivo de saida
saida_arquivo = File.new(arq_saida, "w")

saida_arquivo.puts val_entrada

saida_arquivo.close