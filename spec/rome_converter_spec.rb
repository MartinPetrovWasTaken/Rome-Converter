require_relative '../lib/romeconverter.rb'

describe RomeConverter do 
	describe "Roman to Integer" do 
		context "I" do
			it "returns 1" do 
				expect(RomeConverter.new.to_dec("I")).to eq 1
			end	 
		end
		context "IV" do
			it "returns 4" do 
				expect(RomeConverter.new.to_dec("IV")).to eq 4
			end	 
		end
		context "V" do
			it "returns 5" do 
				expect(RomeConverter.new.to_dec("V")).to eq 5
			end	 
		end
		context "IX" do
			it "returns 9" do 
				expect(RomeConverter.new.to_dec("IX")).to eq 9
			end	 
		end
		context "X" do
			it "returns 10" do 
				expect(RomeConverter.new.to_dec("X")).to eq 10
			end	 
		end
		context "XI" do
			it "returns 11" do 
				expect(RomeConverter.new.to_dec("XI")).to eq 11
			end	 
		end
		context "XL" do
			it "returns 40" do 
				expect(RomeConverter.new.to_dec("XL")).to eq 40
			end	 
		end
		context "L" do
			it "returns 50" do 
				expect(RomeConverter.new.to_dec("L")).to eq 50
			end	 
		end
		context "XC" do
			it "returns 90" do 
				expect(RomeConverter.new.to_dec("XC")).to eq 90
			end	 
		end
		context "C" do
			it "returns 100" do 
				expect(RomeConverter.new.to_dec("C")).to eq 100
			end	 
		end
		context "CD" do
			it "returns 400" do 
				expect(RomeConverter.new.to_dec("CD")).to eq 400
			end	 
		end
		context "D" do
			it "returns 500" do 
				expect(RomeConverter.new.to_dec("D")).to eq 500
			end	 
		end
		context "CM" do
			it "returns 900" do 
				expect(RomeConverter.new.to_dec("CM")).to eq 900
			end	 
		end
		context "M" do
			it "returns 1000" do 
				expect(RomeConverter.new.to_dec("M")).to eq 1000
			end	 
		end
		context "XC" do
			it "returns 90" do 
				expect(RomeConverter.new.to_dec("XC")).to eq 90
			end	 
		end	
		context "MMIX" do
			it "returns 2011" do 
				expect(RomeConverter.new.to_dec("MMIX")).to eq 2011
			end	 
		end
		context "MMMMCMXCIX" do
			it "returns 4999" do 
				expect(RomeConverter.new.to_dec("MMMCMXCIX")).to eq 4999
			end	 
		end
	end
	
	describe "Integer to Roman" do 
		context "1" do
			it "returns I" do 
				expect(RomeConverter.new.to_dec(1)).to eq "I"
			end	 
		end
		context "4" do
			it "returns IV" do 
				expect(RomeConverter.new.to_dec(4)).to eq "IV"
			end	 
		end	
		context "5" do
			it "returns V" do 
				expect(RomeConverter.new.to_dec(5)).to eq "V"
			end	 
		end
		context "9" do
			it "returns IX" do 
				expect(RomeConverter.new.to_dec(9)).to eq "IX"
			end	 
		end
		context "10" do
			it "returns X" do 
				expect(RomeConverter.new.to_dec(10)).to eq "X"
			end	 
		end	
		context "11" do
			it "returns II" do 
				expect(RomeConverter.new.to_dec(11)).to eq "II"
			end	 
		end
		context "40" do
			it "returns XL" do 
				expect(RomeConverter.new.to_dec(40)).to eq "XL"
			end	 
		end
		context "50" do
			it "returns L" do 
				expect(RomeConverter.new.to_dec(50)).to eq "L"
			end	 
		end
		context "90" do
			it "returns XC" do 
				expect(RomeConverter.new.to_dec(90)).to eq "XC"
			end	 
		end
		context "100" do
			it "returns C" do 
				expect(RomeConverter.new.to_dec(100)).to eq "C"
			end	
		end	
		context "400" do
			it "returns CD" do 
				expect(RomeConverter.new.to_dec(400)).to eq "CD"
			end	 
		end
		context "500" do
			it "returns D" do 
				expect(RomeConverter.new.to_dec(500)).to eq "D"
			end	 
		end
		context "900" do
			it "returns CM" do 
				expect(RomeConverter.new.to_dec(900)).to eq "CM"
			end	 
		end
		context "1000" do
			it "returns M" do 
				expect(RomeConverter.new.to_dec(1000)).to eq "M"
			end	 
		end
		context "2011" do
			it "returns MMXI" do 
				expect(RomeConverter.new.to_dec(2011)).to eq "MMXI"
			end	 
		end
	end

	describe "ERRORS" do 
		context "NEGATIVE" do 
			it "returns nil" do 
				expect(RomeConverter.new.to_rome(-69)).to eq nil
			end
		end		
		context "ZERO" do
			it "returns nil" do 
				expect(RomeConverter.new.to_dec(0)).to eq nil
				expect(RomeConverter.new.to_rome(0)).to eq nil
			end	 
		end
		context "UNDEFINED CHARS" do
			it "returns nil" do 
				expect(RomeConverter.new.to_dec("shtbvgz")).to eq nil
				expect(RomeConverter.new.to_rome("sht+sht")).to eq nil
			end	 
		end
		context "FRACTION" do
			it "returns nil" do 
				expect(RomeConverter.new.to_dec(6.9)).to eq nil
			end	 
		end
		context "NOTHING" do
			it "returns nil" do 
				expect(RomeConverter.new.to_dec()).to eq nil
				expect(RomeConverter.new.to_rome()).to eq nil
			end	 
		end
	end
end
