class OrganizationController < ApplicationController
    def create
        user = User.find_by(email: user_params[:email])
        user ||= User.create(user_params)
        org = Organization.create(org_params)
        Manager.create(user: user, organization: org)

        render json: {token: user.token.value}, status: 201
    end

    private

    def org_params
        params.permit(:name)
    end

    def user_params
        params.permit(:first_name, :last_name, :email)
    end
end
