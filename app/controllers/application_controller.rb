class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:limit] = 5
    include Pagy::Backend
end
