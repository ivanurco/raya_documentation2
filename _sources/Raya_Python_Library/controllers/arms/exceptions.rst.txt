.. _arms_exceptions:

======================
Exceptions
======================

.. raw:: html

    <hr/>

================================================== ============================================================================================== 
Exception                                          Condition                                                                                     
================================================== ============================================================================================== 
``RayaArmsException``                              Exception from arms method                                                                    
``RayaArmsExternalException``                      Any specific exception raised in the execution of the command for the current robotic device  
``RayaArmsNumberOfElementsNotMatch``               The number of elements of multiples list that must match is not the same in all list          
``RayaArmsInvalidArmName``                         Not valid arm  name  for the current robotic device                                           
``RayaArmsInvalidGroupName``                       Not valid  group  name  for the current robotic device                                        
``RayaArmsInvalidArmOrGroupName``                  Not valid arm or group  name  for the current robotic device                                  
``RayaArmsInvalidJointName``                       Invalid joint name for the selected arm                                                       
``RayaArmsNotPoseArmDataAvailable``                The data about the current state of the arm is not avalaible.                                 
``RayaArmsNotPredefinedPoseAvailable``             Not valid predefined pose name for the selected arm                                           
``RayaArmsInvalidNumberOfJoints``                  The number of joints exceed the number of joints of the arm requested.                        
``RayaArmsOutOfLimits``                            The joint position requested is out of the limits.                                            
``RayaArmsPredefinedPoseEmptyName``                The Predefined pose name is empty.                                                            
``RayaArmsPredefinedPoseNameAlreadyExist``         The predefined pose name is already in use.                                                   
``RayaArmsPredefinedPoseNameNotExist``             The predefined pose with name requested is not defined.                                       
``RayaArmsPredefinedTrajectoryNameNotExist``       The predefined trajectory with name requested is not defined.                                 
``RayaArmsPredefinedTrajectoryNameAlreadyExist``   The predefined trajectory name is already in use.                                             
``RayaArmsErrorParsingPredefinedTrajectory``       The predefined trajectory has corrupt values or format                                        
``RayaArmsInvalidCustomCommand``                   The custom command requested doesn't exist                                                    
``RayaArmsInvalidNumberOfELements``                The number of elements for a specific list is not the indicated                               
================================================== ============================================================================================== 
