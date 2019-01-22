                  <?php 
                    $librarian = $this->db->get(librarian)->result_array();
                    foreach ($librarian as $row) 
                    $teacher_id =  $row['teacher_id'];
                  ?>

              <a href="#" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_librarian/<?php echo $row['librarian_id'];?>');"
                class="btn btn-primary pull-left">
                  <?php 
                    $teachers   =   $this->db->get_where('teacher' , array('teacher_id'=>$teacher_id))->result_array();
                                foreach($teachers as $row):
                    echo get_phrase('Librarian: '.$row['name'] );
                    endforeach
                  ?>

                </a> 
               <a href="javascript:;" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_book_add/');" 
                class="btn btn-primary pull-right">
                  <i class="entypo-plus-circled"></i>
                  <?php echo get_phrase('add_new_book');?>
                </a> 
                <br><br>
               <table class="table table-bordered datatable" id="table_export">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th><div><?php echo get_phrase('name');?></div></th>
                            <th><div><?php echo get_phrase('description');?></div></th>
                            <th><div><?php echo get_phrase('author');?></div></th>
                            <th><div><?php echo get_phrase('class_id');?></div></th>
                            <th><div><?php echo get_phrase('status');?></div></th>
                            <th><div><?php echo get_phrase('price');?></div></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $count = 1; 
                            $parents   =   $this->db->get('book' )->result_array();
                            foreach($parents as $row):?>
                        <tr>
                            <td><?php echo $count++;?></td>
                            <td><?php echo $row['name'];?></td>
                            <td><?php echo $row['description'];?></td>
                            <td><?php echo $row['author'];?></td>
                            <td><?php echo $row['class_id'];?></td>
                            <td><?php echo $row['status'];?></td>
                            <td><?php echo $row['price'];?></td>
                            <td>
                                
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-sm dropdown-toggle" data-toggle="dropdown">
                                        Action <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu dropdown-default pull-right" role="menu">
                                        
                                        <!-- teacher EDITING LINK -->
                                        <li>
                                            <a href="#" onclick="showAjaxModal('<?php echo base_url();?>index.php?modal/popup/modal_book_edit/<?php echo $row['book_id'];?>');">
                                                <i class="entypo-pencil"></i>
                                                    <?php echo get_phrase('edit');?>
                                                </a>
                                                        </li>
                                        <li class="divider"></li>
                                        
                                        <!-- teacher DELETION LINK -->
                                        <li>
                                            <a href="#" onclick="confirm_modal('<?php echo base_url();?>index.php?admin/book/delete/<?php echo $row['book_id'];?>');">
                                                <i class="entypo-trash"></i>
                                                    <?php echo get_phrase('delete');?>
                                                </a>
                                                        </li>
                                    </ul>
                                </div>
                                
                            </td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>



