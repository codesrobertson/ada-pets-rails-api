require "test_helper"

describe PetsController do
  it "must get index" do
    get pets_path

    must_respond_with :success
    expect(response.header['Content-Type']).must_include 'json'
  end

  it "will return all the proper fields for a list of pets" do
    pet_fields = ["id", "name", "age", "owner", "species"].sort

    get pets_path

    body = JSON.parse(response.body)

    expect(body).must_be_instance_of Array

    body.each do |pet|
      expect(pet).must_be_instance_of Hash
      expect(pet.keys.sort).must_equal pet_fields
    end
  end

end
