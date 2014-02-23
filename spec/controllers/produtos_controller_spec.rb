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

describe ProdutosController do

  # This should return the minimal set of attributes required to create a valid
  # Produto. As you add validations to Produto, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "nome" => "MyString" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ProdutosController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all produtos as @produtos" do
      produto = Produto.create! valid_attributes
      get :index, {}, valid_session
      assigns(:produtos).should eq([produto])
    end
  end

  describe "GET show" do
    it "assigns the requested produto as @produto" do
      produto = Produto.create! valid_attributes
      get :show, {:id => produto.to_param}, valid_session
      assigns(:produto).should eq(produto)
    end
  end

  describe "GET new" do
    it "assigns a new produto as @produto" do
      get :new, {}, valid_session
      assigns(:produto).should be_a_new(Produto)
    end
  end

  describe "GET edit" do
    it "assigns the requested produto as @produto" do
      produto = Produto.create! valid_attributes
      get :edit, {:id => produto.to_param}, valid_session
      assigns(:produto).should eq(produto)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Produto" do
        expect {
          post :create, {:produto => valid_attributes}, valid_session
        }.to change(Produto, :count).by(1)
      end

      it "assigns a newly created produto as @produto" do
        post :create, {:produto => valid_attributes}, valid_session
        assigns(:produto).should be_a(Produto)
        assigns(:produto).should be_persisted
      end

      it "redirects to the created produto" do
        post :create, {:produto => valid_attributes}, valid_session
        response.should redirect_to(Produto.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved produto as @produto" do
        # Trigger the behavior that occurs when invalid params are submitted
        Produto.any_instance.stub(:save).and_return(false)
        post :create, {:produto => { "nome" => "invalid value" }}, valid_session
        assigns(:produto).should be_a_new(Produto)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Produto.any_instance.stub(:save).and_return(false)
        post :create, {:produto => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested produto" do
        produto = Produto.create! valid_attributes
        # Assuming there are no other produtos in the database, this
        # specifies that the Produto created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Produto.any_instance.should_receive(:update).with({ "nome" => "MyString" })
        put :update, {:id => produto.to_param, :produto => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested produto as @produto" do
        produto = Produto.create! valid_attributes
        put :update, {:id => produto.to_param, :produto => valid_attributes}, valid_session
        assigns(:produto).should eq(produto)
      end

      it "redirects to the produto" do
        produto = Produto.create! valid_attributes
        put :update, {:id => produto.to_param, :produto => valid_attributes}, valid_session
        response.should redirect_to(produto)
      end
    end

    describe "with invalid params" do
      it "assigns the produto as @produto" do
        produto = Produto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Produto.any_instance.stub(:save).and_return(false)
        put :update, {:id => produto.to_param, :produto => { "nome" => "invalid value" }}, valid_session
        assigns(:produto).should eq(produto)
      end

      it "re-renders the 'edit' template" do
        produto = Produto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Produto.any_instance.stub(:save).and_return(false)
        put :update, {:id => produto.to_param, :produto => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested produto" do
      produto = Produto.create! valid_attributes
      expect {
        delete :destroy, {:id => produto.to_param}, valid_session
      }.to change(Produto, :count).by(-1)
    end

    it "redirects to the produtos list" do
      produto = Produto.create! valid_attributes
      delete :destroy, {:id => produto.to_param}, valid_session
      response.should redirect_to(produtos_url)
    end
  end

end
