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
  arr = tweet.split(" ").to_a
  new_arr = arr.collect do |each|
    if words.keys.include?(each.downcase)
      each = words.fetch(each.downcase)
    else
      each
    end
  end
  new_arr.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.collect! do |each|
    each = word_substituter(each)
    puts each
  end
end

def selective_tweet_shortener(tweet)
  tweet.length > 140 ? word_substituter(tweet) : tweet
end

def shortened_tweet_truncator(tweet)
  word_substituter(tweet).length > 140 ? word_substituter(tweet)[0..136] + "..." : tweet
end