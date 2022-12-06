class CustomersController < ApplicationController
    get '/customers' do
        Customer.all.to_json(only: [:id, :name])
    end

    get '/customers/:id' do
        customer = Customer.find(params[:id])
        customer.to_json
    end
end