class SecretsController < ApplicationController
before_action :checkit

def show
end


private

  def checkit
     redirect_to '/' unless session.include? (:name)
  end
end
