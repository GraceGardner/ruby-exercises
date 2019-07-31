gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    # skip
    medusa = Medusa.new("Sam")
    bob = Person.new("Bob")
    bill = Person.new("Bill")
    jack = Person.new("Jack")
    will = Person.new("Will")

    medusa.stare(bob)
    medusa.stare(bill)
    medusa.stare(jack)
    assert_equal medusa.statues.length, 3
    medusa.stare(will)
    assert_equal medusa.statues.length, 3

  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # skip
    medusa = Medusa.new("Lady")
    guy1 = Person.new("Guy1")
    guy2 = Person.new("Guy2")
    guy3 = Person.new("Guy3")
    guy4 = Person.new("Guy4")

    medusa.stare(guy1)
    assert guy1.stoned?
    medusa.stare(guy2)
    assert guy2.stoned?
    medusa.stare(guy3)
    assert guy3.stoned?
    medusa.stare(guy4)
    assert guy4.stoned?
    refute guy1.stoned?
    
  end

end
