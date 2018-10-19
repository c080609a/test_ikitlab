namespace :parser do
  desc "TODO"
  task run: :environment do
    Parser::MainService.new.call
  end
end
