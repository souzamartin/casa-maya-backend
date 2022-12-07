class OrdersController < ApplicationController
    post '/orders' do
        Order.create(
            item_id: params[:item_id],
            complete: params[:complete],
            quantity: params[:quantity]
        ).to_json
    end

    get '/orders' do
        Order.all.to_json
    end
end