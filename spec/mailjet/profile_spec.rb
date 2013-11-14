require 'spec_helper'

describe Mailjet::Profile do

  it "retrieves my profile" do
    VCR.use_cassette('fetch profile') do
      profile = Mailjet::Profile.first
      profile.must_be_instance_of Mailjet::Profile
    end
  end

  # it "creates new contact lists" do
  #   VCR.use_cassette('create lists', match_requests_on: [:method, :uri, :body]) do
  #     list = Mailjet::ContactList.create(name: "Test List")
  #     list.must_be :persisted?
  #   end
  # end

  # it "it retrieves lists by id" do
  #   VCR.use_cassette('fetch list') do
  #     list = Mailjet::ContactList.find("409808")
  #     list.name.must_equal "Test List"
  #   end
  # end

  # it "updates list fields" do
  #   VCR.use_cassette('update list') do
  #     list = Mailjet::ContactList.find("409808")
  #     list.update_attributes(name: "Test List Updated")
  #     list = Mailjet::ContactList.find("409808")
  #     list.name.must_equal "Test List Updated"
  #   end
  # end

  # it "deletes list fields" do
  #   VCR.use_cassette('destroy list') do
  #     list = Mailjet::ContactList.find("409808")
  #     list.destroy
  #     list = Mailjet::ContactList.find("409808")
  #     list.is_deleted?.must_equal true
  #   end
  # end
end
