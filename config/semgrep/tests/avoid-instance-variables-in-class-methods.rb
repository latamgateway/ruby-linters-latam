class A
  def self.foo
    # ruleid: avoid-instance-variables-in-class-methods
    @bar = 123
  end

  def initialize
    # ok: avoid-instance-variables-in-class-methods
    @baz = 321
  end
end
