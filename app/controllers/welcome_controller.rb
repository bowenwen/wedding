# frozen_string_literal: true

class WelcomeController < ApplicationController
  def index
    @google_maps_venue_url = 'https://goo.gl/maps/dV5uUEsqHPq91xwV7'
    @google_maps_parking_url = 'https://goo.gl/maps/bUZRKhAfxwz6S4ZG9'
  end
end
