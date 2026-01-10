module TestPkg

export greet

using Primes
using Dates
# Write your package code here.

  function today2int()
    aa = today()
    year(aa)*10000+month(aa)*100+day(aa)
  end
  function greet()
    if isprime(today2int()) 
       print("Hello ! $(today2int()) is prime ! ")
       else
       print("こんにちは! $(today2int()) は素数ではありません! ")
    end
  end
end
