import shapes_3d.modules.ellipsoid as el
import matplotlib.pyplot as plt
import numpy as np

ellipsoid = el.Ellipsoid(2, 50)
points = ellipsoid.make_obj()

print(f"Number of points: {points.size}")

# Create 3D plot
fig = plt.figure(figsize=(10, 8))
ax = fig.add_subplot(111, projection='3d')

# Convert to numpy array if it's not already
points = np.array(points)

# Extract x, y, z coordinates
x = points[:, 0]
y = points[:, 1]
z = points[:, 2]

# Plot all the points
ax.scatter(x, y, z, c='blue', marker='o', s=1, alpha=0.6)

# Set labels and title
ax.set_xlabel('X')
ax.set_ylabel('Y')
ax.set_zlabel('Z')
ax.set_title('3D Ellipsoid Points Visualization')

# Make the plot look better
ax.grid(True)
plt.tight_layout()
plt.show()