# frozen_string_literal: true

Rails.application.routes.draw do
  get '/health', to: 'health_check#index'
end
