<script setup>
import { useForm, usePage } from '@inertiajs/vue3';
import { computed } from 'vue';

const props = defineProps({
    categories: {
        type: Array,
        required : true
    }
})

const page = usePage();
const delform = useForm({})

const DeleteCategory = (id) => {
    if(confirm('Are you sure you want to delete this category?')) {
        delform.delete(`/admin/category/${id}`, {
            preserveScroll : true,
            
        })
    }
}

const successMessage = computed(() => page.props.flash?.success || '');
</script>


<template>

    <Head>
        <title> | Admin Category</title>
    </Head>

    <div class="container-fluid pt-4 px-4">
        <div class="bg-light text-center rounded p-4">
            <div v-if="successMessage" class="alert alert-success mt-3 mb-3">
                {{ successMessage }}
            </div>

            <div class="d-flex align-items-center justify-content-between mb-4">
                <h6 class="mb-0">All Category</h6>
                <Link href="/admin/category/create" class="btn btn-outline-primary btn-sm">Add New</Link>
            </div>
            <div class="table-responsive">
                <table class="table text-start align-middle table-bordered table-hover mb-0">
                    <thead>
                        <tr class="text-dark">
                            <th>#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Description</th>
                            <th scope="col">Image</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="(category, index) in categories" :key="category.id" class="text-center">
                            <td>{{ index + 1 }}</td>
                            <td>{{ category.name }}</td>
                            <td>{{ category.description.length > 30 ? category.description.slice(0, 30) + '...' : category.description }}</td>

                            <td>
                                <img :src="'/' + category.image" alt="" height="70" width="70" class="rounded-circle">
                            </td>
                            <td>
                                <Link class="btn btn-sm btn-primary me-2" :href="`/admin/category/${category.id}/edit`">Edit</Link>
                                <Link class="btn btn-sm btn-danger" @click.prevent="DeleteCategory(category.id)">Delete</Link>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</template>