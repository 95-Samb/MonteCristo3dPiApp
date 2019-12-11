require 'rails_helper'

RSpec.describe "pi_estimators/new", type: :view do
  before(:each) do
    assign(:pi_estimator, PiEstimator.new())
  end

  it "renders new pi_estimator form" do
    render

    assert_select "form[action=?][method=?]", pi_estimators_path, "post" do
    end
  end
end
