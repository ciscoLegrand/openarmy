class PagesController < ApplicationController
  include PagesHelper
  def index
    @users = []
    10.times { @users << random_user }
    @users

    @cards = Card.all
    @info = Info.first
  end
end
