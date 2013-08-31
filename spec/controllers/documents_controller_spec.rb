require 'spec_helper'

describe DocumentsController do
	describe 'index' do
		
		context 'for a gest user' do
			before do
				get :index
			end

			it { should respond_with (:redirect)}
			it { should redirect_to (new_user_session_path)}
		end

		context 'for an authenticated user' do
			before do
				sign_in create(:user)
        get :index
			end

			it { should respond_with(:success) }
      it { should render_template(:index) }
		end
	
	end
end
