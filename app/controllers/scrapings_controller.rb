class ScrapingsController < ApplicationController
  def run
    Parser::MainService.new.call

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
end
