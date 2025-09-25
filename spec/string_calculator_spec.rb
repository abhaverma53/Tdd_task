require 'spec_helper'
require_relative '../lib/string_calculator'


RSpec.describe StringCalculator do
  let(:calc) { StringCalculator.new }

  it "returns 0 for an empty string" do
    expect(calc.add("")).to eq(0)
  end

  it "returns the number for single number input" do
    expect(calc.add("1")).to eq(1)
  end

  it "adds two comma-separated numbers" do
    expect(calc.add("1,5")).to eq(6)
  end

  it "handles newlines between numbers" do
    expect(calc.add("1\n2,3")).to eq(6)
  end

  it "supports custom delimiter declared as //delimiter\\n" do
    expect(calc.add("//;\n1;2")).to eq(3)
  end
end