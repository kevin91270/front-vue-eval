<template>
<div >
        <router-view/>    
        <button v-on:click="getPost()">Afficher les films</button>
        <ul>
            <li v-for="post in posts" :key="post">{{ post.title }}</li>
        </ul>

    </div>
</template>
    <script>
    import axios from 'axios';
    export default {
            data(){
                return {
                posts: []
                }           
        },
            methods:{
                getPost(){
                    axios.get('http://localhost:3000/movies')
                    .then(response=> this.posts = response.data)
                    .catch(erreur=> this.posts = [{title:"Erreur de chargement"}]);
                },                             
            }
        }

    </script>