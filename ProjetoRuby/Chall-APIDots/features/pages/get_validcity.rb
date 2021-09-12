require 'HTTParty'
require 'httparty/request'
require 'httparty/response/headers'

class Getvalidcity

    include HTTParty
    base_uri 'http://api.openweathermap.org/data/2.5/weather'

    def getporid(id)
       
        url1 = 'http://api.openweathermap.org/data/2.5/weather?id=' + id.to_s + '&appid=fb610d41cdaeed498989e189a77403f1'
        self.class.get(url1)
    end    

    def Tcelsius(far)
        celsius = ((far - 32)) * (5 / 9);
        puts celsius

    end

    def getporlatlong(lat,long)
       
        url2 = 'http://api.openweathermap.org/data/2.5/weather?lat=' + lat + '&long='+ long +'&appid=fb610d41cdaeed498989e189a77403f1'
        self.class.get(url2)
    end 

    def autenticainvalida(id,appid)
        url3 = 'http://api.openweathermap.org/data/2.5/weather?id=' + id + '&appid='+ appid
        self.class.get(url3)

    end

end


