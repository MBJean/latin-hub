require 'json'
require 'open-uri'
require 'csv'
require 'net/http'

class DictionaryController < ApplicationController
  def search
    @search_input = params[:input]
    # TODO: ensure that @search_input is properly sanitized
    @dictionary_output = Dictionary.find_by key: @search_input
    render json: JSON.generate({ description: @dictionary_output['description'], id: @dictionary_output['id'] })
  end
end