<script setup>
const props = defineProps({
    allCategory: Object,
})

console.log('categories : ', props.allCategory);
</script>

<template>
    <Head>
        <title> | Categories</title>
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

    <div class="container py-5">
        <div class="row">
            <div class="col-lg-12">
                <!-- Category Header -->
                <div class="category-header mb-4">
                    <h2 class="category-title">Explore Categories</h2>
                    <p class="category-subtitle">Discover content organized in different categories</p>
                </div>

                <!-- Category Grid -->
                <div class="row g-4 mb-5">
                    <!-- Category Card 1 -->
                    <div class="col-md-4 col-sm-6">
                        <div class="category-card">
                            <div class="category-image">
                                <img src="" alt="Technology" class="img-fluid rounded" />
                            </div>
                            <h3 class="category-name">Technology</h3>
                            <span class="category-count">24 Articles</span>
                            <a href="#" class="category-link">
                                <span>View All</span>
                                <i class="bi bi-arrow-right ms-2"></i>
                            </a>
                        </div>
                    </div>

                    <!-- Category Card 2 -->
                    <div class="col-md-4 col-sm-6">
                        <div class="category-card">
                            <div class="category-image">
                                <img src="" alt="Environment" class="img-fluid rounded" />
                            </div>
                            <h3 class="category-name">Environment</h3>
                            <span class="category-count">18 Articles</span>
                            <a href="#" class="category-link">
                                <span>View All</span>
                                <i class="bi bi-arrow-right ms-2"></i>
                            </a>
                        </div>
                    </div>

                    <!-- Category Card 3 -->
                    <div class="col-md-4 col-sm-6">
                        <div class="category-card">
                            <div class="category-image">
                                <img src="" alt="Business" class="img-fluid rounded" />
                            </div>
                            <h3 class="category-name">Business</h3>
                            <span class="category-count">32 Articles</span>
                            <a href="#" class="category-link">
                                <span>View All</span>
                                <i class="bi bi-arrow-right ms-2"></i>
                            </a>
                        </div>
                    </div>

                    <!-- Category Card 4 -->
                    <div class="col-md-4 col-sm-6">
                        <div class="category-card">
                            <div class="category-image">
                                <img src="" alt="Health" class="img-fluid rounded" />
                            </div>
                            <h3 class="category-name">Health</h3>
                            <span class="category-count">15 Articles</span>
                            <a href="#" class="category-link">
                                <span>View All</span>
                                <i class="bi bi-arrow-right ms-2"></i>
                            </a>
                        </div>
                    </div>

                    <!-- Category Card 5 -->
                    <div class="col-md-4 col-sm-6">
                        <div class="category-card">
                            <div class="category-image">
                                <img src="" alt="Photography" class="img-fluid rounded" />
                            </div>
                            <h3 class="category-name">Photography</h3>
                            <span class="category-count">21 Articles</span>
                            <a href="#" class="category-link">
                                <span>View All</span>
                                <i class="bi bi-arrow-right ms-2"></i>
                            </a>
                        </div>
                    </div>

                    <!-- Category Card 6 -->
                    <div class="col-md-4 col-sm-6">
                        <div class="category-card">
                            <div class="category-image">
                                <img src="" alt="Music" class="img-fluid rounded" />
                            </div>
                            <h3 class="category-name">Music</h3>
                            <span class="category-count">8 Articles</span>
                            <a href="#" class="category-link">
                                <span>View All</span>
                                <i class="bi bi-arrow-right ms-2"></i>
                            </a>
                        </div>
                    </div>
                </div>

                <!-- Pagination -->
                <nav aria-label="Page navigation">
                    <ul class="pagination justify-content-center">
                        <li class="page-item disabled">
                            <a class="page-link" href="#" tabindex="-1" aria-disabled="true">
                                <i class="bi bi-chevron-left"></i>
                            </a>
                        </li>
                        <li class="page-item active"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item">
                            <a class="page-link" href="#">
                                <i class="bi bi-chevron-right"></i>
                            </a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</template>

<style scoped>
/* Custom styles for the category section */
.category-header {
    text-align: center;
    margin-bottom: 2.5rem;
}

.category-title {
    font-size: 2.25rem;
    font-weight: 700;
    margin-bottom: 0.5rem;
    color: #212529;
}

.category-subtitle {
    font-size: 1.125rem;
    color: #6c757d;
    max-width: 600px;
    margin: 0 auto;
}

.category-card {
    background-color: #ffffff;
    border-radius: 12px;
    padding: 1.5rem;
    box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, 0.075);
    height: 100%;
    transition: all 0.3s ease;
    position: relative;
    border: 1px solid rgba(0, 0, 0, 0.05);
    display: flex;
    flex-direction: column;
}

.category-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 0.5rem 1rem rgba(0, 0, 0, 0.15);
}

.category-image {
    margin-bottom: 1.25rem;
    overflow: hidden;
    border-radius: 8px;
}

.category-image img {
    transition: transform 0.5s ease;
    width: 100%;
    height: 180px;
    object-fit: cover;
}

.category-card:hover .category-image img {
    transform: scale(1.05);
}

.category-name {
    font-size: 1.25rem;
    font-weight: 600;
    margin-bottom: 0.5rem;
    color: #212529;
}

.category-count {
    display: inline-block;
    font-size: 0.875rem;
    color: #6c757d;
    margin-bottom: 1rem;
}

.category-link {
    margin-top: auto;
    display: inline-flex;
    align-items: center;
    color: #0d6efd;
    font-weight: 500;
    font-size: 0.9rem;
    text-decoration: none;
    transition: all 0.2s ease;
}

.category-link:hover {
    color: #0a58ca;
    text-decoration: underline;
}

/* Pagination styles */
.pagination {
    gap: 0.25rem;
}

.page-link {
    border-radius: 50% !important;
    width: 40px;
    height: 40px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #495057;
    border: 1px solid #dee2e6;
    margin: 0 0.125rem;
}

.page-item.active .page-link {
    background-color: #0d6efd;
    border-color: #0d6efd;
}

.page-link:hover {
    background-color: #e9ecef;
    color: #0d6efd;
}

.page-item.disabled .page-link {
    color: #6c757d;
}

/* Page title section */
.page-title {
    background-color: #f8f9fa;
    padding: 3rem 0;
    margin-bottom: 3rem;
}

.page-title h1 {
    font-size: 2.5rem;
    font-weight: 700;
    margin-bottom: 0.75rem;
    color: #212529;
}

.breadcrumbs ol {
    display: flex;
    list-style: none;
    padding: 0;
    margin: 0;
    flex-wrap: wrap;
}

.breadcrumbs li {
    display: inline-flex;
    align-items: center;
    color: #6c757d;
    font-size: 0.875rem;
}

.breadcrumbs li:not(:last-child)::after {
    content: '/';
    margin: 0 0.5rem;
    color: #adb5bd;
}

.breadcrumbs a {
    color: #0d6efd;
    text-decoration: none;
}

.breadcrumbs a:hover {
    text-decoration: underline;
}

.breadcrumbs .current {
    font-weight: 500;
    color: #212529;
}
</style>