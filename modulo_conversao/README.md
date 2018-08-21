## Módulo Conversão

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
