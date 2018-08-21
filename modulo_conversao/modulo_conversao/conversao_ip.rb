# Transforma lista de IPs e Links em somente IPs
# José Luiz Corrêa Junior - juninhoojl
# Escrito em Ruby
# ----------------------------------------

#Comando = resolveip www.google.com | cut -d" " -f6
#resolveip https://stackoverflow.com | cut -d" " -f6

require "resolv" #lib para transformar links em ips
require "ipaddress" # exige instalar:  gem install ipaddress

#caminhos
arq_entrada = './Arquivo/entrada.txt'
arq_saida = './Arquivo/saida.txt'

#lendo arquivo com entradas
val_entrada = File.readlines(arq_entrada).map do |line|
	  line.split.map(&:to_s)
	end
#selecionando somente a coluna 0
val_entrada = val_entrada.map {|row| row[0]}

#lista dos que ja sao ips
ja_ip = []
#lista dos que ainda nao sao ips
n_ip = []
#lista escrita final
som_ips = []
#lista dos retornos sem conferir 
retornos = []
##lista ok recebe somente os que sao ips
lista_ok = []

#conferindo quais ja sao ips
val_entrada.each do |item|

	if IPAddress.valid?(item)	#se ja for IP
		ja_ip << item
	else		#se nao for IP
		n_ip << item
	end

end

n_ip.each do |item|
#recebe os retornos/ips de cada host
	retornos += Resolv.getaddresses(item)
end

#confere se existia algum que ja era ip
if ja_ip != []
	som_ips += ja_ip
end

#somente se existir algum retorno
if retornos != []

	retornos.each do |item| 
		#confere se todos os retornos sao realmente ips
		if IPAddress.valid?(item)
			lista_ok << item
		end

	end

end

#junta o som-ips com a lista ok se ela nao for nula


if lista_ok != []
	som_ips += lista_ok
end

#somente se o som_ips nao for vazio

if som_ips != []

	#criar arquivo de saida
	saida_arquivo = File.new(arq_saida, "w")

	#escrevendo nele
	som_ips.each do |item|
		saida_arquivo.puts item
	end

	#fechar arquivo de saida
	saida_arquivo.close

else#somente cria o arquivo de saida, para nao dar problema com os outros modulos
	saida_arquivo = File.new(arq_saida, "w")
	saida_arquivo.close

end








