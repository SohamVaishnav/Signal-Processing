function xr = sinc_recon(n, xn, Ts, t_fine)
   len1 = length(t_fine);
   len2 = length(xn);
   xr = zeros(len1);

   for k = 1:len1
       for l = 1:len2
           xr(k) = xr(k) + xn(l)*sinc((t_fine(k)-(l-1)*Ts)/Ts); 
       end
   end
end