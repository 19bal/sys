class StudentController < ApplicationController
  before_filter :authenticate_user!
  def index
    #authorize! :index, @user, :message => 'Not authorized as an administrator.'
    #@user = User.all
  end

  def settings_save
    student = Student.update(session[:userinfo][:id], {
      :tc => params[:tc],
      :first_name => params[:first_name],
      :last_name => params[:last_name],
      :gender => params[:gender],
      :birthday => params[:birthday],
      :email => params[:email],
      :phone_number => params[:phone_number],
      :address => params[:address],
    })
    redirect_to '/student/settings' 
  end

  def password_save

  end

  def proselects


  end

  def settings

  end

  def documents

  end

  def probook

  end

  def reports

  end
  #def content
    # email = User.find(current_user_id).email.gsub(/@\w+.[A-z]+.[A-z]{2,4}+.[A,z]{2,4}/,'')
  #end  
end
