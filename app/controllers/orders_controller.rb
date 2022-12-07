class OrdersController < ApplicationController
    # post '/orders' do
    #     Order.create()
    # end

    get '/orders' do
        Order.all.to_json
    end
end