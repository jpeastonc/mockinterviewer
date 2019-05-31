class ReflexionQuestionsController < ApplicationController
  def index
    @reflexion_questions = ReflexionQuestion.page(params[:page]).per(10)

    render("reflexion_question_templates/index.html.erb")
  end

  def show
    @reflexion_question = ReflexionQuestion.find(params.fetch("id_to_display"))

    render("reflexion_question_templates/show.html.erb")
  end

  def new_form
    @reflexion_question = ReflexionQuestion.new

    render("reflexion_question_templates/new_form.html.erb")
  end

  def create_row
    @reflexion_question = ReflexionQuestion.new

    @reflexion_question.question_id = params.fetch("question_id")
    @reflexion_question.reflexion_question = params.fetch("reflexion_question")

    if @reflexion_question.valid?
      @reflexion_question.save

      redirect_back(:fallback_location => "/reflexion_questions", :notice => "Reflexion question created successfully.")
    else
      render("reflexion_question_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_question
    @reflexion_question = ReflexionQuestion.new

    @reflexion_question.question_id = params.fetch("question_id")
    @reflexion_question.reflexion_question = params.fetch("reflexion_question")

    if @reflexion_question.valid?
      @reflexion_question.save

      redirect_to("/questions/#{@reflexion_question.question_id}", notice: "ReflexionQuestion created successfully.")
    else
      render("reflexion_question_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @reflexion_question = ReflexionQuestion.find(params.fetch("prefill_with_id"))

    render("reflexion_question_templates/edit_form.html.erb")
  end

  def update_row
    @reflexion_question = ReflexionQuestion.find(params.fetch("id_to_modify"))

    @reflexion_question.question_id = params.fetch("question_id")
    @reflexion_question.reflexion_question = params.fetch("reflexion_question")

    if @reflexion_question.valid?
      @reflexion_question.save

      redirect_to("/reflexion_questions/#{@reflexion_question.id}", :notice => "Reflexion question updated successfully.")
    else
      render("reflexion_question_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_question
    @reflexion_question = ReflexionQuestion.find(params.fetch("id_to_remove"))

    @reflexion_question.destroy

    redirect_to("/questions/#{@reflexion_question.question_id}", notice: "ReflexionQuestion deleted successfully.")
  end

  def destroy_row
    @reflexion_question = ReflexionQuestion.find(params.fetch("id_to_remove"))

    @reflexion_question.destroy

    redirect_to("/reflexion_questions", :notice => "Reflexion question deleted successfully.")
  end
end
