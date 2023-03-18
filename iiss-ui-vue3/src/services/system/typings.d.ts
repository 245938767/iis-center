declare namespace API {
  type allocatedListUsingGETParams = {
    admin?: boolean;
    avatar?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    'dept.ancestors'?: string;
    'dept.createBy'?: string;
    'dept.createTime'?: string;
    'dept.delFlag'?: string;
    'dept.deptId'?: number;
    'dept.deptName': string;
    'dept.email'?: string;
    'dept.leader'?: string;
    'dept.orderNum': number;
    'dept.params'?: Record<string, any>;
    'dept.parentId'?: number;
    'dept.parentName'?: string;
    'dept.phone'?: string;
    'dept.remark'?: string;
    'dept.searchValue'?: string;
    'dept.status'?: string;
    'dept.updateBy'?: string;
    'dept.updateTime'?: string;
    deptId?: number;
    email?: string;
    loginDate?: string;
    loginIp?: string;
    nickName?: string;
    params?: Record<string, any>;
    password?: string;
    phonenumber?: string;
    postIds?: number[];
    remark?: string;
    roleId?: number;
    roleIds?: number[];
    'roles[0].admin'?: boolean;
    'roles[0].createBy'?: string;
    'roles[0].createTime'?: string;
    'roles[0].dataScope'?: string;
    'roles[0].delFlag'?: string;
    'roles[0].deptCheckStrictly'?: boolean;
    'roles[0].deptIds'?: number[];
    'roles[0].flag'?: boolean;
    'roles[0].menuCheckStrictly'?: boolean;
    'roles[0].menuIds'?: number[];
    'roles[0].params'?: Record<string, any>;
    'roles[0].permissions'?: string[];
    'roles[0].remark'?: string;
    'roles[0].roleId'?: number;
    'roles[0].roleKey': string;
    'roles[0].roleName': string;
    'roles[0].roleSort': string;
    'roles[0].searchValue'?: string;
    'roles[0].status'?: string;
    'roles[0].updateBy'?: string;
    'roles[0].updateTime'?: string;
    searchValue?: string;
    sex?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userId?: number;
    userName: string;
  };

  type authBindingUsingGETParams = {
    /** source */
    source: string;
  };

  type authRoleUsingGETParams = {
    /** userId */
    userId: number;
  };

  type cancelAuthUserAllUsingPUTParams = {
    /** roleId */
    roleId?: number;
    /** userIds */
    userIds?: number;
  };

  type deptTreeUsingGET1Params = {
    ancestors?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    deptId?: number;
    deptName: string;
    email?: string;
    leader?: string;
    orderNum: number;
    params?: Record<string, any>;
    parentId?: number;
    parentName?: string;
    phone?: string;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type deptTreeUsingGETParams = {
    /** roleId */
    roleId: number;
  };

  type dictTypeUsingGETParams = {
    /** dictType */
    dictType: string;
  };

  type excludeChildUsingGETParams = {
    /** deptId */
    deptId: number;
  };

  type exportUsingPOST1Params = {
    createBy?: string;
    createTime?: string;
    cssClass?: string;
    default?: boolean;
    dictCode?: number;
    dictLabel: string;
    dictSort?: number;
    dictType: string;
    dictValue: string;
    isDefault?: string;
    listClass?: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type exportUsingPOST2Params = {
    createBy?: string;
    createTime?: string;
    dictId?: number;
    dictName: string;
    dictType: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type exportUsingPOST3Params = {
    accessTime?: string;
    createBy?: string;
    createTime?: string;
    infoId?: number;
    ipaddr?: string;
    msg?: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userName?: string;
  };

  type exportUsingPOST4Params = {
    businessType?: number;
    businessTypes?: number[];
    createBy?: string;
    createTime?: string;
    deptName?: string;
    errorMsg?: string;
    jsonResult?: string;
    method?: string;
    operId?: number;
    operIp?: string;
    operName?: string;
    operParam?: string;
    operTime?: string;
    operUrl?: string;
    operatorType?: number;
    params?: Record<string, any>;
    remark?: string;
    requestMethod?: string;
    searchValue?: string;
    status?: number;
    title?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type exportUsingPOST5Params = {
    createBy?: string;
    createTime?: string;
    flag?: boolean;
    params?: Record<string, any>;
    postCode: string;
    postId?: number;
    postName: string;
    postSort: string;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type exportUsingPOST6Params = {
    admin?: boolean;
    createBy?: string;
    createTime?: string;
    dataScope?: string;
    delFlag?: string;
    deptCheckStrictly?: boolean;
    deptIds?: number[];
    flag?: boolean;
    menuCheckStrictly?: boolean;
    menuIds?: number[];
    params?: Record<string, any>;
    permissions?: string[];
    remark?: string;
    roleId?: number;
    roleKey: string;
    roleName: string;
    roleSort: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type exportUsingPOST7Params = {
    admin?: boolean;
    avatar?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    'dept.ancestors'?: string;
    'dept.createBy'?: string;
    'dept.createTime'?: string;
    'dept.delFlag'?: string;
    'dept.deptId'?: number;
    'dept.deptName': string;
    'dept.email'?: string;
    'dept.leader'?: string;
    'dept.orderNum': number;
    'dept.params'?: Record<string, any>;
    'dept.parentId'?: number;
    'dept.parentName'?: string;
    'dept.phone'?: string;
    'dept.remark'?: string;
    'dept.searchValue'?: string;
    'dept.status'?: string;
    'dept.updateBy'?: string;
    'dept.updateTime'?: string;
    deptId?: number;
    email?: string;
    loginDate?: string;
    loginIp?: string;
    nickName?: string;
    params?: Record<string, any>;
    password?: string;
    phonenumber?: string;
    postIds?: number[];
    remark?: string;
    roleId?: number;
    roleIds?: number[];
    'roles[0].admin'?: boolean;
    'roles[0].createBy'?: string;
    'roles[0].createTime'?: string;
    'roles[0].dataScope'?: string;
    'roles[0].delFlag'?: string;
    'roles[0].deptCheckStrictly'?: boolean;
    'roles[0].deptIds'?: number[];
    'roles[0].flag'?: boolean;
    'roles[0].menuCheckStrictly'?: boolean;
    'roles[0].menuIds'?: number[];
    'roles[0].params'?: Record<string, any>;
    'roles[0].permissions'?: string[];
    'roles[0].remark'?: string;
    'roles[0].roleId'?: number;
    'roles[0].roleKey': string;
    'roles[0].roleName': string;
    'roles[0].roleSort': string;
    'roles[0].searchValue'?: string;
    'roles[0].status'?: string;
    'roles[0].updateBy'?: string;
    'roles[0].updateTime'?: string;
    searchValue?: string;
    sex?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userId?: number;
    userName: string;
  };

  type exportUsingPOSTParams = {
    configId?: number;
    configKey: string;
    configName: string;
    configType?: string;
    configValue: string;
    createBy?: string;
    createTime?: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type forceLogoutUsingDELETEParams = {
    /** tokenId */
    tokenId: string;
  };

  type getConfigKeyUsingGETParams = {
    /** configKey */
    configKey: string;
  };

  type getInfoUsingGET10Params = {
    /** userId */
    userId: number;
  };

  type getInfoUsingGET1Params = {
    /** deptId */
    deptId: number;
  };

  type getInfoUsingGET2Params = {
    /** dictCode */
    dictCode: number;
  };

  type getInfoUsingGET3Params = {
    /** dictId */
    dictId: number;
  };

  type getInfoUsingGET4Params = {
    /** menuId */
    menuId: number;
  };

  type getInfoUsingGET5Params = {
    /** noticeId */
    noticeId: number;
  };

  type getInfoUsingGET6Params = {
    /** postId */
    postId: number;
  };

  type getInfoUsingGET7Params = {
    /** roleId */
    roleId: number;
  };

  type getInfoUsingGET9Params = {
    /** userId */
    userId: number;
  };

  type getInfoUsingGETParams = {
    /** configId */
    configId: number;
  };

  type importDataUsingPOSTParams = {
    /** updateSupport */
    updateSupport?: boolean;
  };

  type infoUsingGETParams = {
    /** username */
    username: string;
  };

  type insertAuthRoleUsingPUTParams = {
    /** userId */
    userId?: number;
    /** roleIds */
    roleIds?: number;
  };

  type listUsingGET10Params = {
    admin?: boolean;
    avatar?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    'dept.ancestors'?: string;
    'dept.createBy'?: string;
    'dept.createTime'?: string;
    'dept.delFlag'?: string;
    'dept.deptId'?: number;
    'dept.deptName': string;
    'dept.email'?: string;
    'dept.leader'?: string;
    'dept.orderNum': number;
    'dept.params'?: Record<string, any>;
    'dept.parentId'?: number;
    'dept.parentName'?: string;
    'dept.phone'?: string;
    'dept.remark'?: string;
    'dept.searchValue'?: string;
    'dept.status'?: string;
    'dept.updateBy'?: string;
    'dept.updateTime'?: string;
    deptId?: number;
    email?: string;
    loginDate?: string;
    loginIp?: string;
    nickName?: string;
    params?: Record<string, any>;
    password?: string;
    phonenumber?: string;
    postIds?: number[];
    remark?: string;
    roleId?: number;
    roleIds?: number[];
    'roles[0].admin'?: boolean;
    'roles[0].createBy'?: string;
    'roles[0].createTime'?: string;
    'roles[0].dataScope'?: string;
    'roles[0].delFlag'?: string;
    'roles[0].deptCheckStrictly'?: boolean;
    'roles[0].deptIds'?: number[];
    'roles[0].flag'?: boolean;
    'roles[0].menuCheckStrictly'?: boolean;
    'roles[0].menuIds'?: number[];
    'roles[0].params'?: Record<string, any>;
    'roles[0].permissions'?: string[];
    'roles[0].remark'?: string;
    'roles[0].roleId'?: number;
    'roles[0].roleKey': string;
    'roles[0].roleName': string;
    'roles[0].roleSort': string;
    'roles[0].searchValue'?: string;
    'roles[0].status'?: string;
    'roles[0].updateBy'?: string;
    'roles[0].updateTime'?: string;
    searchValue?: string;
    sex?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userId?: number;
    userName: string;
  };

  type listUsingGET11Params = {
    /** ipaddr */
    ipaddr?: string;
    /** userName */
    userName?: string;
  };

  type listUsingGET1Params = {
    ancestors?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    deptId?: number;
    deptName: string;
    email?: string;
    leader?: string;
    orderNum: number;
    params?: Record<string, any>;
    parentId?: number;
    parentName?: string;
    phone?: string;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type listUsingGET2Params = {
    createBy?: string;
    createTime?: string;
    cssClass?: string;
    default?: boolean;
    dictCode?: number;
    dictLabel: string;
    dictSort?: number;
    dictType: string;
    dictValue: string;
    isDefault?: string;
    listClass?: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type listUsingGET3Params = {
    createBy?: string;
    createTime?: string;
    dictId?: number;
    dictName: string;
    dictType: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type listUsingGET4Params = {
    accessTime?: string;
    createBy?: string;
    createTime?: string;
    infoId?: number;
    ipaddr?: string;
    msg?: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userName?: string;
  };

  type listUsingGET5Params = {
    component?: string;
    createBy?: string;
    createTime?: string;
    icon?: string;
    isCache?: string;
    isFrame?: string;
    menuId?: number;
    menuName: string;
    menuType: string;
    orderNum: number;
    params?: Record<string, any>;
    parentId?: number;
    parentName?: string;
    path?: string;
    perms?: string;
    query?: string;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    visible?: string;
  };

  type listUsingGET6Params = {
    createBy?: string;
    createTime?: string;
    noticeContent?: string;
    noticeId?: number;
    noticeTitle: string;
    noticeType?: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type listUsingGET7Params = {
    businessType?: number;
    businessTypes?: number[];
    createBy?: string;
    createTime?: string;
    deptName?: string;
    errorMsg?: string;
    jsonResult?: string;
    method?: string;
    operId?: number;
    operIp?: string;
    operName?: string;
    operParam?: string;
    operTime?: string;
    operUrl?: string;
    operatorType?: number;
    params?: Record<string, any>;
    remark?: string;
    requestMethod?: string;
    searchValue?: string;
    status?: number;
    title?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type listUsingGET8Params = {
    createBy?: string;
    createTime?: string;
    flag?: boolean;
    params?: Record<string, any>;
    postCode: string;
    postId?: number;
    postName: string;
    postSort: string;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type listUsingGET9Params = {
    admin?: boolean;
    createBy?: string;
    createTime?: string;
    dataScope?: string;
    delFlag?: string;
    deptCheckStrictly?: boolean;
    deptIds?: number[];
    flag?: boolean;
    menuCheckStrictly?: boolean;
    menuIds?: number[];
    params?: Record<string, any>;
    permissions?: string[];
    remark?: string;
    roleId?: number;
    roleKey: string;
    roleName: string;
    roleSort: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type listUsingGETParams = {
    configId?: number;
    configKey: string;
    configName: string;
    configType?: string;
    configValue: string;
    createBy?: string;
    createTime?: string;
    params?: Record<string, any>;
    remark?: string;
    searchValue?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type LoginUser = {
    expireTime?: number;
    ipaddr?: string;
    loginTime?: number;
    permissions?: string[];
    roles?: string[];
    sysUser?: SysUserRes;
    token?: string;
    userid?: number;
    username?: string;
  };

  type Rboolean = {
    code?: number;
    data?: boolean;
    msg?: string;
  };

  type removeUsingDELETE10Params = {
    /** userIds */
    userIds: string;
  };

  type removeUsingDELETE1Params = {
    /** deptId */
    deptId: number;
  };

  type removeUsingDELETE2Params = {
    /** dictCodes */
    dictCodes: string;
  };

  type removeUsingDELETE3Params = {
    /** dictIds */
    dictIds: string;
  };

  type removeUsingDELETE4Params = {
    /** infoIds */
    infoIds: string;
  };

  type removeUsingDELETE5Params = {
    /** menuId */
    menuId: number;
  };

  type removeUsingDELETE6Params = {
    /** noticeIds */
    noticeIds: string;
  };

  type removeUsingDELETE7Params = {
    /** operIds */
    operIds: string;
  };

  type removeUsingDELETE8Params = {
    /** postIds */
    postIds: string;
  };

  type removeUsingDELETE9Params = {
    /** roleIds */
    roleIds: string;
  };

  type removeUsingDELETEParams = {
    /** configIds */
    configIds: string;
  };

  type RLoginUser = {
    code?: number;
    data?: LoginUser;
    msg?: string;
  };

  type roleMenuTreeselectUsingGETParams = {
    /** roleId */
    roleId: number;
  };

  type selectAuthUserAllUsingPUTParams = {
    /** roleId */
    roleId?: number;
    /** userIds */
    userIds?: number;
  };

  type socialLoginUsingGETParams = {
    auth_code?: string;
    authorization_code?: string;
    code?: string;
    oauth_token?: string;
    oauth_verifier?: string;
    /** source */
    source: string;
    state?: string;
  };

  type SysConfig = {
    configId?: number;
    configKey: string;
    configName: string;
    configType?: string;
    configValue: string;
    createBy?: string;
    createTime?: string;
    params?: Record<string, any>;
    remark?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysDept = {
    ancestors?: string;
    children?: SysDept[];
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    deptId?: number;
    deptName: string;
    email?: string;
    leader?: string;
    orderNum: number;
    params?: Record<string, any>;
    parentId?: number;
    parentName?: string;
    phone?: string;
    remark?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysDictData = {
    createBy?: string;
    createTime?: string;
    cssClass?: string;
    dictCode?: number;
    dictLabel: string;
    dictSort?: number;
    dictType: string;
    dictValue: string;
    isDefault?: string;
    listClass?: string;
    params?: Record<string, any>;
    remark?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysDictType = {
    createBy?: string;
    createTime?: string;
    dictId?: number;
    dictName: string;
    dictType: string;
    params?: Record<string, any>;
    remark?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysLogininfor = {
    accessTime?: string;
    createBy?: string;
    createTime?: string;
    infoId?: number;
    ipaddr?: string;
    msg?: string;
    params?: Record<string, any>;
    remark?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userName?: string;
  };

  type SysMenu = {
    children?: SysMenu[];
    component?: string;
    createBy?: string;
    createTime?: string;
    icon?: string;
    isCache?: string;
    isFrame?: string;
    menuId?: number;
    menuName: string;
    menuType: string;
    orderNum: number;
    params?: Record<string, any>;
    parentId?: number;
    parentName?: string;
    path?: string;
    perms?: string;
    query?: string;
    remark?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    visible?: string;
  };

  type SysNotice = {
    createBy?: string;
    createTime?: string;
    noticeContent?: string;
    noticeId?: number;
    noticeTitle: string;
    noticeType?: string;
    params?: Record<string, any>;
    remark?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysOperLog = {
    businessType?: number;
    businessTypes?: number[];
    createBy?: string;
    createTime?: string;
    deptName?: string;
    errorMsg?: string;
    jsonResult?: string;
    method?: string;
    operId?: number;
    operIp?: string;
    operName?: string;
    operParam?: string;
    operTime?: string;
    operUrl?: string;
    operatorType?: number;
    params?: Record<string, any>;
    remark?: string;
    requestMethod?: string;
    status?: number;
    title?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysPost = {
    createBy?: string;
    createTime?: string;
    flag?: boolean;
    params?: Record<string, any>;
    postCode: string;
    postId?: number;
    postName: string;
    postSort: string;
    remark?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysRole = {
    createBy?: string;
    createTime?: string;
    dataScope?: string;
    delFlag?: string;
    deptCheckStrictly?: boolean;
    deptIds?: number[];
    flag?: boolean;
    menuCheckStrictly?: boolean;
    menuIds?: number[];
    params?: Record<string, any>;
    permissions?: string[];
    remark?: string;
    roleId?: number;
    roleKey: string;
    roleName: string;
    roleSort: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysRoleReq = {
    createBy?: string;
    createTime?: string;
    dataScope?: string;
    delFlag?: string;
    deptCheckStrictly?: boolean;
    deptIds?: number[];
    flag?: boolean;
    menuCheckStrictly?: boolean;
    menuIds?: number[];
    params?: Record<string, any>;
    permissions?: string[];
    remark?: string;
    roleId?: number;
    roleKey: string;
    roleName: string;
    roleSort: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysRoleRes = {
    admin?: boolean;
    createBy?: string;
    createTime?: string;
    dataScope?: string;
    delFlag?: string;
    deptCheckStrictly?: boolean;
    deptIds?: number[];
    flag?: boolean;
    menuCheckStrictly?: boolean;
    menuIds?: number[];
    params?: Record<string, any>;
    permissions?: string[];
    remark?: string;
    roleId?: number;
    roleKey: string;
    roleName: string;
    roleSort: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
  };

  type SysUser = {
    avatar?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    dept?: SysDept;
    deptId?: number;
    email?: string;
    loginDate?: string;
    loginIp?: string;
    nickName?: string;
    params?: Record<string, any>;
    password?: string;
    phonenumber?: string;
    postIds?: number[];
    remark?: string;
    roleId?: number;
    roleIds?: number[];
    roles?: SysRole[];
    sex?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userId?: number;
    userName: string;
  };

  type SysUserReq = {
    avatar?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    dept?: SysDept;
    deptId?: number;
    email?: string;
    loginDate?: string;
    loginIp?: string;
    nickName?: string;
    params?: Record<string, any>;
    password?: string;
    phonenumber?: string;
    postIds?: number[];
    remark?: string;
    roleId?: number;
    roleIds?: number[];
    roles?: SysRoleReq[];
    sex?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userId?: number;
    userName: string;
  };

  type SysUserRes = {
    admin?: boolean;
    avatar?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    dept?: SysDept;
    deptId?: number;
    email?: string;
    loginDate?: string;
    loginIp?: string;
    nickName?: string;
    params?: Record<string, any>;
    password?: string;
    phonenumber?: string;
    postIds?: number[];
    remark?: string;
    roleId?: number;
    roleIds?: number[];
    roles?: SysRoleRes[];
    sex?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userId?: number;
    userName: string;
  };

  type SysUserRole = {
    roleId?: number;
    userId?: number;
  };

  type TableDataInfo = {
    code?: number;
    msg?: string;
    rows?: Record<string, any>[];
    total?: number;
  };

  type treeselectUsingGETParams = {
    component?: string;
    createBy?: string;
    createTime?: string;
    icon?: string;
    isCache?: string;
    isFrame?: string;
    menuId?: number;
    menuName: string;
    menuType: string;
    orderNum: number;
    params?: Record<string, any>;
    parentId?: number;
    parentName?: string;
    path?: string;
    perms?: string;
    query?: string;
    remark?: string;
    searchValue?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    visible?: string;
  };

  type unallocatedListUsingGETParams = {
    admin?: boolean;
    avatar?: string;
    createBy?: string;
    createTime?: string;
    delFlag?: string;
    'dept.ancestors'?: string;
    'dept.createBy'?: string;
    'dept.createTime'?: string;
    'dept.delFlag'?: string;
    'dept.deptId'?: number;
    'dept.deptName': string;
    'dept.email'?: string;
    'dept.leader'?: string;
    'dept.orderNum': number;
    'dept.params'?: Record<string, any>;
    'dept.parentId'?: number;
    'dept.parentName'?: string;
    'dept.phone'?: string;
    'dept.remark'?: string;
    'dept.searchValue'?: string;
    'dept.status'?: string;
    'dept.updateBy'?: string;
    'dept.updateTime'?: string;
    deptId?: number;
    email?: string;
    loginDate?: string;
    loginIp?: string;
    nickName?: string;
    params?: Record<string, any>;
    password?: string;
    phonenumber?: string;
    postIds?: number[];
    remark?: string;
    roleId?: number;
    roleIds?: number[];
    'roles[0].admin'?: boolean;
    'roles[0].createBy'?: string;
    'roles[0].createTime'?: string;
    'roles[0].dataScope'?: string;
    'roles[0].delFlag'?: string;
    'roles[0].deptCheckStrictly'?: boolean;
    'roles[0].deptIds'?: number[];
    'roles[0].flag'?: boolean;
    'roles[0].menuCheckStrictly'?: boolean;
    'roles[0].menuIds'?: number[];
    'roles[0].params'?: Record<string, any>;
    'roles[0].permissions'?: string[];
    'roles[0].remark'?: string;
    'roles[0].roleId'?: number;
    'roles[0].roleKey': string;
    'roles[0].roleName': string;
    'roles[0].roleSort': string;
    'roles[0].searchValue'?: string;
    'roles[0].status'?: string;
    'roles[0].updateBy'?: string;
    'roles[0].updateTime'?: string;
    searchValue?: string;
    sex?: string;
    status?: string;
    updateBy?: string;
    updateTime?: string;
    userId?: number;
    userName: string;
  };

  type unlockAuthUsingDELETEParams = {
    /** authId */
    authId: number;
  };

  type unlockUsingGETParams = {
    /** userName */
    userName: string;
  };

  type updatePwdUsingPUTParams = {
    /** oldPassword */
    oldPassword?: string;
    /** newPassword */
    newPassword?: string;
  };
}
