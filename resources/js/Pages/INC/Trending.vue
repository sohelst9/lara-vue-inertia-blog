<script setup>

const props = defineProps({
    trendingPost: {
        type: Object,
        required: true
    }
})

</script>

<template>
    <section class="trending-category section py-5">
        <div class="container">
            <div class="row g-5">
                <!-- Featured Post -->
                <div class="col-lg-4">
                    <div class="post-entry-lg bg-white rounded-3 shadow-sm hover-effect">
                        <a href="blog-details.html" class="d-block overflow-hidden rounded-top-3">
                            <img :src="trendingPost.blogimage" alt="Featured post" class="img-fluid post-img">
                        </a>
                        <div class="p-4">
                            <div class="post-meta mb-2">
                                <span class="category-badge">Culture</span>
                                <span class="mx-1 text-muted">•</span>
                                <span class="text-muted small">Jul 5th '22</span>
                            </div>
                            <h2 class="post-title mb-3">
                                <a href="blog-details.html" class="text-decoration-none text-dark">
                                    11 Work From Home Part-Time Jobs You Can Do Now
                                </a>
                            </h2>
                            <p class="post-excerpt text-muted mb-4">
                                Lorem ipsum dolor sit, amet consectetur adipisicing elit. Vero temporibus repudiandae,
                                inventore pariatur numquam cumque possimus exercitationem?
                            </p>
                            <div class="author d-flex align-items-center">
                                <div class="author-img me-3">
                                    <img :src="trendingPost.personimage" alt="author" class="rounded-circle">
                                </div>
                                <div class="author-name">
                                    <h6 class="m-0 fw-bold">Cameron Williamson</h6>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Grid Posts -->
                <div class="col-lg-8">
                    <div class="row g-4">

                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-lg-6">
                                    <div class="grid-posts">
                                        <div class="post-entry mb-4 bg-white rounded-3 shadow-sm hover-effect">
                                            <a href="blog-details.html" class="d-block overflow-hidden rounded-top-3">
                                                <img :src="trendingPost.blogimage" alt="Post image"
                                                    class="img-fluid post-img">
                                            </a>
                                            <div class="p-3">
                                                <div class="post-meta mb-2">
                                                    <span class="category-badge sport">Sport</span>
                                                    <span class="mx-1 text-muted">•</span>
                                                    <span class="text-muted small">Jul 5th '22</span>
                                                </div>
                                                <h3 class="post-title small-title">
                                                    <a href="blog-details.html" class="text-decoration-none text-dark">
                                                        Let's Get Back to Work, New York
                                                    </a>
                                                </h3>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="grid-posts">
                                        <div class="post-entry mb-4 bg-white rounded-3 shadow-sm hover-effect">
                                            <a href="blog-details.html" class="d-block overflow-hidden rounded-top-3">
                                                <img :src="trendingPost.blogimage" alt="Post image"
                                                    class="img-fluid post-img">
                                            </a>
                                            <div class="p-3">
                                                <div class="post-meta mb-2">
                                                    <span class="category-badge business">Business</span>
                                                    <span class="mx-1 text-muted">•</span>
                                                    <span class="text-muted small">Jul 5th '22</span>
                                                </div>
                                                <h3 class="post-title small-title">
                                                    <a href="blog-details.html" class="text-decoration-none text-dark">
                                                        6 Easy Steps To Create Your Own Cute Merch
                                                    </a>
                                                </h3>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="grid-posts">
                                        <div class="post-entry mb-4 bg-white rounded-3 shadow-sm hover-effect">
                                            <a href="blog-details.html" class="d-block overflow-hidden rounded-top-3">
                                                <img :src="trendingPost.blogimage" alt="Post image"
                                                    class="img-fluid post-img">
                                            </a>
                                            <div class="p-3">
                                                <div class="post-meta mb-2">
                                                    <span class="category-badge business">Business</span>
                                                    <span class="mx-1 text-muted">•</span>
                                                    <span class="text-muted small">Jul 5th '22</span>
                                                </div>
                                                <h3 class="post-title small-title">
                                                    <a href="blog-details.html" class="text-decoration-none text-dark">
                                                        6 Easy Steps To Create Your Own Cute Merch
                                                    </a>
                                                </h3>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                                <div class="col-lg-6">
                                    <div class="grid-posts">
                                        <div class="post-entry mb-4 bg-white rounded-3 shadow-sm hover-effect">
                                            <a href="blog-details.html" class="d-block overflow-hidden rounded-top-3">
                                                <img :src="trendingPost.blogimage" alt="Post image"
                                                    class="img-fluid post-img">
                                            </a>
                                            <div class="p-3">
                                                <div class="post-meta mb-2">
                                                    <span class="category-badge business">Business</span>
                                                    <span class="mx-1 text-muted">•</span>
                                                    <span class="text-muted small">Jul 5th '22</span>
                                                </div>
                                                <h3 class="post-title small-title">
                                                    <a href="blog-details.html" class="text-decoration-none text-dark">
                                                        6 Easy Steps To Create Your Own Cute Merch
                                                    </a>
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

                                        <div class="trending-post-item mb-4 pb-4 border-bottom">
                                            <a href="blog-details.html" class="text-decoration-none">
                                                <div class="d-flex">
                                                    <span class="number me-3">1</span>
                                                    <div>
                                                        <h4 class="trending-title mb-2">The Best Homemade Masks for Face
                                                        </h4>
                                                        <span class="author text-muted small">Jane Cooper</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>

                                        <div class="trending-post-item mb-4 pb-4 border-bottom">
                                            <a href="blog-details.html" class="text-decoration-none">
                                                <div class="d-flex">
                                                    <span class="number me-3">2</span>
                                                    <div>
                                                        <h4 class="trending-title mb-2">The Best Homemade Masks for Face
                                                        </h4>
                                                        <span class="author text-muted small">Jane Cooper</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="trending-post-item mb-4 pb-4 border-bottom">
                                            <a href="blog-details.html" class="text-decoration-none">
                                                <div class="d-flex">
                                                    <span class="number me-3">3</span>
                                                    <div>
                                                        <h4 class="trending-title mb-2">The Best Homemade Masks for Face
                                                        </h4>
                                                        <span class="author text-muted small">Jane Cooper</span>
                                                    </div>
                                                </div>
                                            </a>
                                        </div>
                                        <div class="trending-post-item mb-4 pb-4 border-bottom">
                                            <a href="blog-details.html" class="text-decoration-none">
                                                <div class="d-flex">
                                                    <span class="number me-3">4</span>
                                                    <div>
                                                        <h4 class="trending-title mb-2">The Best Homemade Masks for Face
                                                        </h4>
                                                        <span class="author text-muted small">Jane Cooper</span>
                                                    </div>
                                                </div>
                                            </a>
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