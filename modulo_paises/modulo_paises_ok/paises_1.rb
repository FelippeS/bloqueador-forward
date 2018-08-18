# Junção faixas de cada país a ser bloqueado
# José Luiz Corrêa Junior - juninhoojl
# Escrito em Ruby
# ----------------------------------------

#caminhos
arquivo_marcadores = './Arquivos/marcadores.txt'
arquivo_codigos = './Arquivos/codigos.txt'
arquivo_bloquear = './Arquivos/lista_block_paises.txt'
arquivo_zonas = './Arquivos/all-zones/'

#Abre arquivo com marcadores do status atual, bloqueado = 1, nao = 0
marcadores = File.readlines(arquivo_marcadores).map do |line|
	  line.split.map(&:to_s)
	end

#Abre arquivo com codigos dos paises
codigos = File.readlines(arquivo_codigos).map do |line|
	  line.split.map(&:to_s)
	end

#array com todos os enderecos

enderecos = []

#for alinhado para checagem
for i in 0...marcadores.size do

	if marcadores[i][0] == '1'#se marcador = 1, então bloquear

		#Checa existencia do arquivo
		nome_arquivo =arquivo_zonas+codigos[i][0]+'.zone'


		if File.file?(nome_arquivo)
		
			#faz a leitura
			lido = File.readlines(nome_arquivo).map do |line|
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







