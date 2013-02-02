class AdminHomeController < ApplicationController
  before_filter :authenticate_user! #, except: [:index, :show]
  before_filter :must_change_password
  def dashboard
  end
  
end
