class ConstellationsController < ApplicationController

  get "/" do
    erb :"constellations/index"
  end

end
