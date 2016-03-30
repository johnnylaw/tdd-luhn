require 'spec_helper'
require File.expand_path('../luhn', File.dirname(__FILE__))

describe Luhn do
  describe '::valid?' do
    context 'When number is one digit long' do
      context 'When digit is zero' do
        it 'returns true' do
          expect(Luhn.valid?(0)).to eq true
        end
      end

      context 'When digit is not zero' do
      end
    end
  end
end