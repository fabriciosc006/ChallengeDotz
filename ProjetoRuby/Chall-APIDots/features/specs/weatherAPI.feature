# language: pt

Funcionalidade: Consultar temperaturas na API Weather

@Celsius
Cenario: temperatura cidade em Celsius
Dado que acesso a API e busco por uma cidade
Entao a API me retorna com a temperatura da cidade em Graus Celsius

@Latlong
Cenario: Temperatura da cidade com coordenadas lat e long
Dado que acesso a API e busco por uma cidade com as coordenadas lat e long
Entao a API retorna com a temperatura da cidade

@Invalido
Cenario: Autenticacao invalida
Dado que acesso a API e busco por uma cidade com a chave de autenticação invalida
Entao a API me retorna com status de nao autorizado