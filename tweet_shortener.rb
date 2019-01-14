def word_substituter(tweet)
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
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
  arr = tweet.split(" ").to_a
  arr.collect! do |each|
    if words.keys.include?(each)
      each = words.fetch(each)
    else
      each
    end
  end
  arr.flatten
end

def bulk_tweet_shortener(tweets)
end

def selective_tweet_shortener(tweet)
end

def shortened_tweet_truncator(tweet)
end