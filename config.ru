class RackApp
  def call(env)
    path = env['PATH_INFO']
    num = path.chars.drop(1).join.to_i

    if (num % 15).zero?
      [200, { 'Content-Type' => 'text/plain' }, ['fizzbuzz']]
    elsif (num % 5).zero?
      [200, { 'Content-Type' => 'text/plain' }, ['buzz']]
    elsif (num % 3).zero?
      [200, { 'Content-Type' => 'text/plain' }, ['fizz']]
    else
      [200, { 'Content-Type' => 'text/plain' }, [num.to_s]]
    end
  end
end

run RackApp.new
