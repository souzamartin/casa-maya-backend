class OrdersController < ApplicationController
    post '/orders' do
        Order.create(
            item_id: params[:item_id],
            complete: params[:complete],
            quantity: params[:quantity]
        ).to_json(include: :item)
    end

    get '/orders/pending' do
        Order.all.where(complete: false).to_json(include: :item)
    end

    get '/orders/complete' do
        Order.all.where(complete: true).to_json(include: :item)
    end

    patch '/orders/:id' do
        order = Order.find(params[:id])
        order.update(quantity: params[:quantity])
        order.to_json(include: :item)
    end

    patch '/orders/:id/checkout' do
        order = Order.find(params[:id])
        order.update(complete: params[:complete])
        order.to_json(include: :item)
    end

    delete '/orders/:id' do
        Order.find(params[:id]).destroy
    end
end