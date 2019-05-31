class QuestionCategoriesController < ApplicationController
  def index
    @question_categories = QuestionCategory.all

    render("question_category_templates/index.html.erb")
  end

  def show
    @question_category = QuestionCategory.find(params.fetch("id_to_display"))

    render("question_category_templates/show.html.erb")
  end

  def new_form
    @question_category = QuestionCategory.new

    render("question_category_templates/new_form.html.erb")
  end

  def create_row
    @question_category = QuestionCategory.new

    @question_category.question_id = params.fetch("question_id")
    @question_category.category_id = params.fetch("category_id")

    if @question_category.valid?
      @question_category.save

      redirect_back(:fallback_location => "/question_categories", :notice => "Question category created successfully.")
    else
      render("question_category_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @question_category = QuestionCategory.find(params.fetch("prefill_with_id"))

    render("question_category_templates/edit_form.html.erb")
  end

  def update_row
    @question_category = QuestionCategory.find(params.fetch("id_to_modify"))

    @question_category.question_id = params.fetch("question_id")
    @question_category.category_id = params.fetch("category_id")

    if @question_category.valid?
      @question_category.save

      redirect_to("/question_categories/#{@question_category.id}", :notice => "Question category updated successfully.")
    else
      render("question_category_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_question
    @question_category = QuestionCategory.find(params.fetch("id_to_remove"))

    @question_category.destroy

    redirect_to("/questions/#{@question_category.question_id}", notice: "QuestionCategory deleted successfully.")
  end

  def destroy_row_from_category
    @question_category = QuestionCategory.find(params.fetch("id_to_remove"))

    @question_category.destroy

    redirect_to("/categories/#{@question_category.category_id}", notice: "QuestionCategory deleted successfully.")
  end

  def destroy_row
    @question_category = QuestionCategory.find(params.fetch("id_to_remove"))

    @question_category.destroy

    redirect_to("/question_categories", :notice => "Question category deleted successfully.")
  end
end
