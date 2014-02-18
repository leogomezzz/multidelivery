require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe CategoriasController do

  # This should return the minimal set of attributes required to create a valid
  # Categorias. As you add validations to Categorias, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nome" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # CategoriasController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all categorias as @categorias" do
      categorias = Categorias.create! valid_attributes
      get :index, {}, valid_session
      assigns(:categorias).should eq([categorias])
    end
  end

  describe "GET show" do
    it "assigns the requested categorias as @categorias" do
      categorias = Categorias.create! valid_attributes
      get :show, {:id => categorias.to_param}, valid_session
      assigns(:categorias).should eq(categorias)
    end
  end

  describe "GET new" do
    it "assigns a new categorias as @categorias" do
      get :new, {}, valid_session
      assigns(:categorias).should be_a_new(Categorias)
    end
  end

  describe "GET edit" do
    it "assigns the requested categorias as @categorias" do
      categorias = Categorias.create! valid_attributes
      get :edit, {:id => categorias.to_param}, valid_session
      assigns(:categorias).should eq(categorias)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Categorias" do
        expect {
          post :create, {:categorias => valid_attributes}, valid_session
        }.to change(Categorias, :count).by(1)
      end

      it "assigns a newly created categorias as @categorias" do
        post :create, {:categorias => valid_attributes}, valid_session
        assigns(:categorias).should be_a(Categorias)
        assigns(:categorias).should be_persisted
      end

      it "redirects to the created categorias" do
        post :create, {:categorias => valid_attributes}, valid_session
        response.should redirect_to(Categorias.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved categorias as @categorias" do
        # Trigger the behavior that occurs when invalid params are submitted
        Categorias.any_instance.stub(:save).and_return(false)
        post :create, {:categorias => { "nome" => "invalid value" }}, valid_session
        assigns(:categorias).should be_a_new(Categorias)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Categorias.any_instance.stub(:save).and_return(false)
        post :create, {:categorias => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested categorias" do
        categorias = Categorias.create! valid_attributes
        # Assuming there are no other categorias in the database, this
        # specifies that the Categorias created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Categorias.any_instance.should_receive(:update).with({ "nome" => "MyString" })
        put :update, {:id => categorias.to_param, :categorias => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested categorias as @categorias" do
        categorias = Categorias.create! valid_attributes
        put :update, {:id => categorias.to_param, :categorias => valid_attributes}, valid_session
        assigns(:categorias).should eq(categorias)
      end

      it "redirects to the categorias" do
        categorias = Categorias.create! valid_attributes
        put :update, {:id => categorias.to_param, :categorias => valid_attributes}, valid_session
        response.should redirect_to(categorias)
      end
    end

    describe "with invalid params" do
      it "assigns the categorias as @categorias" do
        categorias = Categorias.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Categorias.any_instance.stub(:save).and_return(false)
        put :update, {:id => categorias.to_param, :categorias => { "nome" => "invalid value" }}, valid_session
        assigns(:categorias).should eq(categorias)
      end

      it "re-renders the 'edit' template" do
        categorias = Categorias.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Categorias.any_instance.stub(:save).and_return(false)
        put :update, {:id => categorias.to_param, :categorias => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested categorias" do
      categorias = Categorias.create! valid_attributes
      expect {
        delete :destroy, {:id => categorias.to_param}, valid_session
      }.to change(Categorias, :count).by(-1)
    end

    it "redirects to the categorias list" do
      categorias = Categorias.create! valid_attributes
      delete :destroy, {:id => categorias.to_param}, valid_session
      response.should redirect_to(categorias_index_url)
    end
  end

end
