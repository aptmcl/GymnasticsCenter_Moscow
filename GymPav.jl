### A Pluto.jl notebook ###
# v0.11.1

using Markdown
using InteractiveUtils

# ╔═╡ b95fbfdd-38a8-49b4-90ba-515ac4622600
md"""
# Irina Viner-Usmanova Rhythmic Gymnastics Centre
"""

# ╔═╡ b538f7c2-d1a5-11ea-3191-4bf2b9263933
md"""
# Irina Viner-Usmanova Rhythmic Gymnastics Centre

![alt text](https://raw.githubusercontent.com/adam-p/markdown-here/master/src/common/images/icon48.png "Logo Title Text 1")
"""

# ╔═╡ bb8e6976-7872-4bca-a1f1-30e50601c1b4
md"""
Avoid tests macro: `true` to skip tests, and `false` to run them.
"""

# ╔═╡ 6d919e66-a36d-4acf-bf43-1f1779a2dbee
md"""
## Sinusoidal Curves
"""

# ╔═╡ fa1b1d9e-a401-4578-ba26-c0279e5c640f
md"""
 | Sinunoisal wave parameters | Other sinusoidal curves |
 |----------------------------|-------------------------|
 |<img src="./Figures/sin_wave.png" width="480"> | <img src="./Figures/sin_curves.png" width="350">|
"""

# ╔═╡ b1e8edd0-1c15-42bc-a3c9-8b96efe6f536
md"""
`sinusoidal` parameters explained:
* a is the amplitude
* omega is the frequency
* fi is the phase
"""

# ╔═╡ 6f25fd8f-b4b3-471b-85ec-fc3b9b600bd2
md"""
Expected result:
<img src="./Plots/sin_array_y.png" width="600">
"""

# ╔═╡ caecf45d-a048-48b7-a611-91a812c08455
md"""
`damped_sin_wave`'s parameters explained
* a is the initial amplitude (the highest peak)
* b is the decay constant
* omega is the angular frequency
"""

# ╔═╡ 4b32e672-023c-4ce5-9338-d7771b98ea4a
md"""
Expected result:
<img src="./Plots/damped_sin_array.png" width="600">
"""

# ╔═╡ e7038ca3-9571-456e-bd0b-3e3b2d1ebf87
md"""
Expected result:
<img src="./Plots/damped_surface.png" width="600">
"""

# ╔═╡ ce71517b-cc83-44e5-a488-6c7b84f9864d
md"""
`d_i`is the distance between the pavillion starting point and the beginning of the dumped sine curve.
"""

# ╔═╡ 6880cadc-e3de-4743-bc86-3078fcb9ef01
md"""
Expected result:
<img src="./Plots/roof_surface.png" width="600">
"""

# ╔═╡ 5506477a-8721-42b9-b2cc-5f31b81721b1
md"""
## Pavilion Dimensions
"""

# ╔═╡ 2b9a932d-cea2-45f4-b83e-3f5d986cb212
md"""
 | Roof dimentions explained |
 |----------------------------|
 |<img src="./Figures/roof_dims.jpg" width="600"> |
"""

# ╔═╡ cded1032-7439-420a-9cd2-53391fb7a5cf
md"""
__Double sinuoid parameters:__

* amp_x = amplitude of the sinusoid along the x axis
* amp_y_min_top = minimum amplitude of the damped sinusoid along the y axis for the top layer of the roof
* amp_y_max_top = maximum amplitude of the damped sinusoid along the y axis for the top layer of the roof
* amp_y_max_bottom = maximum amplitude of the damped sinusoid along the y axis for the bottom layer of the roof
* amp_y_min_bottom = minimum amplitude of the damped sinusoid along the y axis for the bottom layer of the roof
* fi = sinusoid's phase along the x axis
* decay = damped sinusoid's decay along the y axis
* om_x = frequency of the sinusoid in x
* om_y = frequency of the damped sinusoid in y

__Genaral pavilion parameters:__

* pav_width = pavilion's width (along x axis)
* pav_length = pavilion's lenght (along y axis)
* pav_height = pavilion's height (z axis)
* d_width = distance between roof layers in the x axis (top layer is wider)
* d_length = distance between roof layers in the y axis (top layer is longer)
* d_height = distance between roof layers in the z axis (height of the roof truss)
* d_i = ??
"""

# ╔═╡ 57d2c675-7ee0-4ecf-870d-622c95e8b27f
md"""
## Roof Truss
"""

# ╔═╡ db5995c3-f7d9-4829-b54f-f79052a3ed9a
md"""
### Basic truss elements
"""

# ╔═╡ 6c76ce47-4de5-4a93-97b8-c24c49e79829
md"""
The following functions create truss elements:
* `free_node` and `fixed_node`create truss nodes
* `bar`creates truss bars
* `panel`creates truss panels
"""

# ╔═╡ 2b9f6083-0e12-45b2-bdf8-5adf8ec485b0
md"""
CAD version of truss elements:
"""

# ╔═╡ 046950c0-af6f-4909-aedd-24be51e03a41
md"""
BIM families for truss elements:
"""

# ╔═╡ 6e893174-5bc7-43af-9115-caf2b459893f
md"""
BIM version of truss elements:
"""

# ╔═╡ 843de490-d1a1-11ea-158b-2791ce4d7574


# ╔═╡ d7628daa-e127-4e00-8409-2dd196a04fca
md"""
### Spatial truss
"""

# ╔═╡ c6f63f28-b2c6-4f9b-af65-cc52a688d76f
md"""
`truss_ptss`receives two sets of points, the bottom and top points defining the shape of the truss to create.
It returns the points defining the truss structure.
"""

# ╔═╡ dac6d908-bd86-40b5-bb30-9b11da6e16e6
md"""
`truss`receives the type of truss to create, as well as both bottom and top points defining its shape.
It creates a 3D spatial truss.
"""

# ╔═╡ e064a911-9969-423a-8344-2e8ca1eb7f5e
md"""
 | Vierendeel modular block front | Vierendeel modular block side |
 |----------------------------|-------------------------|
 |<img src="./Figures/front_vierendeel.png" width="350"> | <img src="./Figures/side_vierendeel.png" width="350">|
"""

# ╔═╡ a189462e-b853-4c45-bdd6-9caddcb91a4c
md"""
`vierendeel`creates a vierendeel truss structure.
"""

# ╔═╡ ffb39ec0-7879-4467-99b8-3d56eccad409
md"""
Expected result:
<img src="./Plots/truss_roof_meshcat.png" width="800">
"""

# ╔═╡ 7305cf91-f191-4b11-9392-16112a4977e8
md"""
Expected result:
<img src="./Plots/truss_roof_unity.png" width="800">
"""

# ╔═╡ 89f0c248-ac43-455c-a1e3-140e218b3cce
md"""
## Roof Surface
"""

# ╔═╡ 3a55c28a-bea5-41a4-b948-aca71ed2d311
md"""
Auxiliar functions
"""

# ╔═╡ 710594d3-49f1-4fe6-88fe-6b855905c2ac
md"""
## Glass Façade
"""

# ╔═╡ 23b94d5b-8a95-4572-b9d1-7f1c21c29cd8
md"""
`splines4surf`maps splines over a matrix of points, to visualise surfaces in the notebook backend faster.
"""

# ╔═╡ 46d2cb43-d231-44d5-a4dc-4626c95528e7
md"""
`damped_sin_glass_wall`creates the pavillion's side glass wall matrixes
"""

# ╔═╡ 3ed42acd-f899-404d-b500-885d213249bb
md"""
Expected result:
<img src="./Plots/glass_lines_cad.png" width="800">
"""

# ╔═╡ e6842734-e166-4996-9026-67d8f0539316
md"""
### Glass option 1
"""

# ╔═╡ d417b72a-e494-4565-89b2-afc20a643a54
md"""
`itera_sweeked`creates the pavillion glass walls
"""

# ╔═╡ 4878ca96-5a2a-453f-a70f-64e260bb27fe
md"""
### Glass option 2
"""

# ╔═╡ 074c6636-1705-4379-b690-3169fa4ce443
md"""
Given a list of points (closed polygon vertices), this function creates a polygonal glass panel surrounded by a thin metal framing all around:
"""

# ╔═╡ e7c86ac3-72b2-443b-9459-60c724ac171a
md"""
Frame BIM family
"""

# ╔═╡ 1097beab-dc50-4d02-a2ab-f702418459a3
md"""
Expected result:
<img src="./Plots/framed_panel.png" width="800">
"""

# ╔═╡ 6aa60a1a-ddc0-4908-b063-b5f2887ea8fe
md"""
Creates a vertical line of `framed_panels` given a list of points in z:
"""

# ╔═╡ 73deec5d-e545-4a23-b94d-39556b9d4c0d
md"""
Expected result:
<img src="./Plots/first_row_panels.png" width="800">
"""

# ╔═╡ f41b833c-ab02-484c-ad2b-5378e9839cb3
md"""
Same function, but vector `v` now already considers the panel width, it's not a normal vector anymore:
"""

# ╔═╡ 4ab2d219-d9be-4a85-891c-0012b9d02140
md"""
Expected result:
<img src="./Plots/weast_facade_panel.png" width="800">
"""

# ╔═╡ d393472d-afe7-4448-a45d-6e260550e22a
md"""
## Interior Walls
"""

# ╔═╡ 12e5b169-858b-4b8c-b5a9-6a8c448b33db
md"""
## Backend specifics
"""

# ╔═╡ fa35922a-9da1-46e5-a361-336d49ba098c
md"""
Ground:
"""

# ╔═╡ 49f8ddf6-0d85-4365-a59f-3d1f689f2c90
md"""
BIM family materials for Unity backend:
"""

# ╔═╡ 4d13af19-346f-4f4c-ae22-d5583edb6bb5


# ╔═╡ 89f241f0-8f63-4118-96de-8d2a59c32d92
using WebIO

# ╔═╡ 38ae9d22-9623-49ec-b3e5-98a23130080f
using Interact

# ╔═╡ c7af4b41-9d68-45ec-8f53-9520f9385b40
using Khepri

# ╔═╡ 39ebea40-d1a6-11ea-0a2c-7d956e932488
using PlutoUI

# ╔═╡ 7b837fe4-abcb-47d2-b9d2-afc973cfc946
render_size(800, 400) # Khepri backends size

# ╔═╡ b3c181b2-d19f-11ea-3f47-b12e496981c3
avoid_tests = Parameter(true)

# ╔═╡ e9bce3c8-1219-4da6-beed-25da2a3d930f
macro test(expr...)
  quote
    if !avoid_tests()
        begin
            $(esc(expr...))
        end
    end
  end
end

# ╔═╡ 7b08c822-abb7-4727-ac7d-dc43726c8aac
avoid_tests(false)

# ╔═╡ bd1cf38d-72b8-4608-a0e6-1a53b63c0b9d
sinusoidal(a, omega, fi, x) = a*sin(omega*x+fi)

# ╔═╡ a98cc001-8f4a-4689-9ec9-2f64a3a6a18d
sin_array_y(p, a, omega, fi, dist, n) = [p+vxy(i, sinusoidal(a, omega, fi, i)) for i in division(0, dist, n)]

# ╔═╡ d0cc21c9-28ee-4b9e-b534-968e70486f66
@test begin
    backend(notebook)
	new_backend()
    line(sin_array_y(u0(), 5, 1, 0, 50, 100))
end

# ╔═╡ 4d2d23bb-3275-4bed-896a-c612c2c149ca
damped_sin_wave(a, d, omega, x) = a*exp(-(d*x))*sin(omega*x)

# ╔═╡ 8d925c6b-5f59-4ec9-a250-65e395ef5ff6
damped_sin_array_z(p, a, d, omega, dist, n) = [p+vxz(i, damped_sin_wave(a, d, omega, i)) for i in division(0, dist, n)]

# ╔═╡ 3cea7332-c1a6-4d59-a391-6310e8cbb3d0
@test begin
    backend(notebook)
    line(damped_sin_array_z(u0(), 5, 0.1, 1, 50, 100))
end

# ╔═╡ 95089d04-e7c8-4584-b76d-c55b96737c01
damped_sin_roof_pts_1(p, a_x, a_y, fi, decay, om_x, om_y, dist_x, dist_y, n_x, n_y) =
    map_division((x, y)->p+vxyz(x, y, sinusoidal(a_x, om_x, fi, x)+damped_sin_wave(a_y, decay, om_y, y)),
        0, dist_x, n_x,
        0, dist_y, n_y)

# ╔═╡ 4cf3d2cd-a31a-431d-8919-d254025f1a19
@test begin
    backend(autocad)
	new_backend()
        surface_grid(damped_sin_roof_pts_1(u0(), 3, 10, 0, 0.1, 0.2, 1, 50, 100, 100, 200))
end

# ╔═╡ 8533a2c9-6364-412a-8ee0-3aaa0db203a7
begin
	amp_x = 2.5
	amp_y_min_top = 4
	amp_y_max_top = 11
	amp_y_max_bottom = 10
	amp_y_min_bottom = 3
	fi = pi
	decay = 0.03
	om_x = pi/50
	om_y = pi/10
	pav_width = 60
	pav_length = 100
	pav_height = 14
	d_width = 1.5
	d_length = 1
	d_height = 3
	d_i = 0.5
end

# ╔═╡ 8dccc67c-e2f8-4423-bac6-d3172bfe4587
damped_sin_roof_pts(p, h, a_x, a_y_min, a_y_max, fi, decay, om_x, om_y, dist_x, dist_y, n_x, n_y) =
    map_division((x, y) ->
                y <= d_i ?
                p + vxyz(x,
                         -sin(y/d_i*(1*pi)),
                         y*h/d_i + sin(x/dist_x*pi)sinusoidal(a_x, om_x, fi-y*pi/dist_y, x)*(y*a_x/d_i)) :
                p + vxyz(x,
                         y,
                         h + sin(x/dist_x*pi)*sinusoidal(a_x, om_x, fi-y*pi/dist_y, x) +
                         damped_sin_wave(a_y_max - (a_y_max-a_y_min)/dist_x*x, decay, om_y, y)),
             0, dist_x, n_x,
             0, dist_y, n_y)

# ╔═╡ 9b4ad02f-1846-41c1-bdd8-be1d7aef9e5c
@test begin
    backend(meshcat)
    new_backend()
    @manipulate for ampx = widget(1:0.1:3, label="Amplitude x"),
                    ampy_min = widget(1:0.1:15, label="Minimum Amplitude y"),
                    ampy_max = widget(1:0.1:15, label="Maximum Amplitude y"),
                    h = widget(2:1:20, label="Height")
                delete_all_shapes()
                surface_grid(damped_sin_roof_pts(u0(), h, ampx, ampy_min, ampy_max, pi, 0.03, pi/50, pi/10, 60, 100, 120, 800))
    end
end

# ╔═╡ 0578dc00-8eac-4a03-8d3f-3b75a3c978ca
begin
	free_node_fam = truss_node_family_element(default_truss_node_family(), support=Khepri.truss_node_support(), radius=0.1)
	sup_node_fam = truss_node_family_element(default_truss_node_family(), support=Khepri.truss_node_support(ux=true, uy=true, uz=true), radius=0.1)
end

# ╔═╡ c5ac337a-3f2d-49d6-b710-cbe34ff7470e
fixed_node(p) = truss_node(p, family=sup_node_fam)

# ╔═╡ 1c487fa5-d772-421a-9a53-24460594bf1d
bar(p, q) = truss_bar(p, q)

# ╔═╡ b19ffe44-baf6-4157-8822-d208902c3b5e
truss_ptss(bottom_ptss,top_ptss) =
    length(top_ptss) == length(bottom_ptss) ?
    vcat([[pts,qts] for (pts,qts) in zip(bottom_ptss,top_ptss)]...) :
    vcat([[pts,qts] for (pts,qts) in zip(top_ptss[1:end-1],bottom_ptss)]..., [top_ptss[end]])

# ╔═╡ 506388b3-0ca2-4d14-a1c1-0c52c83ff971
truss(truss_type; bottom_ptss=planar(p=x(0)), top_ptss=planar(p=z(1))) =
    let ptss = truss_ptss(bottom_ptss, top_ptss)
      truss_type(ptss)
  end

# ╔═╡ 9be89561-831b-4324-957e-2ac2ecf42ee4
vierendeel(ptss, first=true) =
    let ais = ptss[1],
        bis = ptss[2],
        cis = ptss[3],
        dis = ptss[4]
      (first ? fixed_node : free_node).(ais)
      free_node.(bis)
      bar.(ais, bis)
      bar.(ais, cis)
      bar.(bis, dis)
      bar.(ais[2:end], ais[1:end-1])
      bar.(bis[2:end], bis[1:end-1])
      if ptss[5:end] == []
          fixed_node.(cis)
          free_node.(dis)
          bar.(cis[2:end], cis[1:end-1])
          bar.(dis[2:end], dis[1:end-1])
          bar.(dis, cis)
      else
          vierendeel(ptss[3:end], false)
      end
    end

# ╔═╡ d8572b9a-58d0-4d05-be45-afb62c1f1a1f
@test begin
    backend(meshcat)
    new_backend()
    @manipulate for ampx = widget(1:0.1:3, label="Amplitude x"),
                    ampy_top_min = widget(3:0.1:15, label="Minimum Amplitude y"),
                    ampy_top_max = widget(3:0.1:15, label="Maximum Amplitude y"),
                    ampy_bottom_min = widget(1:0.1:12, label="Minimum Amplitude y"),
                    ampy_bottom_max = widget(1:0.1:12, label="Maximum Amplitude y"),
                    h = widget(2:1:20, label="Height")
                delete_all_shapes()
        truss(vierendeel,
          top_ptss=damped_sin_roof_pts(u0(), pav_height,
                                          ampx, ampy_top_min, ampy_top_max,
                                          fi, decay, om_x, om_y,
                                          pav_width, pav_length-d_length, 50, 80),
          bottom_ptss=damped_sin_roof_pts(xy(d_width,d_length*1), pav_height-d_height,
                                         ampx, ampy_bottom_min, ampy_bottom_max,
                                         fi, decay, om_x, om_y,
                                         pav_width - d_width*2, pav_length-2*d_length, 50, 80))
    end
end

# ╔═╡ 5e0636c2-40c5-4337-b46b-1df7a0b6f3e6
transpose_array(arrays) =
    [[row[i] for row in arrays]
     for i in 1:length(arrays[1])]

# ╔═╡ 4db4ca2e-d1ae-11ea-1748-8f457498ac23
itera_2triangs(ptss) =
    vcat([vcat([[[p0,p1,p3],[p1,p2,p3]]
                for (p0,p1,p2,p3)
                in zip(pts0[1:end-1], pts1[1:end-1], pts1[2:end], pts0[2:end])]...)
         for (pts0, pts1) in zip(ptss[1:end-1], ptss[2:end])]...)

# ╔═╡ 2a0665af-c29b-4140-94a3-86e520b4d696
begin
    top_roof=damped_sin_roof_pts(x(0), 15,
                                   3, 6, 9,
                                   fi, decay, om_x, om_y,
                                   pav_width, pav_length-d_length, 50, 100)
    bottom_roof=damped_sin_roof_pts(xy(d_width,d_length*1), 15-d_height,
                                      3, 6, 9,
                                      fi, decay, om_x, om_y,
                                      pav_width - d_width*2, pav_length-2*d_length, 									  50, 100)

end

# ╔═╡ aee0e370-d1ae-11ea-19b8-c9fc6bfba995
@test begin
    backend(autocad)
    new_backend()
	map(ps->surface_polygon(ps),
			itera_2triangs(top_roof))
	map(ps->surface_polygon(ps),
			itera_2triangs(bottom_roof))        
end

# ╔═╡ 72eccccb-e3aa-4724-956a-e6369ea674f2
function splines4surf(mtx)
    [spline(pts) for pts in mtx]
    [spline(pts) for pts in transpose_array(mtx)]
end

# ╔═╡ 4cefd507-baf7-484f-8a6a-02ec41fa9793
damped_sin_glass_wall(p, a_y, fi, decay, om_y, dist_y, dist_z, n_y, n_z) =
    map_division((y, z) ->
                    y <= d_i ?
                    p + vyz(-sin(y/d_i*(1*pi)), z) :
                    p + vyz(y,
                            z + (z/dist_z)*damped_sin_wave(a_y, decay, om_y, y)),
             0, dist_y, n_y,
             0, dist_z, n_z)

# ╔═╡ bfa876d0-d1a1-11ea-3180-51aaf47c7484
begin
	n_y = 85
	n_z = 20
	dist_y = pav_length-2*d_length
	dist_z = pav_height-d_height
	west_glass_wall = damped_sin_glass_wall(x(d_width),
											amp_y_max_top,
											fi, decay, om_y,
											dist_y, dist_z, n_y, n_z)
	east_glass_wall = damped_sin_glass_wall(x(pav_width-d_width),
											amp_y_min_bottom,
											fi, decay, om_y,
											dist_y, dist_z, n_y, n_z)
end

# ╔═╡ f6a34f22-07a4-4a20-8f1f-5d74a1189291
@test begin
    backend(autocad)
    delete_all_shapes()
    splines4surf(west_glass_wall)
    splines4surf(east_glass_wall)
end

# ╔═╡ 94cf43dc-e2cd-4548-b0bb-1dc9052ff4ab
itera_sweeked(ptss) =
    vcat([[let p23=intermediate_loc(p2, p3),
               p24=intermediate_loc(p2, p4)
             [p0,p1,p24,p23]
           end
          for (p0,p1,p2,p3,p4)
          in zip(pts0[1:end-1], pts1[1:end-1], pts1[2:end], pts0[2:end], pts2[2:end])]
         for (pts0, pts1, pts2)
         in zip(ptss[1:end-2], ptss[2:end-1],ptss[3:end])]...)

# ╔═╡ 1094c9ee-5f18-4c31-8fee-e0dad3f4c705
@test begin
    backend(meshcat)
    new_backend()
    @manipulate for ampy_bottom_min = widget(1:0.1:12, label="Minimum Amplitude y"),
                    ampy_bottom_max = widget(1:0.1:12, label="Maximum Amplitude y"),
                    h = widget(2:1:20, label="Height")
                delete_all_shapes()
                west_glass_wall = damped_sin_glass_wall(x(d_width),
                                                        ampy_bottom_max,
                                                        fi, decay, om_y,
                                                        pav_length-2*d_length, h-d_height, 85, 20)
                east_glass_wall = damped_sin_glass_wall(x(pav_width-d_width),
                                                        ampy_bottom_min,
                                                        fi, decay, om_y,
                                                        pav_length-2*d_length, h-d_height, 85, 20)
                map(ps->surface_polygon(ps), itera_sweeked(west_glass_wall))
                map(ps->surface_polygon(ps), itera_sweeked(east_glass_wall))
    end
end

# ╔═╡ a1fe6ff3-ffeb-4704-8ad1-29b7c1f4c38c
begin
	frame_width=0.1
	frame_fam = column_family_element(default_column_family(), 	profile=rectangular_profile(frame_width, frame_width))
end

# ╔═╡ 8fbeba4f-4e01-427a-9b6c-759095778f2f
framed_panel(pts)=
    begin
        panel(pts, family=default_panel_family())
        for (p,q) in zip(pts, [pts[2:end]...,pts[1]])
            free_column(p,q, family=frame_fam)
        end
    end

# ╔═╡ 3aea2bfc-c7a5-4d69-ae5a-5a1b97ee05a7
@test begin

    backend(meshcat)
    new_backend()
    @manipulate for radius = widget(1:1:5, label="Radius"),
                    sides = widget(1:1:10, label="Sides"),
                    angle = widget(1:1:20, label="Angle")
                    delete_all_shapes()
                    framed_panel(regular_polygon_vertices(sides, x(-10), radius, angle))
                    framed_panel(regular_polygon_vertices(sides+2, x(0), radius, angle))
                    framed_panel(regular_polygon_vertices(sides+5, x(10), radius, angle))
                    end

end

# ╔═╡ 0cd6920f-f5bb-43e2-8d0d-d2459f0a59fb
vertical_panel_line(pts, v, panel_width)=
    let pav_panel(p, q) = framed_panel([p, p+v*panel_width, q+v*panel_width, q])
        [pav_panel(p, q) for (p, q) in zip(pts[1:end-1], pts[2:end])]
    end

# ╔═╡ c45dc66f-a915-4af3-a699-56c48578f125
@test begin
    backend(autocad)
    panel_width = dist_y/n_y
    vertical_panel_line(west_glass_wall[1], vy(1), panel_width)
end

# ╔═╡ 76e18cdb-c877-4ce5-9b0e-8db4cf1a7576
vertical_panel_line_2(pts, v)=
    let pav_panel(p, q) = framed_panel([p, p+v, q+v, q])
        [pav_panel(p, q) for (p, q) in zip(pts[1:end-1], pts[2:end])]
    end

# ╔═╡ 8bda433a-74a1-46c9-a508-3e9eac8f8aa4
vertical_panel_lines(mtx)=
    let v = mtx[2][1]-mtx[1][1]
        [vertical_panel_line_2(pts, v) for pts in mtx]
    end

# ╔═╡ 5d69ca2e-c1b3-4e03-b815-cbf1d0950122
@test begin
    backend(autocad)
    delete_all_shapes()
    vertical_panel_lines(west_glass_wall)
end

# ╔═╡ 84a76d10-d1a7-11ea-0faa-63d503a8b3d0
glass_panel_height = 1

# ╔═╡ 8901ed90-d1a7-11ea-0661-61aa58164d59
is_above_z_limit(z, z_lim)= z >= z_lim

# ╔═╡ 8d97542e-d1a7-11ea-2033-e9bb17478044
vert_pts(p, panel_height, z_lim) = is_above_z_limit(p.z, z_lim) ? [] : [p, vert_pts(p+vz(panel_height), panel_height, z_lim)...]

# ╔═╡ 62365aac-794c-49b0-b0aa-18abd7fc463c
damped_sin_glass_wall_2(p, a_y, fi, decay, om_y, dist_y, dist_z, n_y, n_z, panel_height) =
	let pts = map_division(y -> p+vy(y), 0, dist_y, n_y)
		zs = map_division(y -> dist_z+damped_sin_wave(a_y, decay, om_y, y), 0, dist_y, n_y) 
   	 [vert_pts(p, panel_height, z_lim) for (p, z_lim) in zip(pts, zs)]
	end

# ╔═╡ 31ce9890-d1aa-11ea-28e4-8f569c96ff13
begin
	west_glass_wall_2 = damped_sin_glass_wall_2(x(d_width),
											amp_y_max_top,
											fi, decay, om_y,
											dist_y, dist_z, n_y, n_z, glass_panel_height)
	east_glass_wall_2 = damped_sin_glass_wall_2(x(pav_width-d_width),
											amp_y_min_bottom,
											fi, decay, om_y,
											dist_y, dist_z, n_y, n_z, glass_panel_height)
end

# ╔═╡ fc8934b0-d1a9-11ea-1487-29fd1f796054
@test begin
    backend(autocad)
    delete_all_shapes()
    vertical_panel_lines(west_glass_wall_2)
end

# ╔═╡ a5249682-d1ac-11ea-06af-dbd9d7005a89
vert_pts_odd(p, panel_height, z_lim) = [p, vert_pts(p+vz(panel_height/2), panel_height, z_lim)...]

# ╔═╡ 78435f10-d1ad-11ea-206d-934aac86dcc5
f_weave(f1, f2, count) = isodd(count) ? f1 : f2 

# ╔═╡ 5b4f6a20-d1ad-11ea-2d06-f940d72b786e
damped_sin_glass_wall_3(p, a_y, fi, decay, om_y, dist_y, dist_z, n_y, n_z, panel_height) =
	let pts = map_division(y -> p+vy(y), 0, dist_y, n_y)
		zs = map_division(y -> dist_z+damped_sin_wave(a_y, decay, om_y, y), 0, dist_y, n_y) 
		ns = 1:length(zs)
	 [f_weave(vert_pts_odd(p, panel_height, z_lim),vert_pts(p, panel_height, z_lim), count)	for (p, z_lim, count) in zip(pts, zs, ns)]
	end

# ╔═╡ 46771500-d1b0-11ea-2e2c-e96578a1da1f
west_glass_wall_3 = damped_sin_glass_wall_3(x(d_width),
											amp_y_max_top,
											fi, decay, om_y,
											dist_y, dist_z, n_y, n_z, glass_panel_height)

# ╔═╡ 2555a300-d1b0-11ea-15e2-cb380e7aeb14
@test begin
    backend(autocad)
    delete_all_shapes()
    vertical_panel_lines(west_glass_wall_3)
end

# ╔═╡ 19452352-d1a2-11ea-3d0a-17511c2bacae
ground_fam = slab_family_element(default_slab_family())

# ╔═╡ 33b72a6a-8803-49b8-820f-61af5e0bd1b7
ground() =
    let x = 1000
        y = 1000
      slab(closed_polygonal_path([xy(-x,y), xy(x,y), xy(x,-y), xy(-x,-y)]), level(-0.05), ground_fam)
    end

# ╔═╡ cab757de-b11a-4dfa-89ca-e5b257894115
@test begin
    backend(unity)
    delete_all_shapes()
    ground()
    truss(vierendeel,
      top_ptss=damped_sin_roof_pts(u0(), pav_height,
                                      amp_x, amp_y_min_top, amp_y_max_top,
                                      fi, decay, om_x, om_y,
                                      pav_width, pav_length-d_length, 5, 8),
      bottom_ptss=damped_sin_roof_pts(xy(d_width,d_length*1), pav_height-d_height,
                                     amp_x, amp_y_min_bottom, amp_y_max_bottom,
                                     fi, decay, om_x, om_y,
                                     pav_width - d_width*2, pav_length-2*d_length, 5, 8))
#     render_dir("C:\\Users\\Renata\\Documents\\GitHub\\GymnasticsCenter_Moscow\\Plots")
#     render_view("truss_roof_unity")
end

# ╔═╡ a352958f-34ff-4c7f-b65c-cd33d09072db
begin
	set_backend_family(default_truss_bar_family(), unity, unity_material_family("Default/Materials/Aluminum"))
	set_backend_family(free_node_fam, unity, unity_material_family("Default/Materials/Aluminum"))
	set_backend_family(sup_node_fam, unity, unity_material_family("materials/metal/Copper"))
	# set_backend_family(ground_fam, unity, unity_material_family("Default/Materials/White")) # -- white ground
	set_backend_family(ground_fam, unity, unity_material_family("Default/Materials/WhiteUnlit")) # -- white ground no shadows
	set_backend_family(default_panel_family(), unity, unity_material_family("Default/Materials/GlassBlue"))
	set_backend_family(frame_fam, unity, unity_material_family("Default/Materials/Steel"))
end

# ╔═╡ Cell order:
# ╟─b95fbfdd-38a8-49b4-90ba-515ac4622600
# ╠═b538f7c2-d1a5-11ea-3191-4bf2b9263933
# ╠═89f241f0-8f63-4118-96de-8d2a59c32d92
# ╠═38ae9d22-9623-49ec-b3e5-98a23130080f
# ╠═c7af4b41-9d68-45ec-8f53-9520f9385b40
# ╠═39ebea40-d1a6-11ea-0a2c-7d956e932488
# ╠═7b837fe4-abcb-47d2-b9d2-afc973cfc946
# ╟─bb8e6976-7872-4bca-a1f1-30e50601c1b4
# ╠═b3c181b2-d19f-11ea-3f47-b12e496981c3
# ╠═e9bce3c8-1219-4da6-beed-25da2a3d930f
# ╠═7b08c822-abb7-4727-ac7d-dc43726c8aac
# ╟─6d919e66-a36d-4acf-bf43-1f1779a2dbee
# ╟─fa1b1d9e-a401-4578-ba26-c0279e5c640f
# ╟─b1e8edd0-1c15-42bc-a3c9-8b96efe6f536
# ╠═bd1cf38d-72b8-4608-a0e6-1a53b63c0b9d
# ╠═a98cc001-8f4a-4689-9ec9-2f64a3a6a18d
# ╠═d0cc21c9-28ee-4b9e-b534-968e70486f66
# ╟─6f25fd8f-b4b3-471b-85ec-fc3b9b600bd2
# ╟─caecf45d-a048-48b7-a611-91a812c08455
# ╠═4d2d23bb-3275-4bed-896a-c612c2c149ca
# ╠═8d925c6b-5f59-4ec9-a250-65e395ef5ff6
# ╠═3cea7332-c1a6-4d59-a391-6310e8cbb3d0
# ╟─4b32e672-023c-4ce5-9338-d7771b98ea4a
# ╠═95089d04-e7c8-4584-b76d-c55b96737c01
# ╠═4cf3d2cd-a31a-431d-8919-d254025f1a19
# ╟─e7038ca3-9571-456e-bd0b-3e3b2d1ebf87
# ╠═8dccc67c-e2f8-4423-bac6-d3172bfe4587
# ╟─ce71517b-cc83-44e5-a488-6c7b84f9864d
# ╠═9b4ad02f-1846-41c1-bdd8-be1d7aef9e5c
# ╟─6880cadc-e3de-4743-bc86-3078fcb9ef01
# ╟─5506477a-8721-42b9-b2cc-5f31b81721b1
# ╟─2b9a932d-cea2-45f4-b83e-3f5d986cb212
# ╟─cded1032-7439-420a-9cd2-53391fb7a5cf
# ╠═8533a2c9-6364-412a-8ee0-3aaa0db203a7
# ╟─57d2c675-7ee0-4ecf-870d-622c95e8b27f
# ╟─db5995c3-f7d9-4829-b54f-f79052a3ed9a
# ╟─6c76ce47-4de5-4a93-97b8-c24c49e79829
# ╟─2b9f6083-0e12-45b2-bdf8-5adf8ec485b0
# ╟─046950c0-af6f-4909-aedd-24be51e03a41
# ╠═0578dc00-8eac-4a03-8d3f-3b75a3c978ca
# ╟─6e893174-5bc7-43af-9115-caf2b459893f
# ╠═c5ac337a-3f2d-49d6-b710-cbe34ff7470e
# ╠═843de490-d1a1-11ea-158b-2791ce4d7574
# ╠═1c487fa5-d772-421a-9a53-24460594bf1d
# ╟─d7628daa-e127-4e00-8409-2dd196a04fca
# ╟─c6f63f28-b2c6-4f9b-af65-cc52a688d76f
# ╠═b19ffe44-baf6-4157-8822-d208902c3b5e
# ╟─dac6d908-bd86-40b5-bb30-9b11da6e16e6
# ╠═506388b3-0ca2-4d14-a1c1-0c52c83ff971
# ╟─e064a911-9969-423a-8344-2e8ca1eb7f5e
# ╟─a189462e-b853-4c45-bdd6-9caddcb91a4c
# ╠═9be89561-831b-4324-957e-2ac2ecf42ee4
# ╠═d8572b9a-58d0-4d05-be45-afb62c1f1a1f
# ╟─ffb39ec0-7879-4467-99b8-3d56eccad409
# ╠═cab757de-b11a-4dfa-89ca-e5b257894115
# ╟─7305cf91-f191-4b11-9392-16112a4977e8
# ╟─89f0c248-ac43-455c-a1e3-140e218b3cce
# ╟─3a55c28a-bea5-41a4-b948-aca71ed2d311
# ╠═5e0636c2-40c5-4337-b46b-1df7a0b6f3e6
# ╠═4db4ca2e-d1ae-11ea-1748-8f457498ac23
# ╠═2a0665af-c29b-4140-94a3-86e520b4d696
# ╠═aee0e370-d1ae-11ea-19b8-c9fc6bfba995
# ╟─710594d3-49f1-4fe6-88fe-6b855905c2ac
# ╟─23b94d5b-8a95-4572-b9d1-7f1c21c29cd8
# ╠═72eccccb-e3aa-4724-956a-e6369ea674f2
# ╟─46d2cb43-d231-44d5-a4dc-4626c95528e7
# ╠═4cefd507-baf7-484f-8a6a-02ec41fa9793
# ╠═bfa876d0-d1a1-11ea-3180-51aaf47c7484
# ╠═f6a34f22-07a4-4a20-8f1f-5d74a1189291
# ╟─3ed42acd-f899-404d-b500-885d213249bb
# ╟─e6842734-e166-4996-9026-67d8f0539316
# ╟─d417b72a-e494-4565-89b2-afc20a643a54
# ╠═94cf43dc-e2cd-4548-b0bb-1dc9052ff4ab
# ╠═1094c9ee-5f18-4c31-8fee-e0dad3f4c705
# ╟─4878ca96-5a2a-453f-a70f-64e260bb27fe
# ╟─074c6636-1705-4379-b690-3169fa4ce443
# ╠═8fbeba4f-4e01-427a-9b6c-759095778f2f
# ╟─e7c86ac3-72b2-443b-9459-60c724ac171a
# ╠═a1fe6ff3-ffeb-4704-8ad1-29b7c1f4c38c
# ╠═3aea2bfc-c7a5-4d69-ae5a-5a1b97ee05a7
# ╟─1097beab-dc50-4d02-a2ab-f702418459a3
# ╟─6aa60a1a-ddc0-4908-b063-b5f2887ea8fe
# ╠═0cd6920f-f5bb-43e2-8d0d-d2459f0a59fb
# ╠═c45dc66f-a915-4af3-a699-56c48578f125
# ╟─73deec5d-e545-4a23-b94d-39556b9d4c0d
# ╟─f41b833c-ab02-484c-ad2b-5378e9839cb3
# ╠═76e18cdb-c877-4ce5-9b0e-8db4cf1a7576
# ╠═8bda433a-74a1-46c9-a508-3e9eac8f8aa4
# ╠═5d69ca2e-c1b3-4e03-b815-cbf1d0950122
# ╟─4ab2d219-d9be-4a85-891c-0012b9d02140
# ╠═84a76d10-d1a7-11ea-0faa-63d503a8b3d0
# ╠═8901ed90-d1a7-11ea-0661-61aa58164d59
# ╠═8d97542e-d1a7-11ea-2033-e9bb17478044
# ╠═62365aac-794c-49b0-b0aa-18abd7fc463c
# ╠═31ce9890-d1aa-11ea-28e4-8f569c96ff13
# ╠═fc8934b0-d1a9-11ea-1487-29fd1f796054
# ╠═a5249682-d1ac-11ea-06af-dbd9d7005a89
# ╠═78435f10-d1ad-11ea-206d-934aac86dcc5
# ╠═5b4f6a20-d1ad-11ea-2d06-f940d72b786e
# ╠═46771500-d1b0-11ea-2e2c-e96578a1da1f
# ╠═2555a300-d1b0-11ea-15e2-cb380e7aeb14
# ╟─d393472d-afe7-4448-a45d-6e260550e22a
# ╟─12e5b169-858b-4b8c-b5a9-6a8c448b33db
# ╟─fa35922a-9da1-46e5-a361-336d49ba098c
# ╠═19452352-d1a2-11ea-3d0a-17511c2bacae
# ╠═33b72a6a-8803-49b8-820f-61af5e0bd1b7
# ╟─49f8ddf6-0d85-4365-a59f-3d1f689f2c90
# ╠═a352958f-34ff-4c7f-b65c-cd33d09072db
# ╠═4d13af19-346f-4f4c-ae22-d5583edb6bb5
