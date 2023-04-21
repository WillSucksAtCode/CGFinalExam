# William Heath - Intermediate Computer Graphics Final Exam

Student Number: 100829482

Bloom: Bloom is achieved by blurring the view of the camera, brightening that and then adding it to the original view, and that can be achieved with the blend mode One. I have added the ability to toggle bloom using a simple bool check.
![image](https://user-images.githubusercontent.com/92412422/233704901-8ea076e7-aab0-4b9a-935d-1090943006ea.png)
![image](https://user-images.githubusercontent.com/92412422/233704978-6b7c8423-2344-4ecb-b838-4e74f420cd47.png)

Scrolling: For the brick wall, the standard scrolling shader covered in class was used.
For the water, I combined the displacement shader and the scrolling shader to give of the feeling of movement within the water. The standard displacement shader works by displacing the vectors of the object in accordance to whatever wave the programmer is using over time at an intensity set by the programmer.
![image](https://user-images.githubusercontent.com/92412422/233705914-fc08d2b6-6341-47cf-89e2-52dfee2bb4d6.png)

In a standard scrolling shader, the textures UV's are displaced over time by the ScrollX and ScrollY variables to make the texture scroll along the surface of the object. This is done in the surf function.
![image](https://user-images.githubusercontent.com/92412422/233706637-ca06588c-a653-488d-801e-aa20ba8b2612.png)

For this shader, I modified the code in the displacement shader's frag function to have the UV's be affected by the ScrollX and ScrollY variables I added.
![image](https://user-images.githubusercontent.com/92412422/233707045-fa686732-fd28-4255-a697-532b995038e7.png)
