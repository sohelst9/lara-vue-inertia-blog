<script setup>



</script>


<template>

    <Head>
        <meta head-key="description" name="description" content="Hello WorldBlog">
        <meta head-key="title" name="title" content="Hello WorldBlog">
    </Head>
    <!---- header ---->
    <header id="header" class="header d-flex align-items-center sticky-top">
        <div class="container position-relative d-flex align-items-center justify-content-between">

            <Link href="/" class="logo d-flex align-items-center me-auto me-xl-0">
                <!-- <img src="assets/img/logo.png" alt=""> -->
                <h1 class="sitename">WorldBlog</h1>
            </Link>

            <nav id="navmenu" class="navmenu">
                <ul>
                    <li><Link href="/" class="active">Home</Link></li>
                    <li><Link href="/about">About</Link></li>
                    <li><Link href="/blogs">Post</Link></li>
                  
                    <li><Link href="/contact">Contact</Link></li>
                </ul>
                <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
            </nav>

            <div class="header-social-links">
                <a href="javascript:void(0);" class="twitter"><i class="bi bi-twitter-x"></i></a>
                <a href="javascript:void(0);" class="facebook"><i class="bi bi-facebook"></i></a>
                <a href="javascript:void(0);" class="instagram"><i class="bi bi-instagram"></i></a>
                <a href="javascript:void(0);" class="linkedin"><i class="bi bi-linkedin"></i></a>
            </div>

        </div>
    </header>



    <!----- Main----->
    <main class="main">
        <slot />
    </main>

    <footer id="footer" class="footer dark-background">

        <div class="container footer-top">
            <div class="row gy-4">
                <div class="col-lg-6 col-md-6 footer-about">
                    <Link href="/" class="logo d-flex align-items-center">
                        <span class="sitename">WorldBlog</span>
                    </Link>
                    <div class="footer-contact pt-3">
                        <p>A108 Adam Street</p>
                        <p>New York, NY 535022</p>
                        <p class="mt-3"><strong>Phone:</strong> <span>+1 5589 55488 55</span></p>
                        <p><strong>Email:</strong> <span>info@example.com</span></p>
                    </div>
                    <div class="social-links d-flex mt-4">
                        <a href="javascript:void(0);"><i class="bi bi-twitter-x"></i></a>
                        <a href="javascript:void(0);"><i class="bi bi-facebook"></i></a>
                        <a href="javascript:void(0);"><i class="bi bi-instagram"></i></a>
                        <a href="javascript:void(0);"><i class="bi bi-linkedin"></i></a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 footer-links">
                    <h4>Useful Links</h4>
                    <ul>
                        <li><Link href="/">Home</Link></li>
                        <li><Link href="/about">About us</Link></li>
                        <li><Link href="/blogs">Posts</Link></li>
                        <li><Link href="/terms">Terms of service</Link></li>
                        <li><Link href="/privacy">Privacy policy</Link></li>
                    </ul>
                </div>

                <div class="col-lg-3 col-md-3 footer-links">
                    <h4>Blogs</h4>
                    <ul>
                        <li><a href="javascript:void(0);">Web Design</a></li>
                        <li><a href="javascript:void(0);">Web Development</a></li>
                        <li><a href="javascript:void(0);">Product Management</a></li>
                        <li><a href="javascript:void(0);">Marketing</a></li>
                        <li><a href="javascript:void(0);">Graphic Design</a></li>
                    </ul>
                </div>


            </div>
        </div>

        <div class="container copyright text-center mt-4">
            <p>© <span>Copyright</span> <strong class="px-1 sitename">WorldBlog</strong> <span>All Rights Reserved</span>
            </p>
        </div>

    </footer>
</template>