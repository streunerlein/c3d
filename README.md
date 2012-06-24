c3d
====

A *.obj to CSS3 converter.

What does it do?
----------------

c3d can read object files (.obj) made by 3D programs (Cinema4D, 3dMax, Blender, ...) and display them in HTML/CSS3.

How?
----

The model properties in the object files are translated to CSS3 transforms. For every face on the 3D model, there's a corresponding HTML-element which can be used as every other HTML element in your DOM: put more HTML on it, define event handlers (onclick, onmouseover, ...)!

Once the model is loaded, you'll get access to a camera element, which allows you to rotate around the model, zoom in, zoom out, pan, etc.

So... Is it THAT cool?
----------------------

Yes, but... there are some limitations.

As CSS3 is not fully capable of every 3D goodie your 3D program might have, not everything can be displayed in the HTML representation.

Here are some things that already work:
 
 * Import models with an arbitrary number of faces
 * Display arbitrary HTML on every face
 * Have flat shading (basic lightning) for your object
 * Camera movements are smoothly animated
 * Pretty good performance

These things are coming soon, I already did them successfully but did not include into the library yet:

 * "Soft" point light, with gradients and a single specular
 * Move camera to a defined face automatically
   * This is a convencience feature, but as this lib is for websites it think an important one
 * Have beautifully rendered shadows and lightning on the faces as you see it in your 3D program
 * Ambient Occlusion
 * Rotate/Move 3D objects individually (not only the camera)

Things I didn't do yet and will be mid-term limitations of this library:
 
 * Faces with 3 or more than 4 vertices
 	* make sure the faces in your model have exactly 4 vertices
  	* Additionally, faces need to be parallelograms
  	* Practically, this means that you shouldn't change the vertices of your rectangular faces individually unless you know what you do
  	* This is mainly a limitation of HTML/CSS itself, as HTML elements are rectangular (no triangles)
  	  * There are ways to work around this and I will certainly try to do that.

Things that may be never possible:

 * "Perfect" shading as seen in the 3D programs
 * 3D program render settings like Stereocams, Motion blur, Depth of field, ...

How to use it?
--------------

I will publish tutorials and the expected workflow here.


That's it for now! Stay tuned, watch the repo.