class GossipsController < ApplicationController
  def index
    @gossip = Gossip.all
    puts "hello #index"
  end
  def new
    @gossip = Gossip.new
    puts "Hello #GossipNew"
    respond_to do |format|
      format.html  # new.html.erb
      format.json  { render :json => @gossip }
  end
  def create
    puts "coucou #create"
    @gossip = Gossip.new(gossip_params)
    @gossip.save
    #gossip = Gossip.create(gossip_params)
    puts "potin crée avec succès"
    #redirect_to gossip_path(gossip.id)
  end
  def gossip_params
    params.require(:gossip).permit(:gossip_author, :gossip_content)
  end
  def show
    puts "Hello #show!"
    @id = params[:id]
    @gossip = Gossip.find(params[:id])
 
    respond_to do |format|
      format.html  # show.html.erb
      format.json  { render :json => @gossip }
    end
  end
  def edit
    puts "Hello #edit"
    @gossip = Gossip.find(params[:id])
  end

  def teams
    
  end


end

end