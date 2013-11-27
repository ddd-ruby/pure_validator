require 'spec_helper'
require 'attr_validator'

describe AttrValidator::ValidationRules::NumericalityValidationRule do

  describe "#new" do
    it "should raise error if validation attributes are invalid" do
      lambda do
        AttrValidator::ValidationRules::NumericalityValidationRule.new(less_than: 5, wrong_attr: 3)
      end.should raise_error("validation rule has invalid options: {:wrong_attr=>3}")
    end
  end

end