
function FindRootwithNR(tolar)

  f = @(x) 3*x^2 + 4*x - 4;
  df  = @(x) 6*x+4;
  iter=0;

  x0=0;

  while true
    iter=iter+1;

    fx=f(x0);
    dfx=df(x0);
    if dfx==0
    fprintf('Derivative is zero.NO solution Found.');
    return;
  end

  x1=x0-(fx/dfx);

 if abs(x1-x0)<tolar
   break;
 endif


 x0 = x1;
  endwhile

 fprintf('Root found: x = %.6f after %d iterations\n', x1, iter);
 end
