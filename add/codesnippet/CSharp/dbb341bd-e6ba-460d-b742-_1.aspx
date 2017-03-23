<%@ page language="C#"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

  // Programmatically create a Wizard control and dynamically
  // add WizardStep objects to it.    
  
  void Page_Load(object sender, EventArgs e) 
  {
    Wizard WizardControl = new Wizard();
      
    // Create some steps for the wizard and add them
    // to the Wizard control.
    for (int i = 0; i <= 5; i++)
    {
      WizardStepBase newStep = new WizardStep();
      newStep.ID = "Step" + (i + 1).ToString();
      WizardControl.WizardSteps.Add(newStep);
    }
    
    // Display the wizard on the page.
    PlaceHolder1.Controls.Add(WizardControl);
  }
  
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
  <head runat="server">
    <title>WizardSteps Example</title>
</head>
<body>
    <form id="Form1" runat="server">
      <h3>WizardSteps Example</h3>
      <asp:PlaceHolder id="PlaceHolder1" 
        runat="server" />
    </form>
  </body>
</html>