require "httparty"

describe "GET city Valid" do
    it "get city valid" do
        
        result = HTTParty.get("http://api.openweathermap.org/data/2.5/weather?id=3663517&appid=fb610d41cdaeed498989e189a77403f1")
        
        expect(result.code).to eql 200
        
        puts result.parsed_response["main"]

    end
end