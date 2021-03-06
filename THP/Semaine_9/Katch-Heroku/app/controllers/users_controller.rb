class UsersController < ApplicationController
	
    before_action :connected_user, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user, only: [:show, :edit, :update, :destroy]

	def index
	# Méthode qui récupère tous les potins et les envoie à la view index (index.html.erb) pour affichage
	end

	def show
	# Méthode qui récupère le potin concerné et l'envoie à la view show (show.html.erb) pour affichage
		@user = User.find(params[:id])
	end

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

  private

  def connected_user
    if current_user.nil?
      flash[:loggin_needed] = "Please log in."
      redirect_to root_path
    end
  end

  def authenticate_user
    if current_user.id != User.find(params[:id]).id
      flash[:bad_user] = "Please log in."
      redirect_to root_path
    end
  end



end
