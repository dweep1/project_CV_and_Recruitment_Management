<!-- Begin Main Menu -->
<div class="ewMenu">
<?php $RootMenu = new crMenu(EWR_MENUBAR_ID); ?>
<?php

// Generate all menu items
$RootMenu->IsRoot = TRUE;
$RootMenu->AddMenuItem(17, "mi_JobPosition_Vs_Job_Offered_Candidates", $ReportLanguage->Phrase("CrosstabReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("17", "MenuText") . $ReportLanguage->Phrase("CrosstabReportMenuItemSuffix"), "JobPosition_Vs_Job_Offered_Candidatesctb.php", -1, "", TRUE, FALSE);
$RootMenu->AddMenuItem(18, "mi_JobPosition_Vs_Job_Offered_Candidates_job_position_vs_job_offered_Candidates", $ReportLanguage->Phrase("ChartReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("18", "MenuText") . $ReportLanguage->Phrase("ChartReportMenuItemSuffix"), "JobPosition_Vs_Job_Offered_Candidatesctb.php#cht_JobPosition_Vs_Job_Offered_Candidates_job_position_vs_job_offered_Candidates", 17, "", TRUE, FALSE);
$RootMenu->AddMenuItem(21, "mi_University_VS_Job_Offered_Candidates", $ReportLanguage->Phrase("CrosstabReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("21", "MenuText") . $ReportLanguage->Phrase("CrosstabReportMenuItemSuffix"), "University_VS_Job_Offered_Candidatesctb.php", -1, "", TRUE, FALSE);
$RootMenu->AddMenuItem(22, "mi_University_VS_Job_Offered_Candidates_University_Vs_Job_Position", $ReportLanguage->Phrase("ChartReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("22", "MenuText") . $ReportLanguage->Phrase("ChartReportMenuItemSuffix"), "University_VS_Job_Offered_Candidatesctb.php#cht_University_VS_Job_Offered_Candidates_University_Vs_Job_Position", 21, "", TRUE, FALSE);
$RootMenu->AddMenuItem(24, "mi_Job_Position_Vs_Number_of_Interviews", $ReportLanguage->Phrase("CrosstabReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("24", "MenuText") . $ReportLanguage->Phrase("CrosstabReportMenuItemSuffix"), "Job_Position_Vs_Number_of_Interviewsctb.php", -1, "", TRUE, FALSE);
$RootMenu->AddMenuItem(25, "mi_Job_Position_Vs_Number_of_Interviews_Job_Positions_Vs_Number_of_Interviews", $ReportLanguage->Phrase("ChartReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("25", "MenuText") . $ReportLanguage->Phrase("ChartReportMenuItemSuffix"), "Job_Position_Vs_Number_of_Interviewsctb.php#cht_Job_Position_Vs_Number_of_Interviews_Job_Positions_Vs_Number_of_Interviews", 24, "", TRUE, FALSE);
$RootMenu->AddMenuItem(28, "mi_Job_Position_Vs_Rejected_Candidates", $ReportLanguage->Phrase("CrosstabReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("28", "MenuText") . $ReportLanguage->Phrase("CrosstabReportMenuItemSuffix"), "Job_Position_Vs_Rejected_Candidatesctb.php", -1, "", TRUE, FALSE);
$RootMenu->AddMenuItem(29, "mi_Job_Position_Vs_Rejected_Candidates_Job_Position_Vs_Number_of_Rejected_Candidates", $ReportLanguage->Phrase("ChartReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("29", "MenuText") . $ReportLanguage->Phrase("ChartReportMenuItemSuffix"), "Job_Position_Vs_Rejected_Candidatesctb.php#cht_Job_Position_Vs_Rejected_Candidates_Job_Position_Vs_Number_of_Rejected_Candidates", 28, "", TRUE, FALSE);
$RootMenu->AddMenuItem(31, "mi_University_Vs_Rejected_Candidates", $ReportLanguage->Phrase("CrosstabReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("31", "MenuText") . $ReportLanguage->Phrase("CrosstabReportMenuItemSuffix"), "University_Vs_Rejected_Candidatesctb.php", -1, "", TRUE, FALSE);
$RootMenu->AddMenuItem(32, "mi_University_Vs_Rejected_Candidates_University_Vs_Number_of_Rejected_Candidates", $ReportLanguage->Phrase("ChartReportMenuItemPrefix") . $ReportLanguage->MenuPhrase("32", "MenuText") . $ReportLanguage->Phrase("ChartReportMenuItemSuffix"), "University_Vs_Rejected_Candidatesctb.php#cht_University_Vs_Rejected_Candidates_University_Vs_Number_of_Rejected_Candidates", 31, "", TRUE, FALSE);
$RootMenu->Render();
?>
</div>
<!-- End Main Menu -->
