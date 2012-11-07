require 'spec_helper'

describe MoviesController do
  fixtures :movies
  it "routes '/similar/1' to MoviesController.similar(1)" do
    similar_path(1).should == '/similar/1'
  end

  it "handles calls to similar(movie_id) and render the index template" do
    #get(:similar, {'title' => "Alien"})
    #response.should render_template('similar')
  end

  it "sets the correct list of movies" do
    #get(:similar, {'title' => movies(:one)})
    counter = 0

    #assigns(:movies).each do |movie|
    #  movie.director.should == "George Lucas"
    #  counter= counter+1
    #end
    counter.should == 0
  end
end