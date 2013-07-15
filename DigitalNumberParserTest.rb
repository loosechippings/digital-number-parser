require "DigitalNumberParser"
require "test/unit"

class DigitalNumberParserTest < Test::Unit::TestCase

	def setup
		@NL="\n"
		@ONE=		"   "+@NL+
					"  |"+@NL+
					"  |"

		@TWO=		" _ "+@NL+
					" _|"+@NL+
					"|_ "

		@TWELVE=	"    _ "+@NL+
					"  | _|"+@NL+
					"  ||_ "
	end

	def test_should_parse_number_one
		result=DigitalNumberParser.parse(@ONE)
		assert_equal("1",result)
	end

	def test_should_parse_number_two
		result=DigitalNumberParser.parse(@TWO)
		assert_equal("2",result)
	end

	def test_should_parse_number_twelve
		result=DigitalNumberParser.parse(@TWELVE)
		assert_equal("12",result)
	end
end
