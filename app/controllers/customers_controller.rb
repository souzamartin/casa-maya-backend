class CustomersController < ApplicationController
    get '/customers' do
        Customer.all.to_json(only: [:id, :name])
    end

    get '/customers/:id' do
        customer = Customer.find(params[:id]) 
        customer_orders = Customer.find(params[:id]).group_orders 
        {
            id: customer.id,
            name: customer.name,
            username: customer.username,
            address: customer.address,
            phone: customer.phone,
            orders: customer_orders
        }.to_json   
    end
end