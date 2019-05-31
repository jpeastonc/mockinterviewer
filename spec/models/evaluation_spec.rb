require 'rails_helper'

RSpec.describe Evaluation, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:user_question) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
