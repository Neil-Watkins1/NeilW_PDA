require("minitest/autorun")
require("minitest/rg")
require_relative('./card')
require_relative('./testing_task_2')

class TestCardGame < MiniTest::Test



  def setup
    @card1 = Card.new("spades", 10)
    @card2 = Card.new("hearts", 1)
    @cardgame1 = CardGame.new()
  end



  def test_checkforAce_false()
    expected = false
    actual = @cardgame1.checkforAce(@card1)
    assert_equal(expected, actual)

  end

  def test_checkforAce_true()
    expected = true
    actual = @cardgame1.checkforAce(@card2)
    assert_equal(expected, actual)
  end

  def test_highest_card__card1()
    expected = ["spades", 10]
    actual = @cardgame1.highest_card(@card1, @card2)
    assert_equal(expected, actual)
  end

  def test_highest_card__card2()
    expected = ["spades", 10]
    actual = @cardgame1.highest_card(@card2, @card1)
    assert_equal(expected, actual)
  end

    def test_cards_total()
  expected = "You have a total of 11"
  cards = [@card2, @card1]
  actual = @cardgame1.cards_total(cards)
  assert_equal(expected, actual)
    end
  end
