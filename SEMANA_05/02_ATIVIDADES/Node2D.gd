extends Node2D

var teste = false
#var valor = 0 #não ta sendo usada
# o caractere u com o acento "´" nao pode ser usando no codigo
var numero = 0
# falta "var" antes de lista
var lista = []
var nome

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	# o caractere u com o acento "´" nao pode ser usando no codigo
	#faltava o $ antes do LineEdit para que o codigo transformasse o numero em texto
	numero = int($LineEdit.text)
	# a variavel "nome não estava declarada"
	# mudar a ordem (colocaer o nome antes do lineEdit)
	nome = $LineEdit.text
	

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		# numero deveria estar escrito com N minusculo 
		numero += i
		# numero deveria estar escrito com N minusculo 
		lista.append(numero)
		# acrescentei String antes do numero para que o numero apareça na tela como texto
	$Label.text = String(numero)


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
		# a variavel "cont" e "i" não estavam declaradas
	var cont
	# o i deve estar igualado a 0 para iniciar
	var  i = 0
	# requisito de parada para quando i < len
	while(i < len(lista)):

		cont=0
		#i=0
		if(lista[i]%2==1):
			cont+=1
		if(cont!=0):
			$Label2.text = str(nome) + "baldo" 
		# tem o objetivo de parar a conta
		i = i + 1

