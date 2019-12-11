require 'rails_helper'

RSpec.describe "pi_estimators/show", type: :view do
  before(:each) do
    @pi_estimator = assign(:pi_estimator, PiEstimator.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
