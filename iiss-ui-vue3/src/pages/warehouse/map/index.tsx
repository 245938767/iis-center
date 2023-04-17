import { getChildList } from '@/services/warehouse/warehouseController';
// YourComponent.vue
import { Amap, Marker, loadPlugins, usePlugins } from '@amap/amap-react';

import { SetStateAction, useCallback, useEffect, useMemo, useRef, useState } from 'react';
const GroupMap: React.FC = () => {
  const [list, setlist] = useState<
    {
      id: number;
      lang: number[];
      warehouseName: string;
      productnum: number;
      warehouseAddress: string;
    }[]
  >([]);

  useEffect(() => {
    const xs = getChildList();

    xs.then((res) => {
      setlist(res.data);
    });
  }, []);
  const map = loadPlugins(['AMap.PlaceSearch']);
  const comp = (item: any) => {
    return (
      <Marker
        key={item.id}
        position={item.lang}
        label={{
          content: item.warehouseName + ' 有' + item.productNum + '个商品',
          direction: item.warehouseAddress,
        }}
      />
    );
  };
  return (
    <>
      <div style={{ width: '100%', height: '600px', paddingTop: '10px' }}>
        <Amap zoom={15}>
          {list?.map((item: any, index: any) => {
            // console.info(comp(item));
            return comp(item);
          })}
          {/* <Marker
            position={[116.473179, 39.993169]}
            label={{
              content: "Hello, AMap-React!",
              direction: "bottom"
            }}
            draggable
          /> */}
        </Amap>
      </div>
    </>
  );
};
export default GroupMap;
