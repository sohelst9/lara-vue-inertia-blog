<script setup>
import { useForm, usePage } from '@inertiajs/vue3';
import { computed, ref } from 'vue';


const categoryData = useForm({
    name: '',
    description: '',
    image: null,
    meta_title: '',
    meta_description: '',
    meta_keywords: '',
})

const page = usePage();

const errorMessage = computed(() => page.props.flash?.error || '')

const submit = () => {
    categoryData.post('/admin/category', {
        forceFormData:true,
        onSuccess: () => {
            categoryData.reset()
        }
    })
}


</script>

<template>
    <Head>
        <title>Create Category | Admin</title>
    </Head>

    <div class="container-fluid pt-4 px-4">
        <div class="bg-light rounded shadow-sm p-4">
            <div v-if="errorMessage" class="alert alert-danger mt-2">
                {{ errorMessage }}
            </div>
            <div class="d-flex align-items-center justify-content-between mb-4">
                <h5 class="mb-0 text-primary fw-bold">Create New Category</h5>
                <Link href="/admin/category" class="btn btn-outline-primary btn-sm">
                    <i class="bi bi-arrow-left me-1"></i>Back
                </Link>
            </div>
            
            <form @submit.prevent="submit"> 
                <div class="row g-3">
                    <div class="col-md-12">
                        <label for="name" class="form-label">Category Name</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-tag"></i></span>
                            <input 
                                type="text" 
                                class="form-control" 
                                id="name"
                                v-model="categoryData.name" 
                                placeholder="Enter category name"
                            >
                        </div>
                        <div class="mt-2 text-danger" v-if="categoryData.errors.name">{{ categoryData.errors.name }}</div>
                    </div>

                    <div class="col-12">
                        <label for="description" class="form-label">Description</label>
                        <textarea 
                            class="form-control" 
                            id="description" 
                            rows="4" 
                            placeholder="Enter category description"
                            v-model="categoryData.description"
                        ></textarea>
                        <div class="mt-2 text-danger" v-if="categoryData.errors.description">{{ categoryData.errors.description }}</div>
                    </div>

                    <div class="col-12">
                        <label for="image" class="form-label">Category Image</label>
                        <input 
                            type="file" 
                            class="form-control" 
                            id="image"
                            @input="categoryData.image = $event.target.files[0]"
                            accept="image/*"
                        >
                        <div class="mt-2 text-danger" v-if="categoryData.errors.image">{{ categoryData.errors.image }}</div>
                    </div>

                    <div class="col-md-4">
                        <label for="meta_title" class="form-label">Meta Title</label>
                        <input 
                            type="text" 
                            class="form-control" 
                            id="meta_title" 
                            v-model="categoryData.meta_title"
                            placeholder="Enter meta title"
                        >
                    </div>

                    <div class="col-md-4">
                        <label for="meta_keywords" class="form-label">Meta Keywords</label>
                        <input 
                            type="text" 
                            class="form-control" 
                            id="meta_keywords" 
                            v-model="categoryData.meta_keywords"
                            placeholder="Enter meta keywords"
                        >
                    </div>

                    <div class="col-md-4">
                        <label for="meta_description" class="form-label">Meta Description</label>
                        <textarea 
                            class="form-control" 
                            id="meta_description" 
                            rows="3" 
                            v-model="categoryData.meta_description"
                            placeholder="Enter meta description"
                        ></textarea>
                    </div>

                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">
                            <i class="bi bi-save me-2"></i>Submit Category
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