function Controller() {
    installer.setValue("TargetDir", "C:\\GNAT");
    installer.autoRejectMessageBoxes();
}

Controller.prototype.ComponentSelectionPageCallback = function()
{
    var page = gui.currentPageWidget();

    page.deselectAll();
    page.selectComponent("com.adacore.gnat");
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.LicenseAgreementPageCallback = function()
{
    var page = gui.pageById(QInstaller.LicenseCheck);

    page.AcceptLicenseRadioButton.click();
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.StartMenuDirectoryPageCallback =
Controller.prototype.IntroductionPageCallback =
Controller.prototype.TargetDirectoryPageCallback =
Controller.prototype.ReadyForInstallationPageCallback = function()
{
    gui.clickButton(buttons.NextButton);
}

Controller.prototype.FinishedPageCallback = function()
{
    gui.clickButton(buttons.FinishButton);
}
