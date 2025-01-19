<script setup>

defineProps({
    user: 'string'
})

</script>

<template>
    <div>
        <h2>About Page</h2>
        <h4>{{ user }}</h4>
    </div>
</template>
