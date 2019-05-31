class QuestionsController < ApplicationController
  def index
    @questions = Question.all

    render("question_templates/index.html.erb")
  end

  def show
    @reflexion_question = ReflexionQuestion.new
    @user_question = UserQuestion.new
    @question_tip = QuestionTip.new
    @question_category = QuestionCategory.new
    @question = Question.find(params.fetch("id_to_display"))

    render("question_templates/show.html.erb")
  end

  def new_form
    @question = Question.new

    render("question_templates/new_form.html.erb")
  end

  def create_row
    @question = Question.new

    @question.question = params.fetch("question")

    if @question.valid?
      @question.save

      redirect_back(:fallback_location => "/questions", :notice => "Question created successfully.")
    else
      render("question_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @question = Question.find(params.fetch("prefill_with_id"))

    render("question_templates/edit_form.html.erb")
  end

  def update_row
    @question = Question.find(params.fetch("id_to_modify"))

    @question.question = params.fetch("question")

    if @question.valid?
      @question.save

      redirect_to("/questions/#{@question.id}", :notice => "Question updated successfully.")
    else
      render("question_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @question = Question.find(params.fetch("id_to_remove"))

    @question.destroy

    redirect_to("/questions", :notice => "Question deleted successfully.")
  end
end
