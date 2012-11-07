require 'spec_helper'


describe MoviesController do
  it "routes '/director/George Lucas' to MoviesController.director('George Lucas')" do
    get("/director/George Lucas").should route_to("movies#director", director: "George Lucas")
  end
end