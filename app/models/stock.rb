class Stock < ApplicationRecord
    
    def self.new_lookup(ticker_symbol)
        client = IEX::Api::Client.new(
        publishable_token: 'pk_bfc9283325d240188f11955ce5c0325b',
        secret_token: 'sk_fe42fe0fee12400bbd9d7a3de3725238',
        endpoint: 'https://sandbox.iexapis.com/v1'
      )
      client.price(ticker_symbol)
    end
end
