function y_interp = spreading_fn(x,y)

x1 = x(1); y1= y(1);
x2 = x(2); y2= y(2);

% Calculate the vertex (minimum) point
vertexX = x2;
vertexY = y2;

% Determine the coefficient "a" of the parabola
a = (y1 - vertexY) / ((x1 - vertexX)^2);

% Generate a finer x-grid for plotting
x_interp = linspace(x1, x2);

% Evaluate the fitted parabola at the interpolated x-grid
y_interp = a * (x_interp - vertexX).^2 + vertexY;

% Plot the original points and the fitted parabola
% plot(x_interp, y_interp, 'b-', 'LineWidth', 2); % Blue line for fitted parabola

% Add labels and title
% xlabel('x');
% ylabel('y');
% title('Fitting a Concave-Up Parabola');
% 
% % Add a legend
% legend('Fitted Parabola', 'First Point', 'Midpoint');
end