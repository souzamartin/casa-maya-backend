class ItemsController < ApplicationController
    post '/items' do
        Item.create(params).to_json
    end
    
    get '/items' do
        Item.all.to_json
    end
end