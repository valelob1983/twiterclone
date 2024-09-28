class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:limit] = 2
    include Pagy::Backend
end
