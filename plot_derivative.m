x = linspace(-10, 10, 100);      % Define finer mesh for domain
f = exp(-x.^2./2)./sqrt(2*pi);   % Define range as Gaussian - note vectorization works the same as numpy
d = derivative(-10,10,100);      % Define derivative matrix to match domain mesh
plot(x,f)                        % Plot range vs. domain
hold()                           % Make next plots use the same figure
plot(x, d*f')                    % Plot first derivative
plot(x, d*d*f')                  % Plot second derivative
legend('f','df/dx','d^2f/dx^2')  % Add a legend - note that python could label each plot, but MATLAB cannot, so must explicitly label here
title('Gaussian and Derivatives')
xlabel('x')
ylabel('g(x)')
plot(x,f)
hold()
g = f';
for i = 1:4       % for loops work similarly to python (and are similarly slow) - instead of in, use =
  g = d*g;
  plot(x,g)
end
title('Gaussian and Derivatives')
xlabel('x')
ylabel('g(x)')