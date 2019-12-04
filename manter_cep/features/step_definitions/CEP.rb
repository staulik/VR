
  Dado("dado que tenha uma API para consultar CEP") do 
    @manter_cep = CRUD.new
  end                                                                                 
            
  Quando("a requisão é enviada com um CEP válido") do                                   
    @manter_cep.retrieve
   end                                                                                
                                                            
  Então("então posso visualizar as informações do endereço") do
    expect(@manter_cep.retrieve.code).to eq(200)                                
    puts "Cód #{@manter_cep.retrieve.code}, para requisição bem sucedida."
    puts "Código IBGE: #{@manter_cep.retrieve.parsed_response['ibge']}"
    puts "#{@manter_cep.retrieve.parsed_response['logradouro']}"
    puts "#{@manter_cep.retrieve.parsed_response['bairro']}"
    puts "#{@manter_cep.retrieve.parsed_response['localidade']}"
  end 

  Quando("a requisão é enviada com CEP inválido") do                             
    @manter_cep.retrieve_invalid                                                                         
  end                                                                            
                                                                                 
  Então("então posso visualizar a mensagem de erro") do                          
    expect(@manter_cep.retrieve_invalid.code).to eq(400)                                
    puts "Cód #{@manter_cep.retrieve_invalid.code}, verifique se o CEP fornecido esta correto!."
    puts "Código IBGE: #{@manter_cep.retrieve_invalid.parsed_response['ibge']}"
    puts "#{@manter_cep.retrieve_invalid.parsed_response['logradouro']}"
    puts "#{@manter_cep.retrieve_invalid.parsed_response['bairro']}"
    puts "#{@manter_cep.retrieve_invalid.parsed_response['localidade']}"
  end                                                                        
                                                                            
                                                                                 
                                                                                 