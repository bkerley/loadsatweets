downcase
========

1. "Ruby" and "ruby" are the same word, normalize them.

```ruby
tweet_texts = parsed_tweets.map{|tweet| tweet['text'].downcase }

# or

words.each do |w|
  word_count[w.downcase] += 1
end

```

2. "ruby" and "ruby." are the same word, normalize them.

```ruby
words.each do |w|
  normalized_word = w.downcase.gsub(/\W,'')
  word_count[normalized_word] += 1
end
```

3. What should we count "conmigo.♥" as?

```ruby
"conmigo"
```

4. What words are used the most?

5. Any guessees on what I searched for?
