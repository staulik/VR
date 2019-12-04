#language: pt

Funcionalidade: Manter consulta de CEP através de API
Como um aplicação de serviço
Quero enviar requisições para consultar endereço através do CEP
para verificar se as informações são retornadas corretamente

Contexto:
Dado dado que tenha uma API para consultar CEP


Cenario: Consultar endereço atraves de um CEP
Quando a requisão é enviada com um CEP válido
Então então posso visualizar as informações do endereço

@regression
Cenario: Consultar endereço atraves de um CEP invalido
Quando a requisão é enviada com CEP inválido
Então então posso visualizar a mensagem de erro
