class CartsController < ApplicationController
before_action :authenticate_user!
layout 'not_modal'
def show
# binding pry

end

def create

end

   private
    def cart_params
    params.require(:cart).permit(:user_id)
  end
end
