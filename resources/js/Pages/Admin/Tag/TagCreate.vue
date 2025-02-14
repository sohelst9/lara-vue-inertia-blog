<script setup>
import { useForm, usePage } from '@inertiajs/vue3';
import { computed } from 'vue';


const tagData = useForm({
    name: '',
})

const page = usePage();

const errorMessage = computed(() => page.props.flash?.error || '')

const submit = () => {
    tagData.post('/admin/tag', {
        forceFormData:true,
        onSuccess: () => {
            tagData.reset()
        }
    })
}


</script>

<template>
    <Head>
        <title>Create Tag | Admin</title>
    </Head>

    <div class="container-fluid pt-4 px-4">
        <div class="bg-light rounded shadow-sm p-4">
            <div v-if="errorMessage" class="alert alert-danger mt-2">
                {{ errorMessage }}
            </div>
            <div class="d-flex align-items-center justify-content-between mb-4">
                <h5 class="mb-0 text-primary fw-bold">Create New Tag</h5>
                <Link href="/admin/tag" class="btn btn-outline-primary btn-sm">
                    <i class="bi bi-arrow-left me-1"></i>Back
                </Link>
            </div>
            
            <form @submit.prevent="submit"> 
                <div class="row g-3">
                    <div class="col-md-12">
                        <label for="name" class="form-label">Tag Name</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-tag"></i></span>
                            <input 
                                type="text" 
                                class="form-control" 
                                id="name"
                                v-model="tagData.name" 
                                placeholder="Enter category name"
                            >
                        </div>
                        <div class="mt-2 text-danger" v-if="tagData.errors.name">{{ tagData.errors.name }}</div>
                    </div>

                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">
                            <i class="bi bi-save me-2"></i>Create Tag
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