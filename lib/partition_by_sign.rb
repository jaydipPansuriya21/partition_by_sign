def partition_by_sign(hash)
  negatives, positives = [], []

  hash.each do |key, value|
    if value.negative?
      negatives << key
    else
      positives << key
    end
  end

  [negatives, positives]
end
