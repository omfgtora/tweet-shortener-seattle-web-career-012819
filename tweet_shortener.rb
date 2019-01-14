def word_substituter(tweet)
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for, four" => "4",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
  # arr = tweet.split(" ").to_a
  # for each in arr
  #   if words.keys.include?(each)
  #     each = words.fetch(each)
  #   end
  # end
  # arr.to_s
  arr.collect do |
end

def bulk_tweet_shortener(tweets)
end

def selective_tweet_shortener(tweet)
end

def shortened_tweet_truncator(tweet)
end