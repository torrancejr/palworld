class PalsController < ApplicationController

  def index

  end

  def pals_params
    params.require(:pal).permit(:name, :number, :power)
  end
end
