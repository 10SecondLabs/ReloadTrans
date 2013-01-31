class AdminHomeController < ApplicationController
  before_filter :authenticate_user! #, except: [:index, :show]
  def dashboard
  end
  
end
