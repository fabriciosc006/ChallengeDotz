Dado('que acesso a API e busco por uma cidade') do                           
    @get_validcity = Getvalidcity.new
    $response = @get_validcity.getporid('3663517').to_json
    puts $response 
    
  end                                                                          
                                                                               
  Entao('a API me retorna com a temperatura da cidade em Graus Celsius') do    
    
    expect(@get_validcity.getporid('3663517').code).to eql (200)
    puts @get_validcity.getporid('3663517').parsed_response["main"] 
    $temp = JSON.parse($response)['main.temp']     
    puts $temp

    @get_validcity.Tcelsius($temp)
    
  end
  
  Dado('que acesso a API e busco por uma cidade com as coordenadas lat e long') do
    
    $response2 = @get_validcity.getporlatlong('-60.025','-3.1019').to_json

  end
  
  Entao('a API retorna com a temperatura da cidade') do
    
    expect(@get_validcity.getporlatlong('-60.025','-3.1019').code).to eql (200)
  end
  
  Dado('que acesso a API e busco por uma cidade com a chave de autenticação invalida') do
    $response3 = @get_validcity.autenticainvalida('3663517','fb610d41cdaeed498989e189a').to_json
    puts $response3

  end
  
  Entao('a API me retorna com status de nao autorizado') do
    expect(@get_validcity.autenticainvalida('3663517','fb610d41cdaeed498989e189a').code).to eql (401)
  end