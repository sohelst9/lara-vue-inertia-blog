<script setup>

</script>

<template>
    <Head title=" | Admin Dashboard" />
    <!-- Sale & Revenue Start -->
    <div class="container-fluid pt-4 px-4">
        <div class="row g-4">
            <div class="col-sm-6 col-xl-3">
                <div class="stat-card">
                    <i class="fas fa-newspaper icon"></i>
                    <div class="text">
                        <p>Today Posts</p>
                        <h6>34</h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="stat-card">
                    <i class="fas fa-file-alt icon"></i>
                    <div class="text">
                        <p>Total Posts</p>
                        <h6>234</h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="stat-card">
                    <i class="fas fa-eye icon"></i>
                    <div class="text">
                        <p>Today Views</p>
                        <h6>1234</h6>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-xl-3">
                <div class="stat-card">
                    <i class="fas fa-comments icon"></i>
                    <div class="text">
                        <p>Total Comments</p>
                        <h6>1234</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Sale & Revenue End -->

    <!-- Recent Sales Start -->
    <div class="container-fluid pt-4 px-4">
        <div class="bg-light text-center rounded p-4">
            <div class="d-flex align-items-center justify-content-between mb-4">
                <h6 class="mb-0">Recent Sales</h6>
                <a href="" class="btn btn-outline-primary btn-sm">Show All</a>
            </div>
            <div class="table-responsive">
                <table class="table text-start align-middle table-bordered table-hover mb-0">
                    <thead>
                        <tr class="text-dark">
                            <th>#</th>
                            <th scope="col">Date</th>
                            <th scope="col">Invoice</th>
                            <th scope="col">Customer</th>
                            <th scope="col">Amount</th>
                            <th scope="col">Status</th>
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr v-for="i in 5" :key="i">
                            <td>1</td>
                            <td>01 Jan 2045</td>
                            <td>INV-0123</td>
                            <td>John Doe</td>
                            <td>$123</td>
                            <td><span class="badge bg-success">Paid</span></td>
                            <td><a class="btn btn-sm btn-primary" href="">Detail</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <!-- Recent Sales End -->
</template>

<style scoped>
/* Improved Card Design */
.stat-card {
    background: linear-gradient(135deg, #6a11cb, #2575fc);
    color: white;
    border-radius: 12px;
    padding: 20px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s ease-in-out;
}

.stat-card:hover {
    transform: translateY(-5px);
}

.stat-card .icon {
    font-size: 2.5rem;
    color: white;
}

.stat-card .text p {
    margin: 0;
    font-size: 1rem;
    opacity: 0.8;
}

.stat-card .text h6 {
    margin: 0;
    font-size: 1.5rem;
}

/* Improved Table Design */
.table thead {
    background: #2575fc;
    color: white;
}

.table tbody tr:hover {
    background: rgba(0, 0, 255, 0.1);
}

.badge {
    font-size: 0.85rem;
    padding: 5px 10px;
    border-radius: 6px;
}
</style>
