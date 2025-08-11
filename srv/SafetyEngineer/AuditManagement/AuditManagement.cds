using EVA as EVA from '../../../db/EVA_schema';

service AuditMgmtSFE{
    //_____________________________________________Master data_________________________________________________________//

    // Label list
    entity hmomiwjh99kous85 as select from EVA.M.LABELLIST;

    // Employee list
    entity emoktpj1rpkousr4 as select from EVA.M.EMPLOYEELIST;

    // Department list
    entity dp8k12j1rpmeusnt as select from EVA.M.DEPARTMENTLIST;

    // Audit category level 2
    entity gx6eowia14mvurdu as select from EVA.M.AUDITCHECKLISTLV2;

    //Dropdown data
    entity cipdbnc0j0cq6hem as select from EVA.M.DROPDOWNDATA;

    //Corrective actions cause and description
    entity j07f9k3745bar1pi as select from EVA.M.CACAUSEANDDESC;

    // Session user info
    entity usp12k374kkpr1ki as select from EVA.M.USERINFO;

    
} 