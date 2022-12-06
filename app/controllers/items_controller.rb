class ItemsController < ApplicationController
    get '/items' do
        Item.all.to_json
    end
end