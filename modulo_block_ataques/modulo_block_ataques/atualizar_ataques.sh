# Atualização do arquivo de cada tipo de ataque
# José Luiz Corrêa Junior - juninhoojl
# Escrito em ShellScript
# ----------------------------------------
#!/bin/bash

#enderecos de cada lista
lista_ssh=https://lists.blocklist.de/lists/ssh.txt
lista_mail=https://lists.blocklist.de/lists/mail.txt
lista_apache=https://lists.blocklist.de/lists/apache.txt
lista_imap=https://lists.blocklist.de/lists/imap.txt
lista_ftp=https://lists.blocklist.de/lists/ftp.txt
lista_sip=https://lists.blocklist.de/lists/sip.txt
lista_bots=https://lists.blocklist.de/lists/bots.txt
lista_strongips=https://lists.blocklist.de/lists/strongips.txt
lista_ircbot=https://lists.blocklist.de/lists/ircbot.txt
lista_brute=https://lists.blocklist.de/lists/bruteforcelogin.txt

#endereco para ping
link_ping=www.google.com
#caminho da pasta atual
pasta_atual=./Arquivos/listas
#programa para ser executado de novo logo depois de atualizar as listas
nome_programa=ataques_1.rb


#Antes de executar checa se está conectado
if ping -c 4 $link_ping ; then

	#deletar pasta atual
	rm -r $pasta_atual

	#criar pasta nova
	mkdir $pasta_atual

	#entrando na pasta atual









	#download das listas de cada tipo de ataque
	#wget lista_ssh
	# wget lista_ftp -P ./Arquivos/listas
	# wget lista_apache -P ./Arquivos/listas
	# wget lista_imap -P ./Arquivos/listas
	# wget lista_ftp -P ./Arquivos/listas
	# wget lista_sip -P ./Arquivos/listas
	# wget lista_bots -P ./Arquivos/listas
	# wget lista_strongips -P ./Arquivos/listas
	# wget lista_ircbot -P ./Arquivos/listas
	# wget lista_brute -P ./Arquivos/listas
	#Aqui ja teria que executar de novo o programa que cria as listas novas de block
	#ruby $nome_programa

fi

exit

