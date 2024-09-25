namespace :annotate do
  desc "Annotate routes in your application"
  task routes: :environment do
    routes = Rails.application.routes.routes.map do |route|
      "#{route.verb} #{route.path.spec.to_s} => #{route.name}"
    end

    File.open("config/routes_annotations.txt", "w") do |f|
      f.puts(routes)
    end
  end
end
