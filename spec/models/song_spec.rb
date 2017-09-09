require 'rails_helper'

RSpec.describe Song, type: :model do

  describe "validations" do

    it "is invalid without a name" do
      song = Song.new(name: "")
      song.valid?
      expect(song.errors).to have_key(:name)
    end

    it "is invalid with a name exceeding 50 characters" do
      song = Song.new(name: "L" * 51)
      song.valid?
      expect(song.errors).to have_key(:name)
    end

  end
end
