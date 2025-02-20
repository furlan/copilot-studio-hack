DROP TABLE [dbo].[I_PMNotifMaintenanceData];
DROP TABLE [dbo].[I_MaintNotificationActyData];
DROP TABLE [dbo].[I_MaintNotificationCauseData];
DROP TABLE [dbo].[I_MaintNotificationItemData];
DROP TABLE [dbo].[I_MaintNotificationTaskData];

CREATE TABLE I_PMNotifMaintenanceData (
MANDT CHAR(3), 
MAINTENANCENOTIFICATION CHAR(12), 
MAINTOBJECTLOCACCTASSGMTNMBR CHAR(12), 
MALFUNCTIONEFFECT CHAR(1), 
EQUIPMENT CHAR(18), 
ASSEMBLY CHAR(40), 
MAINTENANCEPLANNINGPLANT CHAR(4), 
MAINTENANCEPLANNERGROUP CHAR(3), 
LOCATIONDESCRIPTION CHAR(50), 
MAINTENANCEOBJECTISDOWN CHAR(1), 
MALFUNCTIONSTARTDATE CHAR(8), 
MALFUNCTIONENDDATE CHAR(8), 
MALFUNCTIONSTARTTIME CHAR(6), 
MALFUNCTIONENDTIME CHAR(6), 
INSPECTIONDATE CHAR(8), 
INSPECTEDBYUSER CHAR(12), 
MAINTENANCEREVISION CHAR(8), 
MAINTOBJECTDOWNTIMEDURATION REAL, 
MAINTOBJDOWNTIMEDURATIONUNIT CHAR(3), 
SALESDOCUMENT CHAR(10), 
SALESDOCUMENTITEM INT, 
MAINTENANCEPLAN CHAR(12), 
MAINTENANCEITEM CHAR(16), 
MAINTENANCEACTIVITYTYPE CHAR(3), 
RELEVANTFUNCTIONALLOCATION CHAR(30), 
RELEVANTEQUIPMENT CHAR(18), 
AVAILYBEFOREMALFUNCTIONPERCENT INT, 
AVAILYAFTERMALFUNCTIONPERCENT INT, 
AVAILYAFTERCONCLUSIONPERCENT INT, 
SYSTCONDITIONBEFOREMALFUNCTION CHAR(1), 
SYSTCONDITIONAFTERMALFUNCTION CHAR(1), 
SYSTCONDITIONAFTERCOMPLETION CHAR(1), 
LATESTACCEPTABLECOMPLETIONDATE CHAR(8), 
NOTIFICATIONPERSONRESPONSIBLE CHAR(12), 
MAINTNOTIFPROCESSPHASECODE CHAR(2), 
MAINTNOTIFPROCESSSUBPHASECODE CHAR(4), 
MAINTNOTIFREJECTIONREASONCODE CHAR(3), 
MAINTENANCEPLANCALLNUMBER INT, 
MAINTENANCETASKLISTTYPE CHAR(1), 
TASKLISTGROUP CHAR(8), 
TASKLISTGROUPCOUNTER CHAR(2), 
MAINTNOTIFDETECTIONCATALOG CHAR(2), 
MAINTNOTIFDETECTIONCODEGROUP CHAR(8), 
MAINTNOTIFDETECTIONCODE CHAR(4), 
MAINTNOTIFPROCESSINGCONTEXT CHAR(2), 
PREVIOUSFINALDUEDATE CHAR(8), 
PRIMARY KEY (
	MAINTENANCENOTIFICATION
	)
);

CREATE TABLE I_MaintNotificationActyData (
MANDT CHAR(3), 
MAINTNOTIFICATIONACTIVITY CHAR(4), 
MAINTENANCENOTIFICATION CHAR(12), 
MAINTENANCENOTIFICATIONITEM CHAR(4), 
MAINTNOTIFACTYTXT CHAR(40), 
MAINTNOTIFICATIONACTIVITYCODE CHAR(4), 
MAINTNOTIFACTIVITYCODEGROUP CHAR(8), 
MAINTNOTIFACTIVITYCODECATALOG CHAR(1), 
ISDELETED CHAR(1), 
LASTCHANGEDATETIME DECIMAL(15,2), 
ASSEMBLYHEADER CHAR(40), 
EQUIPMENT CHAR(18), 
FUNCTIONALLOCATION CHAR(30), 
MAINTENANCEPLANNINGPLANT CHAR(4), 
MAINTENANCEPLANNERGROUP CHAR(3), 
MAINTENANCEPLANT CHAR(4), 
CONTROLLINGAREA CHAR(4), 
COSTCENTER CHAR(10), 
NOTIFICATIONORIGIN CHAR(2), 
NOTIFICATIONTYPE CHAR(2), 
NOTIFICATIONCREATIONDATE CHAR(8), 
ASSEMBLY CHAR(40), 
MAINTNOTIFDAMAGECODECATALOG CHAR(1), 
MAINTNOTIFICATIONDAMAGECODE CHAR(4), 
MAINTNOTIFDAMAGECODEGROUP CHAR(8), 
DEFECTCLASS CHAR(2), 
MAINTNOTIFOBJPRTCODE CHAR(4), 
MAINTNOTIFOBJPRTCODEGROUP CHAR(8), 
MAINTNOTIFOBJPRTCODECATALOG CHAR(1), 
NUMBEROFMAINTNOTIFACTIVITIES INT,
PRIMARY KEY (
        MAINTNOTIFICATIONACTIVITY, 
        MAINTENANCENOTIFICATION
    )
);

CREATE TABLE I_MaintNotificationCauseData (
MANDT CHAR(3), 
MAINTENANCENOTIFICATIONCAUSE CHAR(4), 
MAINTENANCENOTIFICATION CHAR(12), 
MAINTENANCENOTIFICATIONITEM CHAR(4), 
MAINTNOTIFCAUSETEXT CHAR(40), 
MAINTNOTIFICATIONCAUSECODE CHAR(4), 
MAINTNOTIFCAUSECODEGROUP CHAR(8), 
MAINTNOTIFCAUSECODECATALOG CHAR(1), 
ISDELETED CHAR(1), 
LASTCHANGEDATETIME DECIMAL(15,2), 
ASSEMBLYHEADER CHAR(40), 
EQUIPMENT CHAR(18), 
FUNCTIONALLOCATION CHAR(30), 
MAINTENANCEPLANNINGPLANT CHAR(4), 
MAINTENANCEPLANNERGROUP CHAR(3), 
MAINTENANCEPLANT CHAR(4), 
CONTROLLINGAREA CHAR(4), 
COSTCENTER CHAR(10), 
NOTIFICATIONORIGIN CHAR(2), 
NOTIFICATIONTYPE CHAR(2), 
NOTIFICATIONCREATIONDATE CHAR(8), 
ASSEMBLY CHAR(40), 
MAINTNOTIFDAMAGECODECATALOG CHAR(1), 
MAINTNOTIFICATIONDAMAGECODE CHAR(4), 
MAINTNOTIFDAMAGECODEGROUP CHAR(8), 
DEFECTCLASS CHAR(2), 
MAINTNOTIFOBJPRTCODE CHAR(4), 
MAINTNOTIFOBJPRTCODEGROUP CHAR(8), 
MAINTNOTIFOBJPRTCODECATALOG CHAR(1), 
NUMBEROFMAINTNOTIFCAUSES INT, 
PRIMARY KEY (
        MAINTENANCENOTIFICATIONCAUSE, 
        MAINTENANCENOTIFICATION,
		MAINTENANCENOTIFICATIONITEM
    )
);

CREATE TABLE I_MaintNotificationItemData (
MANDT CHAR(3), 
MAINTENANCENOTIFICATIONITEM CHAR(4), 
MAINTENANCENOTIFICATION CHAR(12), 
MAINTNOTIFITEMTEXT CHAR(40), 
MAINTNOTIFDAMAGECODECATALOG CHAR(1), 
MAINTNOTIFICATIONDAMAGECODE CHAR(4), 
MAINTNOTIFDAMAGECODEGROUP CHAR(8), 
ISDELETED CHAR(1), 
MAINTNOTIFOBJPRTCODE CHAR(4), 
MAINTNOTIFOBJPRTCODEGROUP CHAR(8), 
MAINTNOTIFOBJPRTCODECATALOG CHAR(1), 
DEFECTCLASS CHAR(2), 
ASSEMBLY CHAR(40), 
LASTCHANGEDATETIME DECIMAL(15,2), 
ASSEMBLYHEADER CHAR(40), 
EQUIPMENT CHAR(18), 
FUNCTIONALLOCATION CHAR(30), 
MAINTENANCEPLANNINGPLANT CHAR(4), 
MAINTENANCEPLANNERGROUP CHAR(3), 
MAINTENANCEPLANT CHAR(4), 
CONTROLLINGAREA CHAR(4), 
COSTCENTER CHAR(10), 
NOTIFICATIONORIGIN CHAR(2), 
NOTIFICATIONTYPE CHAR(2), 
NOTIFICATIONCREATIONDATE CHAR(8), 
LINEARDATASTARTPOINT CHAR(18), 
LINEARDATAENDPOINT CHAR(18), 
LINEARDATALENGTH DECIMAL(31), 
LINEARDATAUNITOFMEASURE CHAR(3), 
NUMBEROFDEFECTS INT, 
PRIMARY KEY (
        MAINTENANCENOTIFICATIONITEM, 
        MAINTENANCENOTIFICATION
    )
);

CREATE TABLE I_MaintNotificationTaskData (
MANDT CHAR(3), 
MAINTENANCENOTIFICATIONTASK CHAR(4), 
MAINTENANCENOTIFICATION CHAR(12), 
MAINTENANCENOTIFICATIONITEM CHAR(4), 
MAINTNOTIFTASKTXT CHAR(40), 
MAINTNOTIFTASKCODE CHAR(4), 
MAINTNOTIFTASKCODEGROUP CHAR(8), 
MAINTNOTIFTASKCODECATALOG CHAR(1), 
ISDELETED CHAR(1), 
LASTCHANGEDATETIME DECIMAL(15,2), 
ASSEMBLYHEADER CHAR(40), 
EQUIPMENT CHAR(18), 
FUNCTIONALLOCATION CHAR(30), 
MAINTENANCEPLANNINGPLANT CHAR(4), 
MAINTENANCEPLANNERGROUP CHAR(3), 
MAINTENANCEPLANT CHAR(4), 
CONTROLLINGAREA CHAR(4), 
COSTCENTER CHAR(10), 
NOTIFICATIONORIGIN CHAR(2), 
NOTIFICATIONTYPE CHAR(2), 
NOTIFICATIONCREATIONDATE CHAR(8), 
ASSEMBLY CHAR(40), 
MAINTNOTIFDAMAGECODECATALOG CHAR(1), 
MAINTNOTIFICATIONDAMAGECODE CHAR(4), 
MAINTNOTIFDAMAGECODEGROUP CHAR(8), 
DEFECTCLASS CHAR(2), 
MAINTNOTIFOBJPRTCODE CHAR(4), 
MAINTNOTIFOBJPRTCODEGROUP CHAR(8), 
MAINTNOTIFOBJPRTCODECATALOG CHAR(1), 
NUMBEROFMAINTNOTIFTASKS INT, 
NROFMAINTNOTIFSUCCSSFLTASKS INT, 
NROFMAINTNOTIFACTIVETASKS INT, 
PRIMARY KEY (
	MAINTENANCENOTIFICATIONTASK,
	MAINTENANCENOTIFICATION
	)
)
