#factorial of a number
ans=1
echo "Enter i:"
read i
while [ $i -gt 0 ]
do
    ans=$(($ans * $i))
    i=$(($i - 1))
done
echo $ans
-----------------------------------------------------------------
#sum of first n natural numbers
ans=0
echo "Enter n:"
read n
while [ $n -gt 0 ]
do 
  ans=$(($ans + $n))
  n=$(($n - 1))
done
echo $ans
-----------------------------------------------------------------
#sum of all digits in a number
ans=0
echo "Enter n:"
read n
while [ $n -gt 0 ]
do
  rem=$(($n % 10))
  ans=$(($ans + $rem))
  n=$(($n / 10))
done
echo $ans

-----------------------------------------------------------------
#palindrome
echo 'Enter n:'
read n
m=$n
rev=0
while [ $n -gt 0 ]
do 
  rem=$(($n % 10))
  rev=$(($rev * 10 + $rem))
  n=$(($n / 10))
done

if [ $m -eq $rev ]
then
    echo "It is a palindrome"
else
    echo "It is not a palindrome"
fi
-----------------------------------------------------------------
#gcd of two numbers
function gcd(){
  x=$1
  y=$2
  while [ $y -ne 0 ]
  do
    rem=$(($x % $y))
    x=$y
    y=$rem
  done

  echo $x
}

gcd 12 6
-----------------------------------------------------------------
#fibonacci
function fib(){
  a=0
  b=1
  num=$1
  if [ $num -eq 0 ]
  then
    echo $a
  elif [ $num -eq 1 ]
  then
    echo $a
    echo $b
  else
    echo $a
    echo $b
    num=$(($num - 2))
    while [ $num -gt 0 ]
    do
      c=$(($a + $b))
      echo $c
      a=$b
      b=$c
      num=$(($num - 1))
    done
  fi

}

echo "Enter n:"
read n
fib $n

-----------------------------------------------------------------
#to print primes upto that number
function printPrimes() {
  num=$1
  nn=2

  while [ $nn -le $num ]
  do
    ct=0
    n=$nn
    i=2

    while [ $i -le $n ]
    do
      rem=$(($n % $i))

      if [ $rem -eq 0 ]
      then
        ct=$(($ct + 1))
      fi

      i=$(($i + 1))
    done

    if [ $ct -eq 1 ]
    then
      echo $n
    fi

    nn=$(($nn + 1))
  done
}

echo "Enter n:"
read n
printPrimes $n


-----------------------------------------------------------------
#armstrong numbers upto a given number
echo "Enter n:"
read n
i=1
while [ $i -le $n ]
do
 sum=0
 
 temp=$i
 count=0
 while [ $temp -ne 0 ]
 do
 count=` expr $count + 1 `
 temp=` expr $temp / 10 `
 done
 temp=$i
 while [ $temp -ne 0 ]
 do
 rem=` expr $temp % 10 `
rem=$(($rem ** $count))
 sum=` expr $sum + $rem `
 temp=` expr $temp / 10 `
 
 done
 if [ $sum -eq $i ]
 then
 echo $i
 fi
 i=` expr $i + 1 `
done

-----------------------------------------------------------------
#krishnamurthy numbers upto n
echo "Enter n:"
read n
i=1
while [ $i -le $n ]
do
sum=0
 temp=$i
 while [ $temp -ne 0 ]
 do
 rem=` expr $temp % 10 `
 fact=1
 k=1
 while [ $k -le $rem ]
 do
 fact=$(($fact * $k))
 k=` expr $k + 1 `
 done 
 sum=` expr $sum + $fact `
 temp=` expr $temp / 10 ` 
 done
 if [ $sum -eq $i ]
 then
 echo $i
 fi
 i=` expr $i + 1 `
done