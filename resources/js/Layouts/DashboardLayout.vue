<script setup>
import { onMounted } from 'vue';
import '../../css/dashboard.css';
import DashSidebar from './inc/DashSidebar.vue';
import DashNav from './inc/DashNav.vue';

const props = defineProps({
    userImage: {
        type: String,
        required: true
    }
});


onMounted(() => {
    $('.sidebar-toggler').click(function () {
        $('.sidebar, .content').toggleClass("open");
        return false;
    });
});
</script>




<template>

    <div class="container-xxl position-relative bg-white d-flex p-0">

        <!-- Sidebar Start -->
        <DashSidebar :userImage="userImage" />
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <DashNav :userImage="userImage" />
            <!-- Navbar End -->

            <div class="main_content">
                <slot />
            </div>

           
        </div>
        <!-- Content End -->
    </div>
</template>
