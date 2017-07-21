# My Blog/Portfolio App

## Questions:
  1. What are we building?
    - personal site
    - Blog
    - examples
    - contact

  2. Who are we building it for?
    - ourselves
    - the community - sharing what we learn is a great way to learn for ourselves & teach others in the process.  It also shows potential employers we know what we are talking about.

  3. What features?
    - Posts:  
      - create/edit/destroy
      - markdown
      - syntax highlighting
      - comments (via Disqus)

    - Projects:
      - create/edit/destroy

    - Contact:
      - contact form
      - sendgrid (email)

    - Users:
      - devise gem

## User Stories:
  (As a ______________, I want to be able to ______________ so ______________.)

  - As a user, I want to be able to create posts so I can share what I learn on my blog.
  - As a user, I want to be able to edit and destroy posts so I can manage my Blog
  - As a user, I want to be bale to write in markdown so it's easy to write and format posts
  - As a user, I want to be able to highlight various syntax of code blocks
  - As a user, I want to be able to show visitors and potential employers example of my work, or stuff I've built.
  - As a user, I want visitors to be able to contact me through a form on my site.
  - As a user, I want visitors to be able to leave comments on my posts.

## Modeling the data:

  - Post
    - title: string
    - content: text

  - Project
    - title: string
    - description: text
    - link: string

  - User
    - devise gem
