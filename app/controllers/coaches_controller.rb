class CoachesController < ApplicationController
    before_action :set_coach, :only => :show

  def landing
    @preuser= Preuser.new
  end

  def subscribe_us
    @preuser = Preuser.new(preuser_params)
    @preuser.save

    # redirect_to :action => :landing
    render action: :landing
  end

  def index

  end

  def new
    @coach = Coach.new
  end

  def create

  end

  def show
    @coaches_all = Coach.where( :status => 'public' ).count
    @sports = Sport.all
    @comment = Comment.new
  end

  def edit

  end

  def update

  end

  def destroy

  end
private
  def set_coach
    @coach = Coach.find( params[:id] )
  end
  def preuser_params
    params.require(:preuser).permit(:preuser_email)
  end
end
