<?php
/* @var $this OmOrderItemController */
/* @var $model OmOrderItem */

$this->breadcrumbs=array(
	'Order Items'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Order Item', 'url'=>array('index')),
	array('label'=>'Create Order Item', 'url'=>array('create')),
	array('label'=>'View Order Item', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Order Item', 'url'=>array('admin')),
);
?>

<h1>Update Order Item <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>