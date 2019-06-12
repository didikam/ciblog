<h2><?php echo $post['title']; ?></h2>
<div class="post-body">
	<small class="post-date">Posted on: <?php echo $post['created_at']; ?></small>
	<div class="col-md-4">
		<img class="post-thumb" src="<?php echo(base_url()); ?>assets/images/posts/<?php echo($post['post_image']); ?>">
	</div>
	<?php echo $post['body']; ?>
</div>
<?php if ($this->session->userdata('user_id') == $post['user_id']) { ?>
<hr>
<?php echo form_open('/posts/delete/'.$post['id']); ?>
	<a class="btn btn-warning pull-left" href="edit/<?php echo($post['slug']); ?>">Edit</a>
	<input type="submit" value="Delete" class="btn btn-danger">
</form>
<?php }  ?>
<hr>
<h3>Comments</h3>
<?php if($comments){
	foreach ($comments as $comment) { ?>
		<div class="alert alert-dismissible alert-light">
			<h5><?php echo $comment['body']; ?> [by <strong><?php echo $comment['name']; ?>]</strong></h5>
		</div>
		<?php
	}
}else{
	?> <p>No Comments To Display</p> <?php
} ?>
<h3>Add Comment</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
	<div class="form-group">
		<label>Name</label>
		<input type="tex
		" name="name" class="form-control">
	</div>
	<div class="form-group">
		<label>Email</label>
		<input type="text" name="email" class="form-control">
	</div>
	<div class="form-group">
		<label>Body</label>
		<textarea name="body" class="form-control"></textarea>
	</div>
	<input type="hidden" name="slug" value="<?php echo($post['slug']); ?>">
	<button class="btn btn-primary" type="submit">Submit</button>
</form>