class ApplicationController < ActionController::Base
    # devise by default sign in redirects to home page 
    def after_sign_in_path_for(profile)
        if(current_user.profile)
            new_listing_path
        else
            new_profile_path || root_path
        end
    end
end
