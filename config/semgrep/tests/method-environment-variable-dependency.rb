def foo
  # ruleid: method-environment-variable-dependency
  ENV["USER"]
  # ruleid: method-environment-variable-dependency
  ENV.fetch("USER")
  # ruleid: method-environment-variable-dependency
  ENV.fetch("USER", "root")
end

# ok: method-environment-variable-dependency
def bar(user = ENV.fetch("USER", "root"))
  puts "Hi, #{user}!"
end
