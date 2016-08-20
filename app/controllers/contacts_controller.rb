class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity}
      end
    end
  end
def show
  @contact = Contact.find(params[:id])
end
  private

  def contact_params
    params.require(:contact).permit(:full_name, :email, :phone_number, :address)
  end
end