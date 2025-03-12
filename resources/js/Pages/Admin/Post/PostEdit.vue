<script setup>
import { useForm } from '@inertiajs/vue3';
import { ref } from 'vue';


const props = defineProps({
    allCategory: {
        type: Array,
        required: true
    },
    SinglePost: {
        type: Object,
        required: true
    },
    alltag: {
        type: Array,
        required: true
    },
    selectedTag: {
        type: Array,
        required: true
    }
})

const postData = useForm({
    selectedCategory: props.SinglePost.category_id,
    title: props.SinglePost.title,
    sub_title: props.SinglePost.sub_title,
    description: props.SinglePost.description,
    image: null,
    meta_title: props.SinglePost.meta_title,
    meta_description: props.SinglePost.meta_description,
    meta_keywords: props.SinglePost.meta_keywords,
    is_banner: Boolean(props.SinglePost.is_banner),
    is_best: Boolean(props.SinglePost.is_best),
    is_featured: Boolean(props.SinglePost.is_featured),
    is_popular: Boolean(props.SinglePost.is_popular),
    selectedTag: props.selectedTag,

    _method: 'PUT',

})

const imagePreview = ref(props.SinglePost.image ? `/${props.SinglePost.image}` : null)

const PostUpdate = () => {
    postData.post(`/admin/post/${props.SinglePost.id}`, {
        preserveScroll: true
    })
}
</script>

<template>

    <Head>
        <title>Create Post | Admin</title>
    </Head>

    <div class="container-fluid pt-4 px-4">
        <div class="bg-light rounded shadow-sm p-4">
            <div class="d-flex align-items-center justify-content-between mb-4">
                <h5 class="mb-0 text-primary fw-bold">Create New Post</h5>
                <Link href="/admin/post" class="btn btn-outline-primary btn-sm">
                <i class="bi bi-arrow-left me-1"></i>Back
                </Link>
            </div>

            <form @submit.prevent="PostUpdate">
                <div class="row g-3">
                    <div class="col-md-12">
                        <label for="title" class="form-label">Title</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-tag"></i></span>
                            <input type="text" class="form-control" id="title" v-model="postData.title"
                                placeholder="Enter Post Title">
                        </div>
                        <div class="mt-2 text-danger" v-if="postData.errors.title">{{ postData.errors.title }}</div>
                    </div>

                    <div class="col-md-12">
                        <label for="sub_title" class="form-label">Sub Title</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-tag"></i></span>
                            <input type="text" class="form-control" id="sub_title" v-model="postData.sub_title"
                                placeholder="Enter Post Sub Title">
                        </div>
                        <div class="mt-2 text-danger" v-if="postData.errors.sub_title">{{ postData.errors.sub_title }}
                        </div>
                    </div>

                    <div class="col-md-12">
                        <label for="category" class="form-label">Category</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-tag"></i></span>
                            <select name="category" id="category" class="form-control"
                                v-model="postData.selectedCategory">
                                <option value="">-select-</option>
                                <option :value="category.id" v-for="category in allCategory" :key="category.id"
                                    :selected="postData.selectedCategory == category.id">{{
                                        category.name }}</option>
                            </select>
                        </div>
                        <div class="mt-2 text-danger" v-if="postData.errors.selectedCategory">{{
                            postData.errors.selectedCategory }}
                        </div>
                    </div>

                    <div class="col-md-12">
                        <label for="tag" class="form-label">Tag</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-tag"></i></span>
                            <select name="tag" id="tag" class="form-control" multiple v-model="postData.selectedTag">
                                <option value="">-select-</option>
                                <option v-for="tag in alltag" :key="tag.id" :value="tag.id">{{ tag.name }}</option>
                            </select>
                        </div>
                    </div>

                    <div class="col-12">
                        <label for="description" class="form-label">Description</label>
                        <textarea class="form-control" id="description" rows="4" placeholder="Enter post description"
                            v-model="postData.description"></textarea>
                        <div class="mt-2 text-danger" v-if="postData.errors.description">{{ postData.errors.description
                            }}</div>
                    </div>

                    <div class="col-12">
                        <label for="image" class="form-label">Post Image</label>
                        <input type="file" class="form-control" id="image"
                            @input="postData.image = $event.target.files[0]" accept="image/*">
                        <div class="mt-2 text-danger" v-if="postData.errors.image">{{ postData.errors.image }}</div>
                        <div v-if="imagePreview">
                            <img :src="imagePreview" alt="" height="120" class="mt-2 rounded">
                        </div>
                    </div>

                    <div class="col-md-4">
                        <label for="meta_title" class="form-label">Meta Title</label>
                        <input type="text" class="form-control" id="meta_title" v-model="postData.meta_title"
                            placeholder="Enter meta title">
                    </div>

                    <div class="col-md-4">
                        <label for="meta_keywords" class="form-label">Meta Keywords</label>
                        <input type="text" class="form-control" id="meta_keywords" v-model="postData.meta_keywords"
                            placeholder="Enter meta keywords">
                    </div>

                    <div class="col-md-4">
                        <label for="meta_description" class="form-label">Meta Description</label>
                        <textarea class="form-control" id="meta_description" rows="3"
                            v-model="postData.meta_description" placeholder="Enter meta description"></textarea>
                    </div>


                    <div class="col-md-12">
                        <label class="form-label">Post Options</label>
                        <div class="d-flex flex-wrap gap-3">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="is_banner"
                                    v-model="postData.is_banner">
                                <label class="form-check-label" for="is_banner">Is Banner</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="is_featured"
                                    v-model="postData.is_featured">
                                <label class="form-check-label" for="is_featured">Is Featured</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="is_best" v-model="postData.is_best">
                                <label class="form-check-label" for="is_best">Is Best</label>
                            </div>
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" id="is_popular"
                                    v-model="postData.is_popular">
                                <label class="form-check-label" for="is_popular">Is Popular</label>
                            </div>
                        </div>
                    </div>

                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">
                            <i class="bi bi-save me-2"></i>Submit Post
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</template>

<style scoped>
.form-label {
    font-weight: 600;
    color: #495057;
}

.input-group-text {
    background-color: #f8f9fa;
    color: #6c757d;
}

.form-control:focus {
    border-color: #0d6efd;
    box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.25);
}
</style>
