require 'HTTParty'
require 'httparty/request'
require 'httparty/response/headers'

#require_relative '..features/pages/hooks/hook.rb'

class CRUD

   include HTTParty

  
  def retrieve
    @@response = CRUD.get('https://viacep.com.br/ws/05074010/json/') 
 end 

  def retrieve_invalid
    @@response = CRUD.get('https://viacep.com.br/ws/0507401/json/') 
end
end
  