class ScrapingsController < ApplicationController
  def index; end

  def run
    Parser::MainService.new.call

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
end
