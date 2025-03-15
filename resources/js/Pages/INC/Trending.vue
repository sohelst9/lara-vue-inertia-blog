<script setup>

const props = defineProps({
    trendingPost: {
        type: Object,
        required: true
    },
    featuredPosts: {
        type: Array,
        required: true
    }, 
    trendingrightPosts: {
        type: Array,
        required: true
    }
})

console.log('Trending component featuredPosts:', props.featuredPosts);

</script>

<template>
    <section class="trending-category section py-5">
        <div class="container">
            <div class="row g-5">
                <!-- Featured Post -->
                <div class="col-lg-4" v-if="trendingPost">
                    <div class="post-entry-lg bg-white rounded-3 shadow-sm hover-effect">
                        <Link :href="`/blog/${trendingPost.data.slug}`" class="d-block overflow-hidden rounded-top-3">
                            <img :src="trendingPost.data.image" alt="Featured post"
                                class="img-fluid post-img">
                        </Link>
                        <div class="p-4">
                            <div class="post-meta mb-2">
                                <span class="category-badge"><Link :href="`/category/blogs/${trendingPost.data.category_slug}`">{{ trendingPost.data.category }}</Link></span>
                                <span class="mx-1 text-muted">•</span>
                                <span class="text-muted small">{{ trendingPost.data.created_at }}</span>
                            </div>
                            <h2 class="post-title mb-3">
                                <Link :href="`/blog/${trendingPost.data.slug}`" class="text-decoration-none text-dark">
                                    {{ trendingPost.data.title }}
                                </Link>
                            </h2>
                            <p class="post-excerpt text-muted mb-4">
                                {{ trendingPost.data.sub_title }}
                            </p>
                            <div class="author d-flex align-items-center">
                                <div class="author-img me-3">
                                    <img :src="trendingPost.data.author_image" alt="author" class="rounded-circle">
                                </div>
                                <div class="author-name">
                                    <h6 class="m-0 fw-bold">{{ trendingPost.data.author }}</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Grid Posts -->
                <div class="col-lg-8">
                    <div class="row g-4">

                        <div class="col-md-8" v-if="featuredPosts">
                            <div class="row">
                                <div class="col-lg-6" v-for="featurdPost in featuredPosts" :key="featurdPost.id">
                                    <div class="grid-posts">
                                        <div class="post-entry mb-4 bg-white rounded-3 shadow-sm hover-effect">
                                            <Link :href="`/blog/${featurdPost.slug}`" class="d-block overflow-hidden rounded-top-3">
                                                <img :src="featurdPost.image"
                                                    alt="Post image" class="img-fluid post-img">
                                            </Link>
                                            <div class="p-3">
                                                <div class="post-meta mb-2">
                                                    <span class="category-badge sport"><Link :href="`/category/blogs/${featurdPost.category_slug}`">{{ featurdPost.category }}</Link></span>
                                                    <span class="mx-1 text-muted">•</span>
                                                    <span class="text-muted small">{{ featurdPost.created_at }}</span>
                                                </div>
                                                <h3 class="post-title small-title">
                                                    <Link :href="`/blog/${featurdPost.slug}`" class="text-decoration-none text-dark">
                                                        {{ featurdPost.short_title }}
                                                    </Link>
                                                </h3>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                         
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="col-lg-12">
                                <div class="trending bg-white rounded-3 shadow-sm p-4">
                                    <h3 class="section-title mb-4">Trending</h3>
                                    <div class="trending-posts">

                                        <div class="trending-post-item mb-4 pb-4 border-bottom" v-for="(trendingrightPost, index) in trendingrightPosts" :key="trendingrightPost.id">
                                            <Link :href="`blog/${trendingrightPost.slug}`" class="text-decoration-none">
                                                <div class="d-flex">
                                                    <span class="number me-3">{{ index+1 }}</span>
                                                    <div>
                                                        <h4 class="trending-title mb-2">
                                                            {{ trendingrightPost.short_title }}
                                                        </h4>
                                                        <span class="author text-muted small">{{ trendingrightPost.author }}</span>
                                                    </div>
                                                </div>
                                            </Link>
                                        </div>

                                     

                                    </div>
                                </div>
                            </div>
                        </div>




                    </div>
                </div>
            </div>
        </div>
    </section>
</template>

<style scoped>
.trending-category {
    background-color: #f8f9fa;
}

.hover-effect {
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.hover-effect:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1) !important;
}

.post-img {
    transition: transform 0.3s ease;
}

.post-entry:hover .post-img {
    transform: scale(1.05);
}

.category-badge {
    background-color: #e9ecef;
    color: #495057;
    padding: 0.25rem 0.75rem;
    border-radius: 50px;
    font-size: 0.8rem;
    font-weight: 500;
}

.category-badge.sport {
    background-color: #ffd6d6;
    color: #dc3545;
    font-size: 10px;
}

.category-badge.business {
    background-color: #d4edda;
    color: #198754;
}

.post-title {
    font-size: 1.5rem;
    font-weight: 700;
    line-height: 1.3;
}

.post-title.small-title {
    font-size: 1.1rem;
}

.post-title a:hover {
    color: #0d6efd !important;
}

.author-img img {
    width: 40px;
    height: 40px;
    object-fit: cover;
}

.trending {
    background: linear-gradient(to bottom right, #ffffff, #f8f9fa);
}

.section-title {
    font-size: 1.5rem;
    font-weight: 700;
    color: #212529;
    position: relative;
    padding-bottom: 0.5rem;
}

.section-title::after {
    content: '';
    position: absolute;
    left: 0;
    bottom: 0;
    width: 50px;
    height: 3px;
    background-color: #0d6efd;
}

.trending-post-item .number {
    font-size: 1.5rem;
    font-weight: 700;
    color: #0d6efd;
    opacity: 0.5;
}

.trending-title {
    font-size: 0.95rem;
    font-weight: 600;
    color: #212529;
    margin: 0;
    line-height: 1.4;
}

.trending-post-item:hover .trending-title {
    color: #0d6efd;
}

@media (max-width: 991.98px) {
    .grid-posts {
        margin-bottom: 2rem;
    }

    .trending {
        margin-top: 2rem;
    }
}
</style>