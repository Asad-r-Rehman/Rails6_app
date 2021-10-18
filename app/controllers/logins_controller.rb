class LoginsController < ApplicationController
  # before_action :discover_agent, only: [:index]

  users = [
    { username: "mashrur", password: "password1" },
    { username: "jack", password: "password2" },
    { username: "arya", password: "password3" },
    { username: "jonshow", password: "password4" },
    { username: "heisenberg", password: "password5" }
  ]

  def create_password(password)
    Bcrypt::password.create(password)
  end

  def match_password(password)
    Bcrypt::password.new(password)
  end

  def get_user_all(list_of_users)
    list_of_users.each do |record|
      record.first
    end
  end

  # def index
  #   if @agent.persisted?
  #     debugger
  #     if @agent.password = params[:password].present?
  #       debugger
  #     else
  #       debugger
  #     end
  #   else
  #     params[:password] = BCrypt::Password.create("my password")
  #     params[:password].version
  #     params[:password].cost
  #     debugger
  #     params[:password] == "my password"
  #     params[:password] == "not my password"
  #     user = Login.new(parametters)
  #     if user.save!
  #       flash[:alert] = "Success"
  #     end
  #   end
  # end

  # private
  #
  # def discover_agent
  #   @agent = Login.where(email: params[:email]).first_or_initialize(parametters)
  #
  # end
  #
  # def parametters
  #   params.permit(:email, :password)
  # end
  #
  # # my_password = BCrypt::Password.create("my password")
  # # #=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"
  # #
  # # my_password.version #=> "2a"
  # # my_password.cost #=> 10
  # # my_password == "my password" #=> true
  # # my_password == "not my password" #=> false
  # #
  # # my_password = BCrypt::Password.new("$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa")
  # # my_password == "my password" #=> true
  # # my_password == "not my password" #=> false

end
