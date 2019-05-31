class UserQuestionsController < ApplicationController
  def index
    @user_questions = UserQuestion.page(params[:page]).per(10)

    render("user_question_templates/index.html.erb")
  end

  def show
    @user_question = UserQuestion.find(params.fetch("id_to_display"))

    render("user_question_templates/show.html.erb")
  end

  def new_form
    @user_question = UserQuestion.new

    render("user_question_templates/new_form.html.erb")
  end

  def create_row
    @user_question = UserQuestion.new

    @user_question.user_id = params.fetch("user_id")
    @user_question.question_id = params.fetch("question_id")

    if @user_question.valid?
      @user_question.save

      redirect_back(:fallback_location => "/user_questions", :notice => "User question created successfully.")
    else
      render("user_question_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_question
    @user_question = UserQuestion.new

    @user_question.user_id = params.fetch("user_id")
    @user_question.question_id = params.fetch("question_id")

    if @user_question.valid?
      @user_question.save

      redirect_to("/questions/#{@user_question.question_id}", notice: "UserQuestion created successfully.")
    else
      render("user_question_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @user_question = UserQuestion.find(params.fetch("prefill_with_id"))

    render("user_question_templates/edit_form.html.erb")
  end

  def update_row
    @user_question = UserQuestion.find(params.fetch("id_to_modify"))

    @user_question.user_id = params.fetch("user_id")
    @user_question.question_id = params.fetch("question_id")

    if @user_question.valid?
      @user_question.save

      redirect_to("/user_questions/#{@user_question.id}", :notice => "User question updated successfully.")
    else
      render("user_question_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_question
    @user_question = UserQuestion.find(params.fetch("id_to_remove"))

    @user_question.destroy

    redirect_to("/questions/#{@user_question.question_id}", notice: "UserQuestion deleted successfully.")
  end

  def destroy_row_from_user
    @user_question = UserQuestion.find(params.fetch("id_to_remove"))

    @user_question.destroy

    redirect_to("/users/#{@user_question.user_id}", notice: "UserQuestion deleted successfully.")
  end

  def destroy_row
    @user_question = UserQuestion.find(params.fetch("id_to_remove"))

    @user_question.destroy

    redirect_to("/user_questions", :notice => "User question deleted successfully.")
  end
end
