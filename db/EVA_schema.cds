namespace EVA;

context M {
    @cds.persistence.exists 
    @cds.persistence.calcview 
    Entity ROLEWISEPATH (INRGUID : String(20)){
    key RLPID: Integer  @title: 'RLPID: primary key' ; 
        ROLPH: String(250)  @title: 'ROLPH: Role path' ; 
        RGUID: String(20)  @title: 'RGUID: GUID' ; 
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity AUDITCATEGORYLVL1 {
        key CHLID : Integer     @title: 'CHLID: primary key';
            PRTID : Integer     @title: 'PRTID: Parent id';
            CLUSE : String(5)   @title: 'CLUSE: Clause ID';
            CLDES : String(500) @title: 'CLDES: Clause Description';
            COLID : Integer     @title: 'COLID: Column id';
            LBLVL : Integer     @title: 'LBLVL: Label Level';
            UNQID : Integer     @title: 'UNQID: Unique id';
            ISACT : Int16       @title: 'ISACT: Is value active 1 yes 0 no';
            gx6eowia14mvurdu : Association to many AUDITCHECKLISTLV2
                            on gx6eowia14mvurdu.UNQID = UNQID;
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity AUDITCHECKLISTLV2 {
        key CHLID : Integer     @title: 'CHLID: primary key';
            PRTID : Integer     @title: 'PRTID: Parent id';
            CLUSE : String(5)   @title: 'CLUSE: Clause ID';
            CLDES : String(500) @title: 'CLDES: Clause Description';
            COLID : Integer     @title: 'COLID: Column id';
            LBLVL : Integer     @title: 'LBLVL: Label Level';
            UNQID : Integer     @title: 'UNQID: Unique id';
            ISACT : Int16       @title: 'ISACT: Is value active 1 yes 0 no';
    }


    @cds.persistence.exists
    @cds.persistence.calcview
    entity CACAUSEANDDESC {
        key UNQID : Integer     @title: 'UNQID: Unique Id';
            TYVAL : String(100) @title: 'TYVAL: Master Data Type Value';
            TXVAL : String(100) @title: 'TXVAL: Text Value';
            PRNID : Integer     @title: 'PRNID: Parent Id';
            ISACT : Int16       @title: 'ISACT: Is active 1 yes 0 no';
    }


    @cds.persistence.exists
    @cds.persistence.calcview
    entity DEPARTMENTLIST {
        key DEPTC : String(10)  @title: 'DEPTC: Department Code';
            DEPNM : String(200) @title: 'DEPNM: DEPNM';
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity DROPDOWNDATA {
        key UNQID : Integer    @title: 'UNQID: Unique Mater Data ID';
            TYVAL : String(50) @title: 'TYVAL: Master Data Type Value';
            ISACT : Int16      @title: 'ISACT: Is active flag - 1 true , 0 false';
            COLID : Integer    @title: 'COLID: Column Id';
    }

    @cds.persistence.exists
    @cds.persistence.calcview
    entity EMPLOYEELIST {
        key EMPID : String(30)  @title: 'EMPID: Employee Id';
            EMPNM : String(250) @title: 'EMPNM: Employee Name';
    }


    @cds.persistence.exists
    @cds.persistence.calcview
    entity LABELLIST {
        key UNQID : Integer     @title: 'UNQID: Unique label id';
            LABTY : String(250) @title: 'LABTY: Label type';
            LABTX : String(500) @title: 'LABTX: Label text';
            LABIM : Int16       @title: 'LABIM: is mandatory';
    }



    @cds.persistence.exists
    @cds.persistence.calcview
    entity USERINFO {
        key EMPID : String(30)  @title: 'EMPID: Employee Id';
            EMPNM : String(250) @title: 'EMPNM: Employee Name';
            EMAIL : String(250) @title: 'EMAIL: corporate email';
            SUPID : String(30)  @title: 'SUPID: Supervisor Id';
            SUPNM : String(250) @title: 'SUPNM: Supervisor Name';
            USRID : String(30)  @title: 'USRID: USRID';
            POSIT : String(200) @title: 'POSIT: Position';
            DEPTC : String(10)  @title: 'DEPTC: Department Code';
            DEPNM : String(200) @title: 'DEPNM: DEPNM';
            PHONE : String(50)  @title: 'PHONE: phone number';
    }
}