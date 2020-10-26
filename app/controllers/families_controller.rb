class FamiliesController < ApplicationController

  def show
    @family = Family.find_by(id: params[:id])
    @users = User.where(family_id: @family.id)
  end

  def new
    @family = Family.new
  end

  def search
    @family = Family.where(family_name: params[:family_name],family_password: params[:family_password])
    if @family
      session[:family_id] = @family.pluck(:id)#family_idだけピックアップして代入する
      session[:family_name] = @family.pluck(:family_name)
      redirect_to("/users/add")
    else
      @error_message = "メールアドレスとパスワードに一致する家族がありません"
      render("families/new")
    end
  end

  def create
    @family = Family.new(
        family_name: params[:family_name],
        family_password: params[:family_password]
      )
    if @family.save
      session[:family_id] = @family.id
      redirect_to("/users/new")
    else
      render("families/new")
    end
  end


end
