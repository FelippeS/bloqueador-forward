
escrita = []

escrita << '<!DOCTYPE html>'
escrita << '<link rel="stylesheet" type="text/css" href="estilo.css">'
escrita << '<html>'
escrita << '<body>'
escrita << '<h1>Bloquear Paises:</h1>'

#para juntar na string
checkbox = 'checkbox'
container = 'container'
checkmark = 'checkmark'
checked = 'checked'
line_num=0

#arquivo situacao atual
#escrita_atual = File.new("situacao_atual.txt", "w")

#ler situacao atual
sit_atual = File.readlines("situacao_atual.txt").map do |line|
	  line.split.map(&:to_s)
	end

#p sit_atual


paises_vet = []


text=File.open('paises.txt').read
text.gsub!(/\r\n?/, "\n")
text.each_line do |line|

#		escrita_atual.puts 0
		paises_vet << line.chomp


		

end


#criar for, para comparar com a leitura do arquivo



for i in (0...paises_vet.size)


escrita << "<label class=#{container}>#{paises_vet[i].chomp}"

if sit_atual[i][0] == '0' #se for igual a zero, é nao check
		escrita << "<input type=#{checkbox}>"
else
	escrita << "<input type=#{checkbox} checked=#{checked}>"
end


	escrita << "<span class=#{checkmark}></span>"
	escrita << "</label>"

end



#vai escrever sem o chechek se for zero, se for 1, já da checked




#escrita_atual.close



escrita << '</body>'
escrita << '</html>'

escrita_arq = File.new("paises_bloquear.html", "w")

escrita.each do |item| 


	escrita_arq.puts item
end


escrita_arq.close


