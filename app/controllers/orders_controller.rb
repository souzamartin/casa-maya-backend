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

    patch '/orders/:id' do
        order = Order.find(params[:id])
        order.update(quantity: params[:quantity])
        order.to_json
    end

    delete '/orders/:id' do
        Order.find(params[:id]).destroy
    end
end