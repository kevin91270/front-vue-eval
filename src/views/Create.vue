<template>
    <div>
 
                    <h2> Creer film </h2>
                    <form  v-on:submit.prevent="createPost">
                        <div class="form-group">
                            <label for="title">Titre</label>
                            <input type="text" class="form-control" id="title" placeholder="Titre" v-model="form.title">
                        </div>
                        <div class="form-group">
                            <label for="duration">Durée</label>
                            <input type="duration" class="form-control" id="duration" placeholder="2"
                                v-model="form.duration">
                        </div>  
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>  
                    </form>
    </div>
</template>  
    <script>
       import axios from 'axios';
       export default {
           name: "create",
            data(){         
                return{
                form:{
                    title:'',
                    duration:''
                }
            }
        },
            methods:{               
                createPost(){
                    axios.post('http://localhost:3000/movie',
                        this.form
                        
                    ) .then(response => {
                        router.go('/')
                    })
                                     
                }                
            }
        }

    </script>
  