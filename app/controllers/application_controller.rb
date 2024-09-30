class ApplicationController < ActionController::Base
    Pagy::DEFAULT[:limit] = 3
    include Pagy::Backend
    require 'pagy/extras/bootstrap'
end
