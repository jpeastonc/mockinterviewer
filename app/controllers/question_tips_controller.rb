class QuestionTipsController < ApplicationController
  def index
    @question_tips = QuestionTip.all

    render("question_tip_templates/index.html.erb")
  end

  def show
    @question_tip = QuestionTip.find(params.fetch("id_to_display"))

    render("question_tip_templates/show.html.erb")
  end

  def new_form
    @question_tip = QuestionTip.new

    render("question_tip_templates/new_form.html.erb")
  end

  def create_row
    @question_tip = QuestionTip.new

    @question_tip.question_id = params.fetch("question_id")
    @question_tip.content = params.fetch("content")

    if @question_tip.valid?
      @question_tip.save

      redirect_back(:fallback_location => "/question_tips", :notice => "Question tip created successfully.")
    else
      render("question_tip_templates/new_form_with_errors.html.erb")
    end
  end

  def create_row_from_question
    @question_tip = QuestionTip.new

    @question_tip.question_id = params.fetch("question_id")
    @question_tip.content = params.fetch("content")

    if @question_tip.valid?
      @question_tip.save

      redirect_to("/questions/#{@question_tip.question_id}", notice: "QuestionTip created successfully.")
    else
      render("question_tip_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @question_tip = QuestionTip.find(params.fetch("prefill_with_id"))

    render("question_tip_templates/edit_form.html.erb")
  end

  def update_row
    @question_tip = QuestionTip.find(params.fetch("id_to_modify"))

    @question_tip.question_id = params.fetch("question_id")
    @question_tip.content = params.fetch("content")

    if @question_tip.valid?
      @question_tip.save

      redirect_to("/question_tips/#{@question_tip.id}", :notice => "Question tip updated successfully.")
    else
      render("question_tip_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_question
    @question_tip = QuestionTip.find(params.fetch("id_to_remove"))

    @question_tip.destroy

    redirect_to("/questions/#{@question_tip.question_id}", notice: "QuestionTip deleted successfully.")
  end

  def destroy_row
    @question_tip = QuestionTip.find(params.fetch("id_to_remove"))

    @question_tip.destroy

    redirect_to("/question_tips", :notice => "Question tip deleted successfully.")
  end
end
