module Sass::Rails
  Resolver.class_eval do

    def process(path)
      environment = context.environment
      environment.find_asset(path, environment.process).to_s
    end
  end
end
