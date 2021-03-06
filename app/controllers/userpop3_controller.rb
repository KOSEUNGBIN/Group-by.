class Userpop3Controller < ApplicationController
  before_action :authenticate_user!, only: [:setpop]

  def setpop
    @user = User.find(current_user.id)
    @pop = @user.userpop3s.new(title: params[:title], email: params[:email], password: params[:password], port: params[:port], pop3: params[:pop3])

    @pop.save

    redirect_to userpop3_usermails_path(1)
  end
end
