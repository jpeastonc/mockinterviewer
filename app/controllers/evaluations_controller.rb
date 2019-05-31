class EvaluationsController < ApplicationController
  def index
    @q = Evaluation.ransack(params[:q])
    @evaluations = @q.result(:distinct => true).includes(:user_question, :user).page(params[:page]).per(10)

    render("evaluation_templates/index.html.erb")
  end

  def show
    @evaluation = Evaluation.find(params.fetch("id_to_display"))

    render("evaluation_templates/show.html.erb")
  end

  def new_form
    @evaluation = Evaluation.new

    render("evaluation_templates/new_form.html.erb")
  end

  def create_row
    @evaluation = Evaluation.new

    @evaluation.rating = params.fetch("rating")
    @evaluation.comment = params.fetch("comment")
    @evaluation.user_question_id = params.fetch("user_question_id")

    if @evaluation.valid?
      @evaluation.save

      redirect_back(:fallback_location => "/evaluations", :notice => "Evaluation created successfully.")
    else
      render("evaluation_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @evaluation = Evaluation.find(params.fetch("prefill_with_id"))

    render("evaluation_templates/edit_form.html.erb")
  end

  def update_row
    @evaluation = Evaluation.find(params.fetch("id_to_modify"))

    @evaluation.rating = params.fetch("rating")
    @evaluation.comment = params.fetch("comment")
    @evaluation.user_question_id = params.fetch("user_question_id")

    if @evaluation.valid?
      @evaluation.save

      redirect_to("/evaluations/#{@evaluation.id}", :notice => "Evaluation updated successfully.")
    else
      render("evaluation_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @evaluation = Evaluation.find(params.fetch("id_to_remove"))

    @evaluation.destroy

    redirect_to("/evaluations", :notice => "Evaluation deleted successfully.")
  end
end
