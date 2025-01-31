<script setup>
const props = defineProps({
    image: {
        type: String,
        required: true
    }
});
</script>

<template>

    <Head>
        <title> | About</title>
        <meta head-key="description" name="description" content="About page description">
        <meta head-key="title" name="title" content="About page title">
    </Head>

    <div class="about-page">
        <!-- Page Title -->
        <div class="page-title">
            <div class="container">
                <h1>About</h1>
                <nav class="breadcrumbs">
                    <ol>
                        <li><Link href="/">Home</Link></li>
                        <li class="current">About</li>
                    </ol>
                </nav>
            </div>
        </div>

        <!-- About Section -->
        <section id="about" class="section-padding overflow-hidden">
            <div class="container">
                <div class="row gy-4 align-items-center">
                    <div class="col-lg-6" data-aos="fade-right">
                        <span class="text-primary fw-semibold mb-3 d-block animate-badge">Who We Are</span>
                        <h2 class="display-5 fw-bold mb-4">Unleashing Potential with Creative Strategy</h2>
                        <p class="lead fst-italic mb-4 text-secondary">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut
                            labore et dolore magna aliqua.
                        </p>
                        <ul class="list-unstyled feature-list">
                            <li class="d-flex align-items-center mb-4 feature-item">
                                <div class="feature-icon">
                                    <i class="bi bi-check-circle-fill"></i>
                                </div>
                                <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>
                            </li>
                            <li class="d-flex align-items-center mb-4 feature-item">
                                <div class="feature-icon">
                                    <i class="bi bi-check-circle-fill"></i>
                                </div>
                                <span>Duis aute irure dolor in reprehenderit in voluptate velit.</span>
                            </li>
                            <li class="d-flex align-items-center feature-item">
                                <div class="feature-icon">
                                    <i class="bi bi-check-circle-fill"></i>
                                </div>
                                <span>Ullamco laboris nisi ut aliquip ex ea commodo consequat.</span>
                            </li>
                        </ul>
                    </div>

                    <div class="col-lg-6" data-aos="fade-left">
                        <div class="image-grid">
                            <div class="main-image">
                                <img :src="image" class="img-fluid rounded-lg shadow-lg" alt="About Company">
                            </div>
                            <div class="secondary-images">
                                <img :src="image" class="img-fluid rounded-lg shadow-lg mb-4" alt="About Company">
                                <img :src="image" class="img-fluid rounded-lg shadow-lg" alt="About Company">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Team Section -->
        <section id="team" class="section-padding bg-light">
            <div class="container">
                <div class="row mb-5">
                    <div class="col-lg-6" data-aos="fade-up">
                        <h2 class="display-5 fw-bold mb-3">Our Team</h2>
                    </div>
                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                        <p class="lead text-secondary mb-0">Necessitatibus eius consequatur ex aliquid fuga eum quidem
                            sint consectetur
                            velit</p>
                    </div>
                </div>

                <div class="row gy-4">
                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="100">
                        <div class="team-card">
                            <div class="team-image">
                                <img :src="image" class="rounded-circle" alt="Team Member">
                            </div>
                            <div class="team-content">
                                <h4 class="mb-1">Walter White</h4>
                                <p class="text-primary fw-semibold mb-2">Chief Executive Officer</p>
                                <p class="mb-3 text-secondary">Explicabo voluptatem mollitia et repellat qui dolorum
                                    quasi</p>
                                <div class="social-links">
                                    <a href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a href="#"><i class="bi bi-facebook"></i></a>
                                    <a href="#"><i class="bi bi-instagram"></i></a>
                                    <a href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="200">
                        <div class="team-card">
                            <div class="team-image">
                                <img :src="image" class="rounded-circle" alt="Team Member">
                            </div>
                            <div class="team-content">
                                <h4 class="mb-1">Sarah Jhonson</h4>
                                <p class="text-primary fw-semibold mb-2">Product Manager</p>
                                <p class="mb-3 text-secondary">Aut maiores voluptates amet et quis praesentium qui senda
                                    para</p>
                                <div class="social-links">
                                    <a href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a href="#"><i class="bi bi-facebook"></i></a>
                                    <a href="#"><i class="bi bi-instagram"></i></a>
                                    <a href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="300">
                        <div class="team-card">
                            <div class="team-image">
                                <img :src="image" class="rounded-circle" alt="Team Member">
                            </div>
                            <div class="team-content">
                                <h4 class="mb-1">William Anderson</h4>
                                <p class="text-primary fw-semibold mb-2">CTO</p>
                                <p class="mb-3 text-secondary">Quisquam facilis cum velit laborum corrupti fuga rerum
                                    quia</p>
                                <div class="social-links">
                                    <a href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a href="#"><i class="bi bi-facebook"></i></a>
                                    <a href="#"><i class="bi bi-instagram"></i></a>
                                    <a href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6" data-aos="fade-up" data-aos-delay="400">
                        <div class="team-card">
                            <div class="team-image">
                                <img :src="image" class="rounded-circle" alt="Team Member">
                            </div>
                            <div class="team-content">
                                <h4 class="mb-1">Amanda Jepson</h4>
                                <p class="text-primary fw-semibold mb-2">Accountant</p>
                                <p class="mb-3 text-secondary">Dolorum tempora officiis odit laborum officiis et et
                                    accusamus</p>
                                <div class="social-links">
                                    <a href="#"><i class="bi bi-twitter-x"></i></a>
                                    <a href="#"><i class="bi bi-facebook"></i></a>
                                    <a href="#"><i class="bi bi-instagram"></i></a>
                                    <a href="#"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>

<style scoped>
/* Enhanced Custom CSS */
.section-padding {
    padding: 50px 0;
    position: relative;
}

/* Page Title */
.bg-gradient {
    background: linear-gradient(135deg, var(--bs-primary) 0%, #2563eb 100%);
    position: relative;
}

.bg-gradient::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url("data:image/svg+xml,%3Csvg width='60' height='60' viewBox='0 0 60 60' xmlns='http://www.w3.org/2000/svg'%3E%3Cg fill='none' fill-rule='evenodd'%3E%3Cg fill='%23ffffff' fill-opacity='0.05'%3E%3Cpath d='M36 34v-4h-2v4h-4v2h4v4h2v-4h4v-2h-4zm0-30V0h-2v4h-4v2h4v4h2V6h4V4h-4zM6 34v-4H4v4H0v2h4v4h2v-4h4v-2H6zM6 4V0H4v4H0v2h4v4h2V6h4V4H6z'/%3E%3C/g%3E%3C/g%3E%3C/svg%3E");
}

.breadcrumb-item+.breadcrumb-item::before {
    color: rgba(255, 255, 255, 0.5);
}

/* About Section */
.animate-badge {
    display: inline-block;
    padding: 0.5rem 1rem;
    background: rgba(var(--bs-primary-rgb), 0.1);
    border-radius: 2rem;
    font-size: 0.875rem;
    transform: translateY(0);
    transition: all 0.3s ease;
}

.animate-badge:hover {
    transform: translateY(-2px);
}

.feature-item {
    padding: 1rem;
    border-radius: 0.5rem;
    transition: all 0.3s ease;
}

.feature-item:hover {
    background: rgba(var(--bs-primary-rgb), 0.05);
    transform: translateX(5px);
}

.feature-icon {
    width: 40px;
    height: 40px;
    background: rgba(var(--bs-primary-rgb), 0.1);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-right: 1rem;
}

.feature-icon i {
    color: var(--bs-primary);
    font-size: 1.25rem;
}

/* Image Grid */
.image-grid {
    display: grid;
    grid-template-columns: 1.5fr 1fr;
    gap: 1.5rem;
    position: relative;
}

.main-image img {
    height: 100%;
    object-fit: cover;
}

.secondary-images img {
    width: 100%;
    height: calc(50% - 0.75rem);
    object-fit: cover;
}

/* Team Section */
.team-card {
    background: #fff;
    border-radius: 1rem;
    padding: 2rem;
    display: flex;
    align-items: center;
    gap: 2rem;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
    transition: all 0.3s ease;
    position: relative;
    overflow: hidden;
}

.team-card::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(135deg, rgba(var(--bs-primary-rgb), 0.1) 0%, rgba(var(--bs-primary-rgb), 0) 100%);
    opacity: 0;
    transition: all 0.3s ease;
}

.team-card:hover {
    transform: translateY(-5px);
}

.team-card:hover::before {
    opacity: 1;
}

.team-image {
    flex-shrink: 0;
}

.team-image img {
    width: 120px;
    height: 120px;
    object-fit: cover;
    border: 4px solid #fff;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.team-content {
    flex-grow: 1;
}

.social-links {
    display: flex;
    gap: 1rem;
}

.social-links a {
    width: 35px;
    height: 35px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: rgba(var(--bs-primary-rgb), 0.1);
    border-radius: 50%;
    color: var(--bs-primary);
    transition: all 0.3s ease;
}

.social-links a:hover {
    background: var(--bs-primary);
    color: #fff;
    transform: translateY(-2px);
}

/* Responsive Styles */
@media (max-width: 991.98px) {
    .section-padding {
        padding: 70px 0;
    }

    .team-card {
        flex-direction: column;
        text-align: center;
        padding: 2rem 1.5rem;
    }

    .team-content {
        margin-top: 1.5rem;
    }

    .social-links {
        justify-content: center;
    }

    .image-grid {
        grid-template-columns: 1fr;
        gap: 1rem;
    }

    .main-image img,
    .secondary-images img {
        height: 300px;
    }
}

</style>
