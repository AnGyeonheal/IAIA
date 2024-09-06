function zA = envelopExtract(x, N)
%
% returns constructed analytic signal
% x is a real-valued record of length N, where N is even %returns the analytic signal z[n]

x = x(:); %serialize
N = length(x);

%%% Part 1. z = hilbert(x)
%
% FFT of x
X = fft(x, N);      %YOUR CODE

% Create P[m]=Z[m]  from m=1 to N        %YOUR CODE
P(1) = X(1);
P(2:N/2) = 2*X(2:N/2);
P(N/2+1) = X(N/2+1);
P(N/2+2:N) = 0; 

% Create z(t)=Zr+j(Zi) from ifft(P)
z = ifft(P);       %YOUR CODE

zA = abs(z);
end