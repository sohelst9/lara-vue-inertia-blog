<script setup>
import { router } from '@inertiajs/vue3';

const props = defineProps({
  posts: {
    type: Object,
    required: true
  },
  recent_posts: {
    type: Object,
    required: true
  },
  tags : {
    type: Array,
    required: true
  }
})

const changeblogPage = (page) => {
  router.visit(page)
  console.log('page', page)
}
console.log('posts', props.posts)
</script>

<template>

  <Head>
    <title> | Blogs</title>
    <meta head-key="title" name="title" content="Blogs page meta title">
    <meta head-key="description" name="description" content="Blogs page meta description">
  </Head>
  <div>
    <div class="page-title">
      <div class="container">
        <h1>All blogs</h1>
        <nav class="breadcrumbs">
          <ol>
            <li>
              <Link href="/">Home</Link>
            </li>
            <li class="current">Blogs</li>
          </ol>
        </nav>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">

      <div class="col-lg-8">

        <!-- Blog Posts Section -->
        <section id="blog-posts" class="blog-posts section no-top-padding" v-if="posts.data.length > 0">

          <div class="container">
            <div class="row gy-4">

              <div class="col-lg-6" v-for="post in posts.data" :key="post.id">
                <article class="position-relative h-100">

                  <div class="post-img position-relative overflow-hidden">
                    <img :src="post.image" class="img-fluid" :alt="post.title">
                    <span class="post-date">{{ post.created_at }}</span>
                  </div>

                  <div class="post-content d-flex flex-column">

                    <h3 class="post-title">
                      <Link :href="`/blog/${post.slug}`">{{ post.title }}</Link>
                    </h3>

                    <div class="meta d-flex align-items-center">
                      <div class="d-flex align-items-center">
                        <i class="bi bi-person"></i> <span class="ps-2">{{ post.author }}</span>
                      </div>
                      <span class="px-3 text-black-50">/</span>
                      <div class="d-flex align-items-center">
                        <i class="bi bi-folder2"></i> <span class="ps-2"><Link :href="`/category/blogs/${post.category_slug}`">{{ post.category }}</Link></span>
                      </div>
                    </div>

                    <p>
                      {{ post.sub_title }}
                    </p>

                    <hr>

                    <Link :href="`/blog/${post.slug}`" class="readmore"><span>Read More</span><i class="bi bi-arrow-right"></i></Link>

                  </div>

                </article>
              </div>
            

            </div>
          </div>

        </section><!-- /Blog Posts Section -->
        <h3 v-else class="not_found_post"> No posts found</h3>

        <!-- Blog Pagination Section -->
        <section id="blog-pagination" class="blog-pagination section" v-if="posts.meta?.last_page > 1">

          <div class="container">
            <div class="d-flex justify-content-center">
              <ul>

                <li :class="{ 'disabled' : !posts.links?.prev }">
                  <a href="#" v-if="posts.links?.prev" @click.prevent="changeblogPage(posts.links.prev)"><i class="bi bi-chevron-left"></i></a>
                  <a  v-else><i class="bi bi-chevron-left"></i></a>
                </li>

                <li>
                  <a class="active">{{ posts.meta.current_page }}</a>
                </li>

                <li :class="{ 'disabled' : !posts.links?.next}">
                  <a href="#" v-if="posts.links?.next" @click.prevent="changeblogPage(posts.links.next)"><i class="bi bi-chevron-right"></i></a>
                  <a v-else><i class="bi bi-chevron-right"></i></a>
                </li>
              </ul>
            </div>
          </div>

        </section>
        <!-- /Blog Pagination Section -->

      </div>

      <div class="col-lg-4 blogs_sidebar">

        <div class="widgets-container no-top-padding">
          
          <!-- Recent Posts Widget -->
          <div class="recent-posts-widget widget-item">

            <h3 class="widget-title">Recent Posts</h3>

            <div class="post-item" v-for="recent_post in recent_posts.data" :key="recent_post.id">
              <img :src="recent_post.image" :alt="recent_post.title" class="flex-shrink-0">
              <div>
                <h4><Link :href="`/blog/${recent_post.slug}`">{{ recent_post.title }}</Link></h4>
                <time datetime="2020-01-01">{{ recent_post.created_at }}</time>
              </div>
            </div>
       



          </div><!--/Recent Posts Widget -->

          <!-- Tags Widget -->
          <div class="tags-widget widget-item">

            <h3 class="widget-title">Tags</h3>
            <ul>
              <li v-for="tag in tags" :key="tag.id"><a>{{ tag.name }}</a></li>
            </ul>

          </div><!--/Tags Widget -->

        </div>

      </div>

    </div>
  </div>
</template>


<style scoped>
.not_found_post {
    text-align: center;
    margin-top: 50px;
    color: #dc3545; /* Bootstrap danger color */
    font-size: 1.5rem;
    font-weight: bold;
    padding: 20px;
    border: 2px dashed #dc3545;
    border-radius: 10px;
    background-color: #f8d7da;
}

/* Remove top padding from both sections to align properly */
.no-top-padding {
    padding-top: 0 !important;
}

/* Blog Posts Section */
.blog-posts {
  padding: 4rem 0;
}

.blog-posts article {
  background: #ffffff;
  border: 1px solid #e5e7eb;
  border-radius: 1rem;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
  transition: all 0.3s ease;
  margin-bottom: 2rem;
  overflow: hidden;
}

.blog-posts article:hover {
  transform: translateY(-5px);
  box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.08);
}

.post-img {
  position: relative;
  overflow: hidden;
  aspect-ratio: 16/9;
}

.post-img::after {
  content: '';
  position: absolute;
  bottom: 0;
  right: 0;
  width: 40%;
  height: 50%;
  background: linear-gradient(135deg, transparent 0%, rgba(0, 0, 0, 0.1) 100%);
  pointer-events: none;
}

.post-img img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.blog-posts article:hover .post-img img {
  transform: scale(1.05);
}

/* Refined Date Position */
.post-date {
  position: absolute;
  right: 0;
  bottom: 0;
  background: linear-gradient(135deg, #1c269961 0%, #2f3032 100%);
  color: white;
  padding: 0.75rem 1.5rem;
  font-size: 0.875rem;
  font-weight: 500;
  clip-path: polygon(10% 0, 100% 0, 100% 100%, 0% 100%);
  box-shadow: 0 4px 15px rgba(37, 99, 235, 0.2);
  min-width: 120px;
  text-align: center;
}

.post-content {
  padding: 1.75rem;
  position: relative;
}

.post-title {
  font-size: 1.25rem;
  margin: 0 0 1rem;
  color: #1e293b;
  font-weight: 600;
  line-height: 1.4;
}

.post-title a {
  color: #1e293b;
  text-decoration: none;
  transition: color 0.3s ease;
}

.post-title a:hover {
  color: #3b82f6;
}

.meta {
  font-size: 0.875rem;
  color: #64748b;
  margin-bottom: 1rem;
  display: flex;
  align-items: center;
}

.meta i {
  color: #3b82f6;
}

.meta .ps-2 {
  padding-left: 0.5rem;
}

.meta .px-3 {
  padding: 0 0.75rem;
}

/* Read More button styling */
.readmore {
  display: inline-flex;
  align-items: center;
  color: #3b82f6;
  font-weight: 500;
  text-decoration: none;
  margin-top: auto;
  transition: all 0.3s ease;
}

.readmore span {
  margin-right: 0.5rem;
}

.readmore i {
  transition: transform 0.3s ease;
}

.readmore:hover {
  color: #1d4ed8;
}

.readmore:hover i {
  transform: translateX(5px);
}

/* Pagination */
.blog-pagination {
  padding: 2rem 0;
}

.blog-pagination ul {
  display: flex;
  justify-content: center;
  gap: 0.5rem;
  list-style: none;
  padding: 0;
  margin: 0;
}

.blog-pagination li a {
  display: flex;
  align-items: center;
  justify-content: center;
  width: 2.5rem;
  height: 2.5rem;
  border-radius: 0.75rem;
  border: 1px solid #e5e7eb;
  color: #1e293b;
  text-decoration: none;
  transition: all 0.3s ease;
  font-weight: 500;
}

.blog-pagination li a.active,
.blog-pagination li a:hover {
  background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
  color: white;
  border-color: transparent;
  box-shadow: 0 4px 6px rgba(37, 99, 235, 0.2);
}

/* blogs_sidebar */
.blogs_sidebar {
  padding-left: 2rem;
}

.widget-item {
  background: #ffffff;
  padding: 1.75rem;
  border-radius: 1rem;
  box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.05);
  border: 1px solid #e5e7eb;
  margin-bottom: 2rem;
}

.widget-title {
  font-size: 1.25rem;
  color: #1e293b;
  margin-bottom: 1.5rem;
  padding-bottom: 0.75rem;
  border-bottom: 2px solid #e5e7eb;
  font-weight: 600;
}

/* Enhanced Search Widget */
.search-widget form {
  display: flex;
  gap: 0.75rem;
  background: #f8fafc;
  padding: 0.5rem;
  border-radius: 1rem;
  border: 1px solid #e5e7eb;
}

.search-widget input {
  flex: 1;
  padding: 0.75rem 1rem;
  border: none;
  background: transparent;
  color: #1e293b;
  font-size: 0.95rem;
  outline: none;
}

.search-widget input::placeholder {
  color: #94a3b8;
}

.search-widget button {
  background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
  color: white;
  border: none;
  padding: 0.75rem;
  border-radius: 0.75rem;
  cursor: pointer;
  transition: all 0.3s ease;
  display: flex;
  align-items: center;
  justify-content: center;
  width: 3rem;
}

.search-widget button:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 6px rgba(37, 99, 235, 0.2);
}

/* Recent Posts Widget */
.post-item {
  display: flex;
  gap: 1rem;
  margin-bottom: 1rem;
  padding-bottom: 1rem;
  border-bottom: 1px solid #e5e7eb;
}

.post-item:last-child {
  margin-bottom: 0;
  padding-bottom: 0;
  border-bottom: none;
}

.post-item img {
  width: 80px;
  height: 60px;
  object-fit: cover;
  border-radius: 0.5rem;
}

.post-item h4 {
  font-size: 0.875rem;
  margin: 0 0 0.5rem;
  color: #1e293b;
  font-weight: 500;
  line-height: 1.4;
}

.post-item h4 a {
  color: inherit;
  text-decoration: none;
}

.post-item h4 a:hover {
  color: #3b82f6;
}

.post-item time {
  font-size: 0.75rem;
  color: #64748b;
}

/* Tags Widget */
.tags-widget ul {
  display: flex;
  flex-wrap: wrap;
  gap: 0.75rem;
  list-style: none;
  padding: 0;
  margin: 0;
}

.tags-widget a {
  display: inline-block;
  padding: 0.5rem 1rem;
  background: #f1f5f9;
  color: #475569;
  text-decoration: none;
  border-radius: 2rem;
  font-size: 0.875rem;
  transition: all 0.3s ease;
  font-weight: 500;
}

.tags-widget a:hover {
  background: linear-gradient(135deg, #3b82f6 0%, #2563eb 100%);
  color: white;
  transform: translateY(-2px);
  box-shadow: 0 4px 6px rgba(37, 99, 235, 0.2);
}

/* Responsive Design */
@media (max-width: 1200px) {
  .container {
    padding: 0 1.5rem;
  }
}

@media (max-width: 991px) {
  .blogs_sidebar {
    padding-left: 0;
    margin-top: 3rem;
  }
}

@media (max-width: 768px) {
  .blog-posts {
    padding: 2rem 0;
  }

  .post-img {
    aspect-ratio: 3/2;
  }

  .post-date {
    padding: 0.6rem 1.25rem;
    font-size: 0.8125rem;
    min-width: 100px;
  }

  .post-content {
    padding: 1.5rem 1.25rem;
  }

  .post-title {
    font-size: 1.125rem;
  }

  .blog-pagination li a {
    width: 2.25rem;
    height: 2.25rem;
  }

  .widget-item {
    padding: 1.25rem;
  }
}

@media (max-width: 576px) {
  .container {
    padding: 0 1rem;
  }

  .post-img {
    aspect-ratio: 4/3;
  }

  .post-date {
    padding: 0.5rem 1rem;
    font-size: 0.75rem;
    min-width: 90px;
  }

  .post-content {
    padding: 1.25rem 1rem;
  }

  .meta {
    flex-wrap: wrap;
    gap: 0.5rem;
  }

  .search-widget form {
    padding: 0.375rem;
  }

  .search-widget button {
    width: 2.5rem;
  }

  .tags-widget a {
    padding: 0.375rem 0.75rem;
  }
}

@media (max-width: 375px) {
  .post-img {
    aspect-ratio: 1/1;
  }

  .post-date {
    padding: 0.4rem 0.875rem;
    font-size: 0.75rem;
    min-width: 85px;
  }

  .post-content {
    padding: 1.25rem 0.875rem;
  }

  .widget-item {
    padding: 1rem;
  }
}
</style>