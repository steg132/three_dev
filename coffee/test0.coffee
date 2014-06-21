# test0.coffee

# Stat by creating the scene and initing the renderer and Camera
scene = new THREE.Scene()
camera = new THREE.PerspectiveCamera 75, window.innerWidth / window.innerHeight, 0.1, 1000 
renderer = new THREE.WebGLRenderer()

renderer.setSize window.innerWidth, window.innerHeight 

document.body.appendChild renderer.domElement 

# Add some geometry
geometry = new THREE.BoxGeometry 1, 1, 1
material = new THREE.MeshBasicMaterial {color: 0x00FF00}
cube = new THREE.Mesh geometry, material

scene.add cube

# set camera position to see the new cube
camera.position.z = 5

# Define Render Function
render = ()->
	requestAnimationFrame render
	
	# Rotate the cube
	cube.rotation.x += 0.01;
	cube.rotation.y += 0.01;
	
	# render the scene
	renderer.render scene, camera

render()