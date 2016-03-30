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
        it 'returns false' do
          expect(Luhn.valid?(3)).to eq false
        end
      end
    end

    context 'When number is two digits long' do
      context 'When most significant digit is less than 5' do
        context 'When the most significant * 2 + the least sig == 10' do
          it 'returns true' do
            expect(Luhn.valid?(42)).to eq true
          end
        end
      end
    end
  end
end