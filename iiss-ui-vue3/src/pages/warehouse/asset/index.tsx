import { getByPage } from '@/services/warehouse/assetController';
import { PageContainer } from '@ant-design/pro-layout';
import { history } from 'umi';

type SearchProps = {
  match: {
    url: string;
    path: string;
  };
  location: {
    pathname: string;
  };
};

const tabList = [
  {
    key: 'warehousing',
    tab: '入库管理',
  },
  {
    key: 'exwarehouse',
    tab: '出库管理',
  },
  {
    key: 'adjustment',
    tab: '调仓管理',
  },
];

export const getWarehouseTableData = async (params: any) => {
  return getByPage({
    ...params,
  }).then((resp) => {
    if (!resp) return { success: false };
    return { success: resp.code === 200, data: resp.rows as any, total: resp.total };
  });
};

const Status: React.FC<SearchProps> = (props) => {
  const handleTabChange = (key: string) => {
    const { match } = props;
    const url = match.url === '/' ? '' : match.url;
    history.push(`${url}/${key}`);
  };

  const getTabKey = () => {
    const { match, location } = props;
    const url = match.path === '/' ? '' : match.path;
    const tabKey = location.pathname.replace(`${url}/`, '');
    if (tabKey && tabKey !== '/') {
      return tabKey;
    }
    return 'articles';
  };

  return (
    <PageContainer tabList={tabList} tabActiveKey={getTabKey()} onTabChange={handleTabChange}>
      {props.children}
    </PageContainer>
  );
};

export default Status;
