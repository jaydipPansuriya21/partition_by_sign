# PartitionBySign

`PartitionBySign` is a Ruby gem that provides a simple method to partition the keys of a hash based on the sign of their associated values. It separates keys with negative values from those with non-negative (zero or positive) values.

[![Gem Version](https://badge.fury.io/rb/partition_by_sign.svg)](https://badge.fury.io/rb/partition_by_sign)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'partition_by_sign'
```

And then execute:
```ruby
$ bundle install
```

Or install it yourself as:
```ruby
$ gem install partition_by_sign
```

## Usage
To use the partition_by_sign method, pass in a hash where each value is either positive or negative. The method will return an array containing two arrays: one with the keys for negative values, and one with the keys for non-negative values.

```ruby
require 'partition_by_sign'

# Example hash
input_hash = { a: -1, b: 2, c: -3, d: 4 }

# Partition keys by sign
negatives, positives = partition_by_sign(input_hash)

# Output:
# negatives => [:a, :c]
# positives => [:b, :d]
```

## Testing
This gem uses minitest for testing. To run the tests locally, install the necessary dependencies and run:

```ruby
ruby test/test_partition_by_sign.rb
```

## GitHub Actions
The project includes a GitHub Actions workflow to automatically run tests on every pull request. This ensures that all contributions maintain code quality and pass existing tests before merging.

## Contributing
Bug reports and pull requests are welcome on GitHub at [https://github.com/jaydipPansuriya21/partition_by_sign.](https://github.com/jaydipPansuriya21/partition_by_sign)

1) Fork the repository.
2) Create a new feature branch from master (git checkout -b feature/new-feature).
3) Commit your changes (git commit -m 'Add new feature').
4) Push the branch (git push origin feature/new-feature).
5) Open a Pull Request.

Please ensure that your contributions include tests and that all tests pass.



