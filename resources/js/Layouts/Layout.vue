<script setup>

</script>


<template>
    <Head>
        <meta head-key="description" name="description" content="This is default meta desc">
        <meta head-key="title" name="title" content="default title">
    </Head>
    <!---- header ---->
    <nav class="navbar navbar-expand-lg bg-body-tertiary">
        <div class="container">
            <Link class="navbar-brand" href="/">Hello Blog</Link>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <Link class="nav-link active" aria-current="page" href="/">Home</Link>
                    </li>
                    <li class="nav-item">
                        <Link class="nav-link" href="/blogs">Blog</Link>
                    </li>
                    <li class="nav-item">
                        <Link class="nav-link" href="/about">About Us</Link>
                    </li>
                    <li class="nav-item">
                        <Link class="nav-link" href="/contact">Contact Us</Link>
                    </li>

                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>



    <!----- Main----->
    <main>
        <slot />
    </main>
</template>

<style scoped>
.navbar {
    background-color: #ffffff;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    padding: 0.8rem 1rem;
}

.navbar-brand {
    font-size: 1.5rem;
    font-weight: bold;
    color: #0d6efd;
    text-transform: uppercase;
}

.navbar-nav .nav-link {
    font-size: 1rem;
    font-weight: 500;
    color: #6c757d;
    margin: 0 10px;
    transition: color 0.3s ease;
}

.navbar-nav .nav-link:hover {
    color: #198754;
}

.navbar-nav .nav-link.active {
    color: #0d6efd;
    font-weight: bold;
}

.form-control {
    border-radius: 30px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.btn-outline-success {
    border-radius: 30px;
    padding: 0.375rem 1.25rem;
    font-size: 0.9rem;
    transition: all 0.3s ease-in-out;
}

.btn-outline-success:hover {
    background-color: #198754;
    color: white;
    border-color: #198754;
}

@media (max-width: 768px) {
    .navbar-brand {
        margin-right: auto;
    }

    .form-control {
        margin-top: 10px;
    }
}
</style>