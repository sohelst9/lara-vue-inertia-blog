<script setup>
import { onMounted } from 'vue';
import Slider from './INC/Slider.vue';
import Trending from './INC/Trending.vue';
import CategoryBasedPost from './INC/CategoryBasedPost.vue';

const props = defineProps({
    sliderData: {
        type: Array,
        required: true
    },
    trendingPost: {
        type: Object,
        required: true
    },
    categoryBasedPosts: {
        type: Array,
        required: true
    }

});

onMounted(() => {
    console.log('trendingPost', props.trendingPost);
})

</script>


<template>

    <Head>
        <title> | Home</title>
        <meta head-key="title" name="title" content="Home page meta title" />
        <meta head-key="description" name="description" content="Home page meta description" />
    </Head>
    <Slider :sliderData="sliderData" />
    <Trending :trendingPost="trendingPost" />
    <CategoryBasedPost :categoryBasedPosts="categoryBasedPosts" />




</template>
