#Bloqueador Forward
	... Falta escrever sobre ...
# Composto pelos Seguintes Módulos:

## 1 - Módulo Países

> Autor: José Luiz Corrêa Junior - [GitHub](https://github.com/juninhoojl) - <juninhopc@icloud.com>
> > Escrito em: Ruby, Shell script

Permite bloquear o forward de certos paises, a partir da escolha do usuário. É responsável por criar o arquivo `lista_block_paises.txt`, com. base na seleção do usuário pela interface web, o arquivo intermediário é o `marcadores.txt`, se estiver com indicador **0**, o país em questão não deverá ser bloqueado, caso o indicador seja **1**, deverá!

### Estrutura:
Consiste em 2 executáveis:

* paises_1.rb

```
Junta as listas de faixas encontradas na pasta all-zones em um único arquivo
arquivo, somente dos países selecionados para bloquear.
	* E tem como saida: lista_block_paises.txt
```

* paises_2.sh

```
Esse script atualiza as listas de paises, por meio do download dela
e substituição, logo em seguida é rodado novamente o programa paises_1.rb
	* Obs.: Esse programa é rodado uma vez por dia.
```

### Organização dos arquivos:

> `modulo_paises`
> 
>> paises_1.rb
> 
>> paises_2.sh
> 
>> `Arquivos`
>>> codigos.txt

>>> lista_block_paises.txt

>>> `all-zones`
>>>> ..varios_arquivos..

---

## 2 - Módulo Montar Regras

> Autor: José Luiz Corrêa Junior - [GitHub](https://github.com/juninhoojl) - <juninhopc@icloud.com>
> > Escrito em: Ruby

### Breve descrição:

Esse módulo somente recebe um arquivo de execução, `pre-config`, o qual tem o nome de um arquivo de entrada, ex.: `entrada.txt`, um arquivo de saida, ex.: `saida.txt`, strings para adicionar antes e depois de cada linha no arquivo de entrada!

### Exemplo do arquivo pre-config:

```
./patch/entrada.txt
./patch/saida.txt
bla bla bla
ble ble ble
esp_antes=sim
esp_depois=nao

```
* O arquivo de saida ficará assim:

```
	...
bla bla bla <linha n entrada.txt>ble ble ble
bla bla bla <linha n+1 entrada.txt>ble ble ble
bla bla bla <linha n+2 entrada.txt>ble ble ble
bla bla bla <linha n+3 entrada.txt>ble ble ble
	...
```
### Caso queira utilizar arquivo de configuração com outro nome

Adicione o parametro de execução `<nome_arquivo_configurações>`

* Isso é útil para poder deixar vários arquivos de configuração no mesmo local e alternar entre eles quando desejar!

### Importante:

* Para decidir se deseja espaço entre o primeiro argumento e o conteudo
```esp_antes=sim``` Deixando assim, tera espaço

```esp_depois=nao``` Deixando assim, não terá espaço


* Para decidir se deseja espaço entre o segundo argumento e o conteudo
```esp_depois=sim``` Deixando assim, tera espaço

```esp_depois=nao``` Deixando assim, não terá espaço

* Para deixar de adicionar o primeiro argumento

Exemplo:

```
./patch/entrada.txt
./patch/saida.txt

ble ble ble
esp_antes=sim
esp_depois=sim

```
* Para deixar de adicionar o segundo argumento

Exemplo:

```
./patch/entrada.txt
./patch/saida.txt
bla bla bla

esp_antes=sim
esp_depois=sim

```
* Para deixar de adicionar o primeiro e o segundo argumento

Exemplo:

```
./patch/entrada.txt
./patch/saida.txt

esp_antes=sim
esp_depois=nao

```

### Estrutura:
Consiste em 1 executáveis:

* montar_regra.rb

E em 1 arquivo de configuração 

* pre-conf


### Organização dos arquivos:

> `modulo_montar_regra`
> 
>> montar_regra.rb
> 
>> pre-config
> 

### Dica: Para entender melhor rode o exemplo como está!

---

## 3 - Módulo Conversão

> Autor: José Luiz Corrêa Junior - [GitHub](https://github.com/juninhoojl) - <juninhopc@icloud.com>
> > Escrito em: Ruby

### Breve descrição:

Esse módulo recebe um arquivo de entrada: `entrada.txt` o qual contém IPs e Links misturados e retorna `saida.txt` que contém somente IPs, todos os IPs para cada Link, se existir!

### Exemplo do funcionamento

Tendo um arquivo `entrada.txt` assim: 

```
www.google.com
www.uol.com.br
192.168.1.11
www.facebook.com
www.youtube.com
```
Retornara um arquivo `saida.txt` assim: 

```
192.168.1.11
172.217.162.164
13.33.131.51
13.33.131.46
13.33.131.11
13.33.131.115
31.13.85.38
172.217.29.110
172.217.162.174
172.217.30.14
172.217.29.78

```

### Importante:

* Para decidir se deseja espaço entre o primeiro argumento e o conteudo
```esp_antes=sim``` Deixando assim, tera espaço

```esp_depois=nao``` Deixando assim, não terá espaço


* Para decidir se deseja espaço entre o segundo argumento e o conteudo
```esp_depois=sim``` Deixando assim, tera espaço

```esp_depois=nao``` Deixando assim, não terá espaço

* Para deixar de adicionar o primeiro argumento

Exemplo:

```
./patch/entrada.txt
./patch/saida.txt

ble ble ble
esp_antes=sim
esp_depois=sim

```
* Para deixar de adicionar o segundo argumento

Exemplo:

```
./patch/entrada.txt
./patch/saida.txt
bla bla bla

esp_antes=sim
esp_depois=sim

```
* Para deixar de adicionar o primeiro e o segundo argumento

Exemplo:

```
./patch/entrada.txt
./patch/saida.txt

esp_antes=sim
esp_depois=nao

```

### Estrutura:
Consiste em 1 programa:

* conversao_ip.rb

### Organização dos arquivos:

> `modulo_conversao`
>> `Arquivo`
>>> entrada.txt
>>> 
>>>	 saida.txt
>>>
>> montar_regra.rb


### Dica: Para entender melhor rode o exemplo como está!
---
## 4 - Módulo Block Ataques

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

---

## 5 - Módulo Seulement (Remover valores duplicados)

> Autor: José Luiz Corrêa Junior - [GitHub](https://github.com/juninhoojl) - <juninhopc@icloud.com>
> > Escrito em: Ruby

### Breve descrição:

Esse modulo recebe um arquivo de entrada `entrada.txt` e gera `saida.txt`, o qual só apresentar linhas diferentes, caso existissem duplicadas no arquivo de entrada. 

### Exemplo do execução
* Tendo o arquivo `entrada.txt`:


```
192.168.1.11
172.217.162.164
13.33.131.46
13.33.131.11
13.33.131.51
13.33.131.115
31.13.85.38
192.168.1.11
172.217.162.164
13.33.131.46
172.217.30.14
172.217.29.78
192.168.1.11

```
* O arquivo `saida.txt` ficará assim:

```
192.168.1.11
172.217.162.164
13.33.131.46
13.33.131.11
13.33.131.51
13.33.131.115
31.13.85.38
172.217.30.14
172.217.29.78

```

### Estrutura:
Consiste em 1 programa:

* seulement.rb

### Organização dos arquivos:

> `modulo_remover_duplicados`
> 
>> seulement.rb
> 
>> entrada.txt
>
>> saida.txt

### Dica: Para entender melhor rode o exemplo como está!

