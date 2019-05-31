class UserTypesController < ApplicationController
  def index
    @user_types = UserType.all

    render("user_type_templates/index.html.erb")
  end

  def show
    @user_type = UserType.find(params.fetch("id_to_display"))

    render("user_type_templates/show.html.erb")
  end

  def new_form
    @user_type = UserType.new

    render("user_type_templates/new_form.html.erb")
  end

  def create_row
    @user_type = UserType.new

    @user_type.name = params.fetch("name")

    if @user_type.valid?
      @user_type.save

      redirect_back(:fallback_location => "/user_types", :notice => "User type created successfully.")
    else
      render("user_type_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @user_type = UserType.find(params.fetch("prefill_with_id"))

    render("user_type_templates/edit_form.html.erb")
  end

  def update_row
    @user_type = UserType.find(params.fetch("id_to_modify"))

    @user_type.name = params.fetch("name")

    if @user_type.valid?
      @user_type.save

      redirect_to("/user_types/#{@user_type.id}", :notice => "User type updated successfully.")
    else
      render("user_type_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @user_type = UserType.find(params.fetch("id_to_remove"))

    @user_type.destroy

    redirect_to("/user_types", :notice => "User type deleted successfully.")
  end
end
