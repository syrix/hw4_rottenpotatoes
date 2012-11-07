require 'spec_helper'

describe MoviesController do
  fixtures :movies
  it "routes '/similar/1' to MoviesController.similar(1)" do
    similar_path(1).should == '/similar/1'
  end

  it "handles calls to similar(movie_id) and render the index template" do
    get(:similar, {'id' => "1"})
    response.should render_template('similar')
  end
end