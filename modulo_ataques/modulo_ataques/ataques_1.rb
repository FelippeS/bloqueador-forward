# Junção de cada tipo da ataque a ser bloqueado
# José Luiz Corrêa Junior - juninhoojl
# Escrito em Ruby
# ----------------------------------------

#caminhos
arquivo_marcadores = './Arquivos/marcadores.txt'
arquivo_bloquear = './Arquivos/lista_block_ataques.txt'
arquivo_listas = './Arquivos/listas/'
tipo_ataques = './Arquivos/nomes.txt'

#Abre arquivo com marcadores do status atual, bloqueado = 1, nao = 0
marcadores = File.readlines(arquivo_marcadores).map do |line|
	  line.split.map(&:to_s)
	end

#Faz a leitura do arquivo com os nomes dos arquivos que devem ser incluidos
nomes_ataques = File.readlines(tipo_ataques).map do |line|
	  line.split.map(&:to_s)
	end

#array com todos os enderecos
enderecos = []

#for alinhado para checagem
for i in 0...marcadores.size do

	if marcadores[i][0] == '1'#se marcador = 1, então bloquear

		#Nome do arquivo especifico
		nome_especifico = nomes_ataques[i][0]
		puts nome_especifico

		nome_existencia = arquivo_listas + nome_especifico
		#Checa existencia do arquivo
		if File.file?(nome_existencia)

			#faz a leitura
			lido = File.readlines(nome_existencia).map do |line|
		  			line.split.map(&:to_s)
				end

			#array recebe tudo dele
			enderecos += lido
			
		end
		
	end

end


#criar arquivo de saida
saida_arquivo = File.new(arquivo_bloquear, "w")

#escrevendo nele
enderecos.each do |item|
	saida_arquivo.puts item
end

#fechar arquivo de saida
saida_arquivo.close







