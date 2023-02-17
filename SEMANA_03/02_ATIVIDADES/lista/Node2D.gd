extends Node2D
var button
var item
var texto
var lista_array = ["uva" , "pera", "kiwi", "limão"]
var array = []
var texto3

#fução que quando o botão ok for precionado, a resposta "Hello" apareça no bloco de saida
func _ready():
	pass

#função que retorne uma lista na tela
func _on_ButtonIniciar_pressed():
	print(lista_array)
	$ColorRect/resposta.text = str(lista_array)

#função para que os itens colocados na lista apareçam no bloco de reprodução
func _on_cliqueAqui_pressed():
	item = $item.text
	array.append(item) 
	
	$ColorRect/resposta.text = str(array)
	
	print(array)

	#função que retorne um texto
func _on_buttonText_pressed():
	texto3 = "oi profesor"
	$ColorRect/resposta.text = str(texto3)

		#função que retorne um NUMERO na tela
func _on_buttonNumero_pressed():
	texto = $texto.text
	$ColorRect/resposta.text = str(texto)
