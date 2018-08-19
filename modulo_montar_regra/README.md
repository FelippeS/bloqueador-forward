## Módulo Montar Regras

> Autor: José Luiz Corrêa Junior - [GitHub](https://github.com/juninhoojl) - <juninhopc@icloud.com>
> > Escrito em: Ruby

### Breve descrição:

Esse módulo somente recebe um arquivo de execução, `pre-config`, o qual tem o nome de um arquivo de entrada, ex.: `entrada.txt`, um arquivo de saida, ex.: `saida.txt`, strings para adicionar antes e depois de cada linha no arquivo de entrada!

###Exemplo do arquivo pre-config:

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
