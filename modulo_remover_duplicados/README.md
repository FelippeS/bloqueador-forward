## Módulo Seulement (Remover valores duplicados)

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
