class SuperuserController < ApplicationController
    def post
    end

    private
    def superuser_params
        params.permit(
            {
                users:
                    first_name,
                    last_name,
                    email
            }
        )
    end
end
