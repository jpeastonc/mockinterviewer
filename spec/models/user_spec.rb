require 'rails_helper'

RSpec.describe User, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:user_type) }

    it { should have_many(:user_questions) }

    end

    describe "InDirect Associations" do

    it { should have_many(:evaluations) }

    end

    describe "Validations" do
      
    end
end
