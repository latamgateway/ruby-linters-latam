class A
  class << self
    def foo
      # ruleid: avoid-instance-variables-in-singleton-classes
      @bar = 123
    end
  end

  def initialize
    # ok: avoid-instance-variables-in-singleton-classes
    @baz = 321
  end
end
