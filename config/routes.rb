Rails.application.routes.draw do
  # Routes for the Evaluation resource:

  # CREATE
  get("/evaluations/new", { :controller => "evaluations", :action => "new_form" })
  post("/create_evaluation", { :controller => "evaluations", :action => "create_row" })

  # READ
  get("/evaluations", { :controller => "evaluations", :action => "index" })
  get("/evaluations/:id_to_display", { :controller => "evaluations", :action => "show" })

  # UPDATE
  get("/evaluations/:prefill_with_id/edit", { :controller => "evaluations", :action => "edit_form" })
  post("/update_evaluation/:id_to_modify", { :controller => "evaluations", :action => "update_row" })

  # DELETE
  get("/delete_evaluation/:id_to_remove", { :controller => "evaluations", :action => "destroy_row" })

  #------------------------------

  # Routes for the Question category resource:

  # CREATE
  get("/question_categories/new", { :controller => "question_categories", :action => "new_form" })
  post("/create_question_category", { :controller => "question_categories", :action => "create_row" })

  # READ
  get("/question_categories", { :controller => "question_categories", :action => "index" })
  get("/question_categories/:id_to_display", { :controller => "question_categories", :action => "show" })

  # UPDATE
  get("/question_categories/:prefill_with_id/edit", { :controller => "question_categories", :action => "edit_form" })
  post("/update_question_category/:id_to_modify", { :controller => "question_categories", :action => "update_row" })

  # DELETE
  get("/delete_question_category/:id_to_remove", { :controller => "question_categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  get("/categories/new", { :controller => "categories", :action => "new_form" })
  post("/create_category", { :controller => "categories", :action => "create_row" })

  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  get("/categories/:id_to_display", { :controller => "categories", :action => "show" })

  # UPDATE
  get("/categories/:prefill_with_id/edit", { :controller => "categories", :action => "edit_form" })
  post("/update_category/:id_to_modify", { :controller => "categories", :action => "update_row" })

  # DELETE
  get("/delete_category/:id_to_remove", { :controller => "categories", :action => "destroy_row" })

  #------------------------------

  # Routes for the Question resource:

  # CREATE
  get("/questions/new", { :controller => "questions", :action => "new_form" })
  post("/create_question", { :controller => "questions", :action => "create_row" })

  # READ
  get("/questions", { :controller => "questions", :action => "index" })
  get("/questions/:id_to_display", { :controller => "questions", :action => "show" })

  # UPDATE
  get("/questions/:prefill_with_id/edit", { :controller => "questions", :action => "edit_form" })
  post("/update_question/:id_to_modify", { :controller => "questions", :action => "update_row" })

  # DELETE
  get("/delete_question/:id_to_remove", { :controller => "questions", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
