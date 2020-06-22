require('minitest/autorun')
require('minitest/reporters')
require_relative('../class_student')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

class TestStudent < Minitest::Test

    def test_student_name()
        student = Student.new("Helena", "E41")
        assert_equal("Helena", student.name())
    end

    def test_cohort()
        student = Student.new("James", "E41")
        assert_equal("E41", student.cohort())
    end

    def test_set_name()
        student = Student.new("Helena", "E41")
        student.set_name("Inger")
        assert_equal("Inger", student.name())
    end

    def test_set_cohort()
        student = Student.new("Alina", "E40")
        student.set_cohort("E41")
        assert_equal("E41", student.cohort())
    end

    def test_talk()
        student = Student.new("Robert", "E41")
        sentence = student.talk("Hello!")
        assert_equal("Hello!", sentence)
    end

    def test_favourite_language()
        student = Student.new("Tomek", "E41")
        language = student.favourite_language("Ruby")
        assert_equal("I love Ruby!", language)
    end


end