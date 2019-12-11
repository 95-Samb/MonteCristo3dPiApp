require 'rails_helper'

RSpec.describe "pi_estimators/edit", type: :view do
  before(:each) do
    @pi_estimator = assign(:pi_estimator, PiEstimator.create!())
  end

  it "renders the edit pi_estimator form" do
    render

    assert_select "form[action=?][method=?]", pi_estimator_path(@pi_estimator), "post" do
    end
  end
end
