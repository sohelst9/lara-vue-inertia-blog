<template>
    <div class="container">
        <div class="slider-container">
            <div class="slider" :style="{ transform: `translateX(-${currentIndex * 100}%)` }">
                <div v-for="(slide, index) in sliderData" :key="index" class="slider-item">
                    <div class="image-overlay">
                        <img :src="slide.image" :alt="slide.title" />
                        <div class="content-overlay">
                            <div class="caption">
                                <h5>{{ slide.title }}</h5>
                                <p>{{ slide.description }}</p>
                                <a :href="slide.link" class="btn">Explore</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <button class="prev" @click="moveSlide(-1)">❮</button>
            <button class="next" @click="moveSlide(1)">❯</button>

            <div class="dots-container">
                <span v-for="(slide, index) in sliderData" :key="index"
                    :class="['dot', { active: currentIndex === index }]" @click="currentIndex = index"></span>
            </div>
        </div>
    </div>
</template>

<script setup>
import { ref, defineProps } from 'vue';

const props = defineProps({
    sliderData: {
        type: Array,
        required: true
    }
});

const currentIndex = ref(0);

const moveSlide = (direction) => {
    currentIndex.value = (currentIndex.value + direction + props.sliderData.length) % props.sliderData.length;
};
</script>

<style scoped>
.slider-container {
    position: relative;
    width: 100%;
    margin-top: 2rem;
    margin-bottom: 2rem;
    overflow: hidden;
    border-radius: 2px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
}

.slider {
    display: flex;
    transition: transform 0.6s cubic-bezier(0.25, 0.1, 0.25, 1);
}

.slider-item {
    flex: 0 0 100%;
    width: 100%;
}

.image-overlay {
    position: relative;
    width: 100%;
    height: 500px;
    overflow: hidden;
    border-radius: 2px;
}

.image-overlay img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    transition: transform 0.6s ease;
}

.content-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(to right, rgba(0, 0, 0, 0.7), rgba(0, 0, 0, 0.3));
    display: flex;
    align-items: flex-end;
    padding: 40px;
    box-sizing: border-box;
}

.caption {
    color: white;
    max-width: 70%;
    /* transform: translateY(30px); */
    /* opacity: 0; */
    transition: all 0.2s ease;
    position: relative;
    top: -50px;
    left: 50px;
}

/* .slider-item:hover .caption {
    transform: translateY(0);
    opacity: 1;
} */

.caption h5 {
    font-size: 2.5rem;
    margin-bottom: 15px;
    font-weight: 600;
    line-height: 1.2;
    color: #f3ecec;
}

.caption p {
    font-size: 1.2rem;
    margin-bottom: 20px;
    color: rgba(255, 255, 255, 0.8);
}

.btn {
    display: inline-block;
    padding: 12px 25px;
    background-color: #007bff;
    color: white;
    text-decoration: none;
    border-radius: 6px;
    font-weight: 500;
    transition: background-color 0.3s ease;
}

.btn:hover {
    background-color: #0056b3;
}

.prev,
.next {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    background: rgba(255, 255, 255, 0.2);
    color: white;
    border: none;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    cursor: pointer;
    transition: background 0.3s ease;
    z-index: 10;
}

.prev {
    left: 20px;
}

.next {
    right: 20px;
}

.prev:hover,
.next:hover {
    background: rgba(255, 255, 255, 0.4);
}

.dots-container {
    position: absolute;
    bottom: 20px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    gap: 10px;
}

.dot {
    width: 10px;
    height: 10px;
    background: rgba(255, 255, 255, 0.5);
    border-radius: 50%;
    cursor: pointer;
    transition: background 0.3s ease;
}

.dot.active {
    background: white;
    width: 20px;
    border-radius: 10px;
}
</style>