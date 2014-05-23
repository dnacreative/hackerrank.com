require 'openssl'
def miller_rabin_prime?(n,g)
  return true if n == 2
  d = n - 1
  s = 0
  while d % 2 == 0
    d /= 2
    s += 1
  end
  g.times do
    a = 2 + rand(n-4)
    x = OpenSSL::BN::new(a.to_s).mod_exp(d,n)
    next if x == 1 or x == n-1
    for r in (1 .. s-1)
      x = x.mod_exp(2,n)
      return false if x == 1
      break if x == n-1
    end
    return false if x != n-1
  end
  true
end

def primes_sum(n,k)
    return false if (n / 2) < k
    
    if k == 1
        if miller_rabin_prime?(n,10)
            return true
        else
            return false
        end
    end

    if k == 2
        return true if (n.even? && n >= 4)
        return true if (!n.even? && miller_rabin_prime?(n-2,10))
        return false
    end

    if n.even?
        x = n - (k-2)*2
        return x >= 4 ? true : false
    else
        x = n - (k-3)*2 -3
        return x >= 4 ? true : false
    end
end


gets.chomp.to_i.times do
    n, k = gets.chomp.split(" ").map{|x| x.to_i}

    result = primes_sum(n,k)
    puts result ? "Yes" : "No"

end
