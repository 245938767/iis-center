// // import { convertToTabList } from '@/utils';
// import {getWareHouseTree} from './service';
// // import {getListWarehouseProduct} from './data';
//
// import type {ActionType} from '@ant-design/pro-table';
// import type {TabPaneProps} from 'antd';
// import {Button, Empty, Spin} from 'antd';
// import {find, first, get, partialRight} from 'lodash';
// import React, {useEffect, useRef, useState} from 'react';
// import {WAREHOUSE_PRODUCT_COLUMNS} from './constants';
// import {PageContainer} from "@ant-design/pro-layout";
// import {ProTable} from "@ant-design/pro-table";
//
// type Tab = TabPaneProps & { key?: React.Key; label?: string; [key: string]: any };
//
// const toTabList = partialRight(convertToTabList, {
//   key: 'id',
//   tab: 'warehouseName',
//   label: 'warehouseName',
// });
//
// export const getWarehouseData = (params) => {
//   return getListWarehouseProduct(params).then((resp) => {
//     return {
//       data: resp.rows,
//       success: resp.code === 200,
//       total: resp.total,
//     };
//   });
// };
//
// const Management: React.FC = () => {
//   const [warehousesTree, setWarehousesTree] = useState<any[]>([]);
//   const [tabList, setTabList] = useState<Tab[]>([]);
//   const [menuItems, setMenuItems] = useState<Tab[]>([]);
//   const [tabActiveKey, setTabActiveKey] = useState<string | undefined>();
//   const [menuActiveKey, setMenuActiveKey] = useState<React.Key | undefined>();
//   const [warehouseInfo, setWarehouseInfo] = useState<{
//     id?: React.Key;
//     warehouseName?: string;
//   }>({});
//   const [pageLoading, setPageLoading] = useState<boolean>(true);
//
//   const actionRef = useRef<ActionType>();
//
//   useEffect(() => {
//     getWareHouseTree().then((resp) => {
//       if (!resp) return;
//       const firstChildren = get(first(resp.data), 'children');
//       setWarehousesTree(resp.data);
//       setTabList(toTabList(resp.data));
//       setMenuItems(toTabList(firstChildren));
//       setMenuActiveKey(get(first(firstChildren), 'id'));
//       setWarehouseInfo({
//         id: get(first(firstChildren), 'id'),
//         warehouseName: get(first(firstChildren), 'warehouseName'),
//       });
//       setPageLoading(false);
//     });
//   }, []);
//
//   useEffect(() => {
//     const data = find(warehousesTree, (item) => item.id === tabActiveKey) || [];
//     setMenuItems(toTabList(data.children || []));
//     setMenuActiveKey(get(first(data.children), 'id'));
//   }, [tabActiveKey, warehousesTree]);
//
//   if (pageLoading) {
//     return <Spin/>;
//   }
//
//   if (warehouseInfo?.id === undefined) {
//     return (
//       <Empty description="暂无仓库数据">
//         <Button
//           size="large"
//           type="primary"
//           onClick={() => {
//             window.open('/system/house');
//           }}
//         >
//           前往添加
//         </Button>
//       </Empty>
//     );
//   }
//
//   return (
//     <PageContainer tabActiveKey={tabActiveKey} tabList={tabList} onTabChange={setTabActiveKey}>
//       <ProTable
//         actionRef={actionRef}
//         bordered
//         rowKey="warehouseProductId"
//         tableAlertRender={false}
//         search={false}
//         options={{search: true, setting: false, reload: false, density: false}}
//         columns={WAREHOUSE_PRODUCT_COLUMNS}
//         params={{warehouseId: menuActiveKey}}
//         request={getWarehouseData}
//         toolbar={{
//           menu: {
//             type: 'tab',
//             items: menuItems as any,
//             activeKey: menuActiveKey,
//             onChange: setMenuActiveKey,
//           },
//         }}
//       />
//     </PageContainer>
//   );
// };
//
// export default Management;
