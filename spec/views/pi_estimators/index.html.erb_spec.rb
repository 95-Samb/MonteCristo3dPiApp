require 'rails_helper'

RSpec.describe "pi_estimators/index", type: :view do
  before(:each) do
    assign(:pi_estimators, [
      PiEstimator.create!(),
      PiEstimator.create!()
    ])
  end

  it "renders a list of pi_estimators" do
    render
  end
end
