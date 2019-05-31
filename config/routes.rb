Rails.application.routes.draw do
  # Routes for the User type resource:

  # CREATE
  get("/user_types/new", { :controller => "user_types", :action => "new_form" })
  post("/create_user_type", { :controller => "user_types", :action => "create_row" })

  # READ
  get("/user_types", { :controller => "user_types", :action => "index" })
  get("/user_types/:id_to_display", { :controller => "user_types", :action => "show" })

  # UPDATE
  get("/user_types/:prefill_with_id/edit", { :controller => "user_types", :action => "edit_form" })
  post("/update_user_type/:id_to_modify", { :controller => "user_types", :action => "update_row" })

  # DELETE
  get("/delete_user_type/:id_to_remove", { :controller => "user_types", :action => "destroy_row" })

  #------------------------------

  # Routes for the Reflexion question resource:

  # CREATE
  get("/reflexion_questions/new", { :controller => "reflexion_questions", :action => "new_form" })
  post("/create_reflexion_question", { :controller => "reflexion_questions", :action => "create_row" })

  # READ
  get("/reflexion_questions", { :controller => "reflexion_questions", :action => "index" })
  get("/reflexion_questions/:id_to_display", { :controller => "reflexion_questions", :action => "show" })

  # UPDATE
  get("/reflexion_questions/:prefill_with_id/edit", { :controller => "reflexion_questions", :action => "edit_form" })
  post("/update_reflexion_question/:id_to_modify", { :controller => "reflexion_questions", :action => "update_row" })

  # DELETE
  get("/delete_reflexion_question/:id_to_remove", { :controller => "reflexion_questions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Question tip resource:

  # CREATE
  get("/question_tips/new", { :controller => "question_tips", :action => "new_form" })
  post("/create_question_tip", { :controller => "question_tips", :action => "create_row" })

  # READ
  get("/question_tips", { :controller => "question_tips", :action => "index" })
  get("/question_tips/:id_to_display", { :controller => "question_tips", :action => "show" })

  # UPDATE
  get("/question_tips/:prefill_with_id/edit", { :controller => "question_tips", :action => "edit_form" })
  post("/update_question_tip/:id_to_modify", { :controller => "question_tips", :action => "update_row" })

  # DELETE
  get("/delete_question_tip/:id_to_remove", { :controller => "question_tips", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

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
