# find ~/Downloads/02691156/ -name *.ply -print0 | xargs -0 -n1 -P1 -I {}\
#  blender --background --python shapenet_spherical_renderer.py \
#   -- --output_dir /tmp --mesh_fpath {} --num_observations 50 \
#   --sphere_radius 1 --mode=train

# prefix=02691156/
# prefix=04379243/
# 04379243 02958343 03001627
for prefix in 04256520
do
# set -x 
find ~/Dataset/ShapeNetCore.v2/$prefix \
-name *.obj -print0 | xargs -0 -n1 -P16 -I {} \
  blender --background --python shapenet_spherical_renderer.py \
   -- --output_dir ../ShapeNetRender/$prefix --mesh_fpath {} --num_observations 50 \
   --sphere_radius 1 --mode=train
done

