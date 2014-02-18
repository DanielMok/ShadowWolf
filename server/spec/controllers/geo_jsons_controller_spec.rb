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

describe GeoJsonsController do

  # This should return the minimal set of attributes required to create a valid
  # GeoJson. As you add validations to GeoJson, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "lat" => "1.5" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GeoJsonsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all geo_jsons as @geo_jsons" do
      geo_json = GeoJson.create! valid_attributes
      get :index, {}, valid_session
      assigns(:geo_jsons).should eq([geo_json])
    end
  end

  describe "GET show" do
    it "assigns the requested config_project as @config_project" do
      geo_json = GeoJson.create! valid_attributes
      get :show, {:id => geo_json.to_param}, valid_session
      assigns(:config_project).should eq(geo_json)
    end
  end

  describe "GET new" do
    it "assigns a new config_project as @config_project" do
      get :new, {}, valid_session
      assigns(:config_project).should be_a_new(GeoJson)
    end
  end

  describe "GET edit" do
    it "assigns the requested config_project as @config_project" do
      geo_json = GeoJson.create! valid_attributes
      get :edit, {:id => geo_json.to_param}, valid_session
      assigns(:config_project).should eq(geo_json)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GeoJson" do
        expect {
          post :create, {:config_project => valid_attributes}, valid_session
        }.to change(GeoJson, :count).by(1)
      end

      it "assigns a newly created config_project as @config_project" do
        post :create, {:config_project => valid_attributes}, valid_session
        assigns(:config_project).should be_a(GeoJson)
        assigns(:config_project).should be_persisted
      end

      it "redirects to the created config_project" do
        post :create, {:config_project => valid_attributes}, valid_session
        response.should redirect_to(GeoJson.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved config_project as @config_project" do
        # Trigger the behavior that occurs when invalid params are submitted
        GeoJson.any_instance.stub(:save).and_return(false)
        post :create, {:config_project => { "lat" => "invalid value" }}, valid_session
        assigns(:config_project).should be_a_new(GeoJson)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        GeoJson.any_instance.stub(:save).and_return(false)
        post :create, {:config_project => { "lat" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested config_project" do
        geo_json = GeoJson.create! valid_attributes
        # Assuming there are no other geo_jsons in the database, this
        # specifies that the GeoJson created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        GeoJson.any_instance.should_receive(:update).with({ "lat" => "1.5" })
        put :update, {:id => geo_json.to_param, :config_project => { "lat" => "1.5" }}, valid_session
      end

      it "assigns the requested config_project as @config_project" do
        geo_json = GeoJson.create! valid_attributes
        put :update, {:id => geo_json.to_param, :config_project => valid_attributes}, valid_session
        assigns(:config_project).should eq(geo_json)
      end

      it "redirects to the config_project" do
        geo_json = GeoJson.create! valid_attributes
        put :update, {:id => geo_json.to_param, :config_project => valid_attributes}, valid_session
        response.should redirect_to(geo_json)
      end
    end

    describe "with invalid params" do
      it "assigns the config_project as @config_project" do
        geo_json = GeoJson.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GeoJson.any_instance.stub(:save).and_return(false)
        put :update, {:id => geo_json.to_param, :config_project => { "lat" => "invalid value" }}, valid_session
        assigns(:config_project).should eq(geo_json)
      end

      it "re-renders the 'edit' template" do
        geo_json = GeoJson.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GeoJson.any_instance.stub(:save).and_return(false)
        put :update, {:id => geo_json.to_param, :config_project => { "lat" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested config_project" do
      geo_json = GeoJson.create! valid_attributes
      expect {
        delete :destroy, {:id => geo_json.to_param}, valid_session
      }.to change(GeoJson, :count).by(-1)
    end

    it "redirects to the geo_jsons list" do
      geo_json = GeoJson.create! valid_attributes
      delete :destroy, {:id => geo_json.to_param}, valid_session
      response.should redirect_to(geo_jsons_url)
    end
  end

end
