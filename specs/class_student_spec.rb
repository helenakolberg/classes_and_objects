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


end