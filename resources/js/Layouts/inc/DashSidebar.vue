<script setup>
import { usePage } from '@inertiajs/vue3';

// import '../../css/dashboard.css';

const props = defineProps({
    userImage: {
        type: String,
        required: true
    }
});

const page = usePage();
const user = page.props.auth.user;

</script>

<template>

    <div class="sidebar pe-4 pb-3">
        <nav class="navbar bg-light navbar-light">
            <Link href="/admin/dashboard" class="navbar-brand mx-4 mb-3">
                <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>HelloDash</h3>
            </Link>
            <div class="d-flex align-items-center ms-4 mb-4">
                <div class="position-relative">
                    <img class="rounded-circle" :src="userImage" alt="" style="width: 40px; height: 40px;">
                    <div
                        class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1">
                    </div>
                </div>
                <div class="ms-3">
                    <h6 class="mb-0">{{ user ? user.name : 'BlogAdmin' }}</h6>
                    <span>Admin</span>
                </div>
            </div>
            <div class="navbar-nav w-100">
                <Link href="/admin/dashboard" class="nav-item nav-link active"><i
                        class="fa fa-tachometer-alt me-2"></i>Dashboard</Link>
                
                <Link href="/admin/category" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Categories</Link>
                <Link href="/admin/tag" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Tags</Link>
                <Link href="/admin/post" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Posts</Link>
                <div class="nav-item dropdown">
                    <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><i
                            class="far fa-file-alt me-2"></i>Pages</a>
                    <div class="dropdown-menu bg-transparent border-0">
                        <a href="signin.html" class="dropdown-item">Sign In</a>
                        <a href="signup.html" class="dropdown-item">Sign Up</a>
                        <a href="404.html" class="dropdown-item">404 Error</a>
                        <a href="blank.html" class="dropdown-item">Blank Page</a>
                    </div>
                </div>
            </div>
            
        </nav>
    </div>
</template>