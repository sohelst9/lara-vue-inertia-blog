<script setup>
import Slider from './INC/Slider.vue';

const props = defineProps({
    sliderData: {
        type: Array,
        required: true
    }
});

</script>


<template>

    <Head>
        <title> | Home</title>
        <meta head-key="title" name="title" content="Home page meta title" />
        <meta head-key="description" name="description" content="Home page meta description" />
    </Head>
    <Slider :sliderData="sliderData" />
</template>
