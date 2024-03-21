import bpy
import bmesh

import math

object = bpy.context.object
mesh = object.data


mesh.uv_layers.new(name="voxels_grid")
bm = bmesh.new()
bm.from_mesh(mesh)

bm.faces.ensure_lookup_table()

uv_layer = bm.loops.layers.uv[0]

nFaces = len(bm.faces)
n = int(math.sqrt(nFaces))+1
print(f"resolution of the texture: {n}\n")
a = 1/n

for x in range(n):
    for y in range(n):
        fi = x + y*n
        if fi < nFaces:
            u = x*a
            v = y*a
            if len(bm.faces[fi].loops) == 4:
                bm.faces[fi].loops[0][uv_layer].uv = (x*a, y*a)
                bm.faces[fi].loops[1][uv_layer].uv = (x*a+a, y*a)
                bm.faces[fi].loops[2][uv_layer].uv = (x*a+a, y*a+a)
                bm.faces[fi].loops[3][uv_layer].uv = (x*a, y*a+a)
bm.to_mesh(mesh)

object.name = f"{object.name}_{n}"
