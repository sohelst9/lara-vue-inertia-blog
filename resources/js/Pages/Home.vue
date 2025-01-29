<script setup>
import { onMounted } from 'vue';
import Slider from './INC/Slider.vue';
import Trending from './INC/Trending.vue';

const props = defineProps({
    sliderData: {
        type: Array,
        required: true
    },
    trendingPost: {
        type: Object,
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

    

</template>
