<script setup>
import { useForm, usePage } from '@inertiajs/vue3';
import { computed, ref } from 'vue';


const props = defineProps({
    tag: {
        type: Object,
        required: true,
    }
})
const page = usePage();

const tagData = useForm({
    name: props.tag.name,
    _method: 'PUT'
})
const errorMessage = computed(() => page.props.flash?.error || '')
const updateTag = () => {
    tagData.post(`/admin/tag/${props.tag.id}`, {
        preserveScroll: true,
    })
}

</script>


<template>

    <Head>
        <title>Edit Tag | Admin</title>
    </Head>

    <div class="container-fluid pt-4 px-4">
        <div class="bg-light rounded shadow-sm p-4">
            <div v-if="errorMessage" class="alert alert-danger mt-2">
                {{ errorMessage }}
            </div>
            <div class="d-flex align-items-center justify-content-between mb-4">
                <h5 class="mb-0 text-primary fw-bold">Edit Tag</h5>
                <Link href="/admin/tag" class="btn btn-outline-primary btn-sm">
                <i class="bi bi-arrow-left me-1"></i>Back
                </Link>
            </div>

            <form @submit.prevent="updateTag">
                <div class="row g-3">
                    <div class="col-md-12">
                        <label for="name" class="form-label">Tag Name</label>
                        <div class="input-group">
                            <span class="input-group-text"><i class="bi bi-tag"></i></span>
                            <input type="text" class="form-control" id="name" v-model="tagData.name"
                                placeholder="Enter Tag name">
                        </div>
                        <div class="mt-2 text-danger" v-if="tagData.errors.name">{{ tagData.errors.name }}
                        </div>
                    </div>

                    

                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">
                            <i class="bi bi-save me-2"></i>Update Tag
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</template>