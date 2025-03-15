<script setup>
import { computed, ref } from 'vue';
import { Link, usePage } from '@inertiajs/vue3';

const isMenuOpen = ref(false);

const toggleMenu = () => {
    isMenuOpen.value = !isMenuOpen.value;
};
const page = usePage();
const categories = computed(() => page.props.categories);
console.log('categories : ', categories.value);
</script>

<template>
    <div>
        <!-- Header -->
        <header class="header position-fixed w-100 top-0" style="z-index: 1000;">
            <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm py-3">
                <div class="container">
                    <!-- Logo -->
                    <Link href="/" class="navbar-brand">
                    <h1 class="m-0 fw-bold text-primary" style="font-size: 28px;">WorldBlog</h1>
                    </Link>

                    <!-- Mobile Toggle -->
                    <button class="navbar-toggler border-0" type="button" @click="toggleMenu"
                        :aria-expanded="isMenuOpen">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!-- Nav Menu -->
                    <div class="collapse navbar-collapse" :class="{ 'show': isMenuOpen }" id="navbarNav">
                        <ul class="navbar-nav mx-auto">
                            <li class="nav-item px-2">
                                <Link href="/" class="nav-link fw-semibold" :class="{ 'active': $page.url === '/' }">
                                Home</Link>
                            </li>
                            <li class="nav-item px-2">
                                <Link href="/about" class="nav-link fw-semibold"
                                    :class="{ 'active': $page.url === '/about' }">About</Link>
                            </li>
                            <li class="nav-item px-2">
                                <Link href="/blogs" class="nav-link fw-semibold"
                                    :class="{ 'active': $page.url === '/blogs' }">Posts</Link>
                            </li>

                            <li class="nav-item px-2">
                                <Link href="/categories" class="nav-link fw-semibold"
                                    :class="{ 'active': $page.url === '/categories' }">Categories</Link>
                            </li>

                            <li class="nav-item px-2">
                                <Link href="/contact" class="nav-link fw-semibold"
                                    :class="{ 'active': $page.url === '/contact' }">Contact</Link>
                            </li>
                        </ul>

                        <!-- Social Icons -->
                        <div class="d-flex social-links">
                            <a href="#" class="btn btn-light rounded-circle mx-1">
                                <i class="bi bi-twitter-x"></i>
                            </a>
                            <a href="#" class="btn btn-light rounded-circle mx-1">
                                <i class="bi bi-facebook"></i>
                            </a>
                            <a href="#" class="btn btn-light rounded-circle mx-1">
                                <i class="bi bi-instagram"></i>
                            </a>
                            <a href="#" class="btn btn-light rounded-circle mx-1">
                                <i class="bi bi-linkedin"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>

        <!-- Main Content -->
        <main class="main-content" style="margin-top: 80px;">
            <slot />
        </main>

        <!-- Footer -->
        <footer class="footer bg-dark text-light py-5 mt-5">
            <div class="container">
                <div class="row g-4">
                    <!-- About Section -->
                    <div class="col-lg-4 col-md-6">
                        <Link href="/" class="text-decoration-none">
                        <h2 class="text-primary mb-4">WorldBlog</h2>
                        </Link>
                        <div class="footer-contact">
                            <p class="mb-2"><i class="bi bi-geo-alt me-2"></i>Dhaka, Bangladesh</p>
                            <p class="mb-2"><i class="bi bi-building me-2"></i>123, Main Road</p>
                            <p class="mb-2"><i class="bi bi-telephone me-2"></i>+880 1234 5678</p>
                            <p class="mb-4"><i class="bi bi-envelope me-2"></i>info@worldblog.com</p>
                            <div class="d-flex social-links">
                                <a href="https://twitter.com" target="_blank"
                                    class="btn btn-primary rounded-circle me-2">
                                    <i class="bi bi-twitter-x"></i>
                                </a>
                                <a href="https://facebook.com" target="_blank"
                                    class="btn btn-primary rounded-circle me-2">
                                    <i class="bi bi-facebook"></i>
                                </a>
                                <a href="https://instagram.com" target="_blank"
                                    class="btn btn-primary rounded-circle me-2">
                                    <i class="bi bi-instagram"></i>
                                </a>
                                <a href="https://linkedin.com" target="_blank"
                                    class="btn btn-primary rounded-circle me-2">
                                    <i class="bi bi-linkedin"></i>
                                </a>

                            </div>
                        </div>
                    </div>

                    <!-- Useful Links -->
                    <div class="col-lg-4 col-md-6">
                        <h4 class="text-light mb-4">Useful Links</h4>
                        <ul class="list-unstyled footer-links">
                            <li class="mb-2">
                                <Link href="/" class="text-secondary"><i class="bi bi-chevron-right me-2"></i>Home
                                </Link>
                            </li>
                            <li class="mb-2">
                                <Link href="/about" class="text-secondary"><i class="bi bi-chevron-right me-2"></i>About
                                us</Link>
                            </li>
                            <li class="mb-2">
                                <Link href="/blogs" class="text-secondary"><i class="bi bi-chevron-right me-2"></i>Posts
                                </Link>
                            </li>
                            <li class="mb-2">
                                <Link href="/terms" class="text-secondary"><i class="bi bi-chevron-right me-2"></i>Terms
                                of service</Link>
                            </li>
                            <li class="mb-2">
                                <Link href="/privacy" class="text-secondary"><i
                                    class="bi bi-chevron-right me-2"></i>Privacy policy</Link>
                            </li>
                        </ul>
                    </div>

                    <!-- Blog Categories -->
                    <div class="col-lg-4 col-md-6">
                        <h4 class="text-light mb-4">Blog Categories</h4>
                        <ul class="list-unstyled footer-links">
                            <li class="mb-2" v-for="category in categories" :key="category.id">
                                <Link :href="`/category/blogs/${category.slug}`" class="text-secondary"><i
                                    class="bi bi-chevron-right me-2"></i>{{ category.name }}</Link>
                            </li>

                        </ul>
                    </div>
                </div>
            </div>

            <!-- Copyright -->
            <div class="container mt-4 pt-4 border-top border-secondary">
                <div class="text-center text-secondary">
                    <p class="mb-0">© <span>Copyright</span> <strong class="text-primary">WorldBlog</strong>. All Rights
                        Reserved</p>
                </div>
            </div>
        </footer>
    </div>
</template>

<style scoped>
.header {
    transition: all 0.3s ease;
}

.navbar-nav .nav-link {
    position: relative;
    transition: color 0.3s ease;
}

.navbar-nav .nav-link:after {
    content: '';
    position: absolute;
    width: 0;
    height: 2px;
    bottom: 0;
    left: 0;
    background-color: var(--bs-primary);
    transition: width 0.3s ease;
}

.navbar-nav .nav-link:hover:after,
.navbar-nav .nav-link.active:after {
    width: 100%;
}

.social-links .btn {
    width: 35px;
    height: 35px;
    padding: 6px;
    transition: all 0.3s ease;
}

.social-links .btn:hover {
    transform: translateY(-3px);
}

.footer-links a {
    text-decoration: none;
    transition: all 0.3s ease;
}

.footer-links a:hover {
    color: var(--bs-primary) !important;
    padding-left: 5px;
}

@media (max-width: 991.98px) {
    .navbar-collapse {
        background: white;
        padding: 1rem;
        border-radius: 8px;
        box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        margin-top: 1rem;
    }

    .social-links {
        justify-content: center;
        margin-top: 1rem;
    }
}

/* Animation for mobile menu */
.navbar-collapse {
    transition: all 0.3s ease-in-out;
}

.navbar-collapse.show {
    animation: slideDown 0.3s ease-out forwards;
}

@keyframes slideDown {
    0% {
        opacity: 0;
        transform: translateY(-10px);
    }

    100% {
        opacity: 1;
        transform: translateY(0);
    }
}
</style>