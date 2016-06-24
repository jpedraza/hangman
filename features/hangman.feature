Feature: Ahorcado

Scenario: Mostrar el titulo
	Given Inicio la aplicacion
	Then Debo ver "Bienvenido al juego del ahorcado"

Scenario: Muestro cantidad letras de la palabra
	Given Inicio la aplicacion
	Then Debo ver "_ _ _ _ _ _ _ _ _ _"

