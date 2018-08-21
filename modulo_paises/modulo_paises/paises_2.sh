# Atualização do arquivo das faixas de cada país
# José Luiz Corrêa Junior - juninhoojl
# Escrito em ShellScript
# ----------------------------------------
#!/bin/bash

#caminhos
link_ping=www.google.com
link=http://www.ipdeny.com/ipblocks/data/countries/all-zones.tar
pasta_atual=./arquivos/all-zones
nome_programa=paises_1.rb

#Antes de executar checa se está conectado
if ping -c 4 $link_ping ; then

	#download do arquivo compactado com as listas
	wget -q $link --no-check-certificate

	#deletar pasta atual
	rm -r $pasta_atual

	#criar pasta nova
	mkdir $pasta_atual

	#descompactar arquivo baixado
	tar -xvf all-zones.tar -C $pasta_atual

	#remove o arquivo sem descompactar
	rm all-zones.tar

	#Aqui ja teria que executar de novo o programa que cria as listas novas de block
	ruby $nome_programa

fi

exit

