###Módulo Países

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
