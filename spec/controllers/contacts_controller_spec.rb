require 'rails_helper'

RSpec.describe ContactsController, type: :controller do

  describe "POST #create" do
    context "with valid attributes" do
      it "create new contact" do
      	post :create, contact: FactoryGirl.attributes_for(:contact)
        expect(Contact.count).to eq(1)
     end

    #   it "does not create a new contact" do
    # post :create, contact: FactoryGirl.attributes_for(:invalid_contact)
    #   expect(Contact.count).to eq(0)
    # end 
    end
  end
end