# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize, Metrics/MethodLength
# It's a controller that loads and authorizes a resource, authenticates a user, sets a user, and has
# actions for index, new, edit, create, and update
class UsersController < ApplicationController
  load_and_authorize_resource
  before_action :authenticate_user!
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @search = UserSearch.new(search_params)
    @users = @search.results.order(:id).page(params[:page])
  end

  def new
    @user = User.new
  end

  def edit; end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'user was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    passwd = params[:user] [:password]
    passwd_confirmation = params[:user] [:passwd_confirmation]

    if passwd.blank? && passwd_confirmation.blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  protected

  def search_params
    (params.delete(:user_search) || {})
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def user_params
    params.require(:user).permit(:name, :email, :role, :password, :password_confirmation)
  end
end
# rubocop:enable Metrics/AbcSize, Metrics/MethodLength
