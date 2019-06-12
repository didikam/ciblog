<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ciBlog</title>
    <link rel="stylesheet" href="<?= base_url(); ?>assets/flatly/bootstrap.min.css">
    <link rel="stylesheet" href="<?= base_url(); ?>assets/css/style.css">
    <script src="//cdn.ckeditor.com/4.11.4/standard/ckeditor.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <a class="navbar-brand" href="<?= base_url(); ?>">ciBlog</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor02" aria-controls="navbarColor02" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarColor02">
        <ul class="navbar-nav mr-auto">
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>posts">Posts</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>categories">Categories</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>posts/create">Create Post</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>categories/create">Create Categories</a>
          </li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <?php if (!$this->session->userdata('logged_in')) { ?>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>users/login">Log In</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>users/register">Register</a>
          </li>
        <?php }else{ ?>
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url(); ?>users/logout">Log Out</a>
          </li>
          <?php  } ?>
          <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="text" placeholder="Search">
            <button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
          </form>
        </ul>
        
      </div>
    </nav>
    <div class="container">
      <br>
      <!-- Flash messages -->
    <?php
      if($this->session->flashdata('user_registered')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>';
      }
      if($this->session->flashdata('post_created')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>';
      }
      if($this->session->flashdata('post_updated')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>';
      }
      if($this->session->flashdata('category_created')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>';
      }
      if($this->session->flashdata('category_updated')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('category_updated').'</p>';
      }
      if($this->session->flashdata('post_deleted')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>';
      }
      if($this->session->flashdata('login_failed')){
        echo '<p class="alert alert-danger">'.$this->session->flashdata('login_failed').'</p>';
      }
      if($this->session->flashdata('user_loggedin')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedin').'</p>';
      }
      if($this->session->flashdata('user_loggedout')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('user_loggedout').'</p>';
      }
      if($this->session->flashdata('category_delete')){
        echo '<p class="alert alert-success">'.$this->session->flashdata('category_delete').'</p>';
      }
    ?>