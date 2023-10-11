class A
  # ok: private-method-environment-variable-dependency
  def initialize(user = ENV.fetch("USER"))
    @user = user
  end

  private

  # ruleid: private-method-environment-variable-dependency
  def bar(user = ENV.fetch("USER"))
    puts "Hi, #{user}!"
  end

  # ruleid: private-method-environment-variable-dependency
  def baz(host:, user: ENV.fetch("USER"))
    puts "Hi, #{user} on #{host}!"
  end
end
