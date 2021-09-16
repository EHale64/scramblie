require 'minitest/autorun'
require 'minitest/pride'
require 'json'
require 'pry'
require_relative '../lib/scramblie'

class ScramblieTest < MiniTest::Test
    def setup
        @scrambled = Scramblie.new
    end

    def test_it_works
        assert_equal true, @scrambled.scramble('rkqodlw','world')
        assert_equal true, @scrambled.scramble('cedewaraaossoqqyt','codewars')
        assert_equal false, @scrambled.scramble('katas','steak')
        assert_equal true, @scrambled.scramble('scriptjava','javascript')
        assert_equal true, @scrambled.scramble('scriptingjava','javascript')
    end

    def test_it_works_with_edgecases
        assert_equal false, @scrambled.scramble('scriptjavx','javascript')
        assert_equal false, @scrambled.scramble('javscripts','javascript')
    end
end