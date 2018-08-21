## Módulo Block Ataques

> Autor: José Luiz Corrêa Junior - [GitHub](https://github.com/juninhoojl) - <juninhopc@icloud.com>
> > Escrito em: Ruby, Shell script

Permite bloquear o forward de IPs, a partir de listas atualizadas automaticamente, uma vez por dia. É responsável por criar o arquivo `lista_block_ataques.txt`, com base na seleção do usuário pela interface web, ou quais listas ele quer que sejam adicionadas automaticamente ou não. O arquivo intermediário é o `marcadores.txt`, se estiver com indicador **0**, a lista em questão não deverá ser adicionada na lista_clock_ataques, caso o indicador seja **1**, deverá!

### Tipos de ataques disponíveis para bloquear automaticamente

* Ataques SSH
* Ataques Mail, Postfix
* Ataques Apache, Apache-DDOS, RFI-Attacks
* Ataques imap, sasl, pop3...
* Ataques FTP
* Tentaram Login em SIP-, VOIP- or Asterisk-Server
* Ataques RFI-Attacks, REG-Bots, IRC-Bots or BadBots
* IPs que efetuaram mais de 5.000 ataques ultimamente
* Ataques ircbot 
* Ataques Joomlas, Wordpress and other Web-Logins with Brute-Force Logins



### Estrutura:
Consiste em 2 executáveis:

* ataques_1.rb

```
Junta as listas de IPs atacantes encontradas na pasta listas em um 
único arquivo arquivo, somente dos tipos de ataques desejados para bloquear.
	* E tem como saida: lista_block_ataques.txt
```

* ataques_2.sh

```
Esse script atualiza as listas de IPs atacantes recentes, por meio 
do download dela e substituição, logo em seguida é rodado novamente 
o programa ataques_1.rb
	* Obs.: Esse programa é rodado uma vez por dia.
```

### Organização dos arquivos:

> `Modulo_Ataques`
> 
>> ataques_1.rb
> 
>> ataques_2.sh
> 
>> `Arquivos`
>>> tipos.txt

>>> marcadores.txt

>>> lista_block_ataques.txt

>>> `listas`
>>>> ..varios_arquivos..
