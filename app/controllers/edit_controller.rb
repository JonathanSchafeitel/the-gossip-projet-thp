class EditController < ApplicationController
  def edit
    puts "Hello #edit"
    @gossip = Gossip.find(params[:id])
  end
end
