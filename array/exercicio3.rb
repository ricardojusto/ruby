name_list = ["ricardo", "patricia", "joao"]

new_list = name_list.map do |name|
	#... a função map aqui coloca o que aparece
	name.capitalize
end

puts new_list


# usar o p para imprimir - aparece como array
# o ponto de exclamação escreve por cima da lista original (map!)



