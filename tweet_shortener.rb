# Write your code here.
def dictionary
word_subs = {
  "hello" => 'hi',
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "four" => "4",
  "For" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => '@',
  "and" => '&'
}
end

def word_substituter(tweet)

tweet.split(' ').each{|word|

       dictionary.each {|key, value|
           if key == word
             word.replace(value)
           end
       }

   }.join(' ')
 end

def bulk_tweet_shortener(tweets)

tweets.each {|tweet|
  puts word_substituter(tweet)
}
end

def selective_tweet_shortener(tweet)
   if tweet.size >=140
      word_substituter(tweet)
    else tweet

end
end

def shortened_tweet_truncator(tweet)
 if   selective_tweet_shortener(tweet).size > 140
    tweet[0..136] + "..."
  else tweet
end
end
