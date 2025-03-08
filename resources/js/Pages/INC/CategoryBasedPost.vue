<script setup>
const props = defineProps({
  categoryBasedPosts: {
    type: Array,
    required: true
  }
});

console.log('categoryBasedPosts', props.categoryBasedPosts);
</script>

<template>
  <section id="blog-category" class="blog-category section" v-for="category in categoryBasedPosts"
    :key="category.slug">
    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <div class="section-title-container d-flex align-items-center justify-content-between">
        <h2>{{ category.category }}</h2>
        <p><a href="categories.html">See All {{ category.category }}</a></p>
      </div>
    </div><!-- End Section Title -->

    <div class="container" data-aos="fade-up" data-aos-delay="100">

      <div class="row">
        <div class="col-md-12">
          <div class="row">
            <div class="col-lg-3" v-for="categoryPost in category.posts.data" :key="categoryPost.title">
              <div class="post-list border-bottom">
                <Link href="blog-details.html"><img :src="categoryPost.image" :alt="categoryPost.title"
                  class="img-fluid"></Link>
                <div class="post-meta"><span class="date">{{ category.category }}</span> <span class="mx-1">•</span>
                  <span>Jul 5th
                    '22</span></div>
                <h2 class="mb-2"><a href="blog-details.html">{{ categoryPost.title }}</a></h2>
                <span class="author mb-3 d-block">Jenny Wilson</span>
                <p class="mb-4 d-block">{{ categoryPost.sub_title }}</p>
              </div>
            </div>

          </div>
        </div>
      </div>

    </div>
  </section>

</template>

<style scoped>
/* Section Styles */
.section {
  padding: 20px 0;
  overflow: hidden;
}

/* Section Title Styles */
.section-title {
  margin-bottom: 30px;
}

.section-title h2 {
  font-size: 28px;
  font-weight: 600;
  margin-bottom: 0;
}

.section-title p a {
  color: #555555;
  text-decoration: none;
  font-size: 16px;
  transition: 0.3s;
}

.section-title p a:hover {
  color: #000;
}

/* Post List Styles */
.post-list {
  margin-bottom: 30px;
  padding-bottom: 30px;
  opacity: 0;
  transform: translateY(20px);
  transition: transform 0.4s ease, opacity 0.4s ease;
}

.post-list img {
  margin-bottom: 20px;
  border-radius: 8px;
  transition: transform 0.3s ease;
}

.post-list img:hover {
  transform: scale(1.05);
}

.post-meta {
  font-size: 14px;
  color: #666666;
  margin-bottom: 10px;
}

.post-meta .date {
  color: #007bff;
}

.post-list h2 {
  font-size: 20px;
  font-weight: 600;
}

.post-list h2 a {
  color: #1a1a1a;
  text-decoration: none;
  transition: 0.3s;
}

.post-list h2 a:hover {
  color: #007bff;
}

.post-list .author {
  font-size: 14px;
  color: #666666;
}

.post-list p {
  color: #555555;
  font-size: 15px;
  line-height: 1.7;
}

/* Animation on Scroll */
@keyframes fadeInUp {
  0% {
    opacity: 0;
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    transform: translateY(0);
  }
}

.post-list {
  animation: fadeInUp 0.5s ease forwards;
}
</style>
