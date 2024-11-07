require 'minitest/autorun'
require_relative '../lib/partition_by_sign'


class PartitionBySignTest < Minitest::Test
  def test_partition_by_sign_with_mixed_values
    puts "Method : "
    puts self.methods
    input = { a: -1, b: 2, c: -3, d: 4 }
    expected_output = [[:a, :c], [:b, :d]]
    assert_equal expected_output, partition_by_sign(input)
  end

  def test_partition_by_sign_with_all_negative_values
    input = { a: -1, b: -2, c: -3 }
    expected_output = [[:a, :b, :c], []]
    assert_equal expected_output, partition_by_sign(input)
  end

  def test_partition_by_sign_with_all_positive_values
    input = { a: 1, b: 2, c: 3 }
    expected_output = [[], [:a, :b, :c]]
    assert_equal expected_output, partition_by_sign(input)
  end

  def test_partition_by_sign_with_empty_hash
    input = {}
    expected_output = [[], []]
    assert_equal expected_output, partition_by_sign(input)
  end

  def test_partition_by_sign_with_zero_values
    input = { a: 0, b: -1, c: 2 }
    expected_output = [[:b], [:a, :c]]
    assert_equal expected_output, partition_by_sign(input)
  end
end
