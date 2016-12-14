
      
      $(document).ready(function() {
      $("#ccmform").validate({ 
         rules: { 
  
             patient_careplan:"required",
             ccm_amount:"required",
             ccm_hospital:"required"
        
            
    
              
         }, 
         messages: { 
           patient_careplan: "Please enter the Care Plan." ,
           ccm_amount: "Please enter the amount",
           ccm_hospital: "Please enter the Hospital Name"
         } 
          
       });
    
       
          
   }); 
   








