# frozen_string_literal: true

class PagesController < ApplicationController
  skip_before_action :authenticate_user!

  def home; end

  def about; end

  def contact; end

  def help; end

  def terms_of_service; end

  def landing_page; end
end
