require_relative '../lib/app'


describe "the login_twitter_and_tweet method" do

    it "should return client, and client is not nil" do

       expect(login_twitter_and_tweet).not_to be_nil

    end

 end