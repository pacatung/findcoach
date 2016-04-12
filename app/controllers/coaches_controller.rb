class CoachesController < ApplicationController

  def landing
    @preuser= Preuser.new
  end

  def subscribe_us
    @preuser = Preuser.new(preuser_params)
    @preuser.save

    redirect_to :action => :landing
  end

private

def preuser_params
  params.require(:preuser).permit(:preuser_email)
end
end
