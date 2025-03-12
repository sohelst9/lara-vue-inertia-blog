<script setup>
import { usePage } from '@inertiajs/vue3';

const props = defineProps({
  blog: {
    type: Object,
    required: true
  },
  recent_post_related: {
    type: Array,
    required: true
  },
});

console.log("Tags Data:", props.blog.data.tags);
</script>

<template>

  <Head>
    <title> | Blog - {{ blog.data.title }}</title>
    <meta head-key="title" name="title" :content="blog.data.meta_title">
    <meta head-key="description" name="description" :content="blog.data.meta_description">
    <meta head-key="keywords" name="keywords" :content="blog.data.meta_keywords">
  </Head>

  <div>
    <div class="page-title">
      <div class="container">
        <h1>Single Post</h1>
        <nav class="breadcrumbs">
          <ol>
            <li>
              <Link href="/">Home</Link>
            </li>
            <li class="current">Single Post</li>
          </ol>
        </nav>
      </div>
    </div>
  </div>

  <div class="container">
    <div class="row">
      <div class="col-lg-8">
        <!-- Blog Details Section -->
        <section id="blog-details" class="blog-details section">
          <article class="article">
            <!-- Featured Image -->
            <div class="post-img">
              <img :src="blog.data.image" :alt="blog.data.title" class="img-fluid">
            </div>

            <!-- Post Header -->
            <div class="post-header">
              <h2 class="title">{{ blog.data.title }}</h2>

              <div class="meta-top">
                <ul>
                  <li class="d-flex align-items-center"><i class="bi bi-person"></i> <a>{{ blog.data.author }}</a></li>
                  <li class="d-flex align-items-center"><i class="bi bi-clock"></i> <a><time datetime="2020-01-01">{{
                    blog.data.created_at }}</time></a></li>
                  <li class="d-flex align-items-center"><i class="bi bi-folder"></i>
                    <Link :href="`/category/blogs/${blog.data.category_slug}`">{{ blog.data.category }}</Link>
                  </li>
                </ul>
              </div>
            </div>

            <!-- Post Content -->
            <div class="content_blog" v-if="blog.data.description">
              <p>{{ blog.data.description }}</p>
            </div>
            <div class="content empty-content" v-else>
              <p class="no-content-message">No content available for this post.</p>
            </div>

            <!-- Tags -->
            <div class="post-tags" v-if="blog.data.tags && blog.data.tags.length > 0">
              <i class="bi bi-tags"></i>
              <span v-for="tag in blog.data.tags" :key="tag.id" class="tag">
                {{ tag.name }}
              </span>
            </div>
          </article>
        </section>
      </div>

      <div class="col-lg-4">
        <div class="sidebars">
          <!-- Blog Author Widget -->
          <div class="widget-item blog-author-widget">
            <h3 class="widget-title">About Author</h3>

            <div class="author-info">
              <div class="author-header">
                <img :src="blog.data.author_image" class="rounded-circle" alt="Author image">
                <div class="author-details">
                  <h4>{{ blog.data.author }}</h4>
                  <div class="social-links">
                    <a href="https://x.com/#" target="_blank"><i class="bi bi-twitter-x"></i></a>
                    <a href="https://facebook.com/#" target="_blank"><i class="bi bi-facebook"></i></a>
                    <a href="https://instagram.com/#" target="_blank"><i class="bi bi-instagram"></i></a>
                    <a href="https://instagram.com/#" target="_blank"><i class="bi bi-linkedin"></i></a>
                  </div>
                </div>
              </div>

              <p class="author-bio">
                I'm Admin, a Web & Game Developer specializing in Laravel, Vue.js, and Construct 3. With 2+ years of
                experience, I build efficient web applications, interactive games, and scalable solutions. Stay tuned
                for more insights! 🚀
              </p>
            </div>
          </div>

          <!-- Search Widget -->
          <!-- <div class="widget-item search-widget">
            <h3 class="widget-title">Search</h3>
            <form action="">
              <input type="text" placeholder="Search posts...">
              <button type="submit" title="Search"><i class="bi bi-search"></i></button>
            </form>
          </div> -->

          <!-- Recent Posts Widget -->
          <div class="widget-item recent-posts-widget">
            <h3 class="widget-title">Recent Posts</h3>

            <div class="post-list">
              <div class="post-item" v-for="recent_blog in recent_post_related" :key="recent_blog.id">
                <img :src="recent_blog.image" :alt="recent_blog.title" class="post-thumbnail">
                <div class="post-info">
                  <h4>
                    <Link :href="`/blog/${recent_blog.slug}`">{{ recent_blog.title }}</Link>
                  </h4>
                  <time datetime="2020-01-01">{{ recent_blog.created_at }}</time>
                </div>
              </div>
            </div>
          </div>

          <!-- Tags Widget -->
          <div class="widget-item tags-widget" v-if="blog.data.tags && blog.data.tags.length > 0">
            <h3 class="widget-title">Tags</h3>
            <ul>
              <li v-for="tag in blog.data.tags" :key="tag.id">
                <a>{{ tag.name }}</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped>
/* Global Styles */
.container {
  max-width: 1200px;
  margin: 0 auto;
  padding: 0 15px;
}

.row {
  display: flex;
  flex-wrap: wrap;
  margin: 0 -15px;
}

.col-lg-8 {
  width: 66.666667%;
  padding: 0 15px;
  box-sizing: border-box;
}

.col-lg-4 {
  width: 33.333333%;
  padding: 0 15px;
  box-sizing: border-box;
}

/* Page Title */
.page-title {
  padding: 30px 0;
  background-color: #f8f9fa;
  margin-bottom: 30px;
}

.page-title h1 {
  font-size: 32px;
  margin-bottom: 10px;
  color: #2c4964;
}

.breadcrumbs ol {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  padding: 0;
  margin: 0;
}

.breadcrumbs ol li {
  display: inline-block;
  position: relative;
  padding-right: 15px;
  margin-right: 10px;
}

.breadcrumbs ol li:not(:last-child)::after {
  content: '/';
  position: absolute;
  right: 0;
  color: #6c757d;
}

.breadcrumbs a {
  color: #4154f1;
  text-decoration: none;
}

.breadcrumbs .current {
  color: #6c757d;
}

/* Main Blog Styles */
.blog-details {
  padding: 0 0 60px 0;
}

.article {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  overflow: hidden;
  margin-bottom: 30px;
}

/* Post Image */
.post-img {
  width: 100%;
  overflow: hidden;
}

.post-img img {
  width: 100%;
  max-height: 500px;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.post-img img:hover {
  transform: scale(1.03);
}

/* Post Header */
.post-header {
  padding: 25px 30px 0;
}

.title {
  font-size: 28px;
  font-weight: 700;
  color: #2c4964;
  margin-bottom: 20px;
  line-height: 1.3;
}

.meta-top {
  margin-bottom: 20px;
}

.meta-top ul {
  display: flex;
  flex-wrap: wrap;
  list-style: none;
  padding: 0;
  margin: 0;
  gap: 20px;
}

.meta-top li {
  display: flex;
  align-items: center;
  font-size: 14px;
  color: #6c757d;
}

.meta-top i {
  color: #4154f1;
  margin-right: 8px;
  font-size: 16px;
}

.meta-top a {
  color: #777;
  transition: 0.3s;
  cursor: pointer;
}

.meta-top a:hover {
  color: #4154f1;
}

/* Content Styling */
.content_blog {
  padding: 0 30px 30px;
  line-height: 1.8;
  color: #444;
  text-align: left;
}

.content_blog p {
  margin-bottom: 20px;
}

.empty-content {
  min-height: auto;
  padding-bottom: 20px;
}

.no-content-message {
  font-style: italic;
  color: #6c757d;
}

/* Post Tags */
.post-tags {
  padding: 0 30px 30px;
  display: flex;
  flex-wrap: wrap;
  align-items: center;
  gap: 8px;
}

.post-tags i {
  color: #4154f1;
}

.tag {
  display: inline-block;
  padding: 4px 10px;
  background: #f6f9ff;
  color: #4154f1;
  font-size: 13px;
  border-radius: 4px;
}

/* Sidebar Styles */
.sidebars {
  margin-bottom: 30px;
}

.widget-item {
  background: #fff;
  border-radius: 8px;
  box-shadow: 0 4px 16px rgba(0, 0, 0, 0.1);
  padding: 25px;
  margin-bottom: 30px;
}

.widget-title {
  font-size: 18px;
  font-weight: 700;
  padding-bottom: 10px;
  border-bottom: 1px solid #e2e8f0;
  margin-bottom: 20px;
  color: #2c4964;
}

/* Author Widget */
.author-info {
  display: flex;
  flex-direction: column;
}

.author-header {
  display: flex;
  align-items: center;
  margin-bottom: 15px;
}

.author-info img {
  width: 70px;
  height: 70px;
  object-fit: cover;
  border: 3px solid #f6f9ff;
  margin-right: 15px;
}

.author-details h4 {
  font-size: 18px;
  margin: 0 0 5px;
  color: #2c4964;
}

.social-links {
  display: flex;
  gap: 10px;
}

.social-links a {
  color: #6c757d;
  font-size: 16px;
  transition: 0.3s;
}

.social-links a:hover {
  color: #4154f1;
}

.author-bio {
  margin: 0;
  line-height: 1.6;
  color: #444;
  font-size: 14px;
}

/* Search Widget */
.search-widget form {
  position: relative;
}

.search-widget input {
  width: 100%;
  padding: 12px 15px;
  border: 1px solid #e2e8f0;
  border-radius: 4px;
  font-size: 14px;
  transition: border-color 0.3s;
}

.search-widget input:focus {
  outline: none;
  border-color: #4154f1;
}

.search-widget button {
  position: absolute;
  right: 0;
  top: 0;
  height: 100%;
  width: 45px;
  border: none;
  background: #4154f1;
  color: #fff;
  border-radius: 0 4px 4px 0;
  cursor: pointer;
  transition: 0.3s;
}

.search-widget button:hover {
  background: #3a46cc;
}

/* Recent Posts Widget */
.post-list {
  display: flex;
  flex-direction: column;
  gap: 15px;
}

.post-item {
  display: flex;
  align-items: flex-start;
  padding-bottom: 15px;
  border-bottom: 1px solid #e2e8f0;
}

.post-item:last-child {
  border-bottom: none;
  padding-bottom: 0;
}

.post-thumbnail {
  width: 80px;
  height: 60px;
  object-fit: cover;
  border-radius: 4px;
  margin-right: 15px;
  transition: transform 0.3s;
}

.post-thumbnail:hover {
  transform: scale(1.05);
}

.post-info h4 {
  font-size: 15px;
  margin: 0 0 5px;
  line-height: 1.4;
}

.post-info h4 a {
  color: #2c4964;
  text-decoration: none;
  transition: 0.3s;
}

.post-info h4 a:hover {
  color: #4154f1;
}

.post-info time {
  font-size: 13px;
  color: #6c757d;
}

/* Tags Widget */
.tags-widget ul {
  display: flex;
  flex-wrap: wrap;
  gap: 10px;
  list-style: none;
  padding: 0;
  margin: 0;
}

.tags-widget li {
  margin: 0;
}

.tags-widget a {
  display: inline-block;
  padding: 6px 12px;
  background: #f6f9ff;
  color: #4154f1;
  font-size: 14px;
  border-radius: 4px;
  text-decoration: none;
  transition: 0.3s;
}

.tags-widget a:hover {
  background: #4154f1;
  color: #fff;
}

/* Responsive Design */
@media (max-width: 1199px) {

  .col-lg-8,
  .col-lg-4 {
    width: 100%;
  }

  .col-lg-4 {
    margin-top: 30px;
  }
}

@media (max-width: 768px) {
  .title {
    font-size: 24px;
  }

  .meta-top ul {
    flex-direction: column;
    gap: 10px;
  }

  .post-header,
  .content_blog {
    padding-left: 20px;
    padding-right: 20px;
  }

  .post-tags {
    padding-left: 20px;
    padding-right: 20px;
  }

  .author-header {
    flex-direction: column;
    text-align: center;
  }

  .author-info img {
    margin-right: 0;
    margin-bottom: 15px;
  }

  .social-links {
    justify-content: center;
  }
}

@media (max-width: 576px) {
  .page-title h1 {
    font-size: 26px;
  }

  .title {
    font-size: 22px;
  }

  .widget-item {
    padding: 20px;
  }

  .post-item {
    flex-direction: column;
  }

  .post-thumbnail {
    width: 100%;
    height: 150px;
    margin-right: 0;
    margin-bottom: 10px;
  }
}
</style>