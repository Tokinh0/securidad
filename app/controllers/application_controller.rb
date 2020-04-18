# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(
      :sign_up,
      keys: [
        :username,
        person_attributes: [
          :name,
          :gender,
          :birth_date,
          cards_attributes: %i[
            number
            cvc
            expiration_date
            name
            birthdate
            cpf
          ]
        ]
      ]
    )
  end
end
