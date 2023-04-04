import WrapContent from '@/components/WrapContent';
// YourComponent.vue
import { Amap, Marker } from '@amap/amap-react';
import { useRef } from 'react';

const groupMap = () => {
  // const mapRef = useRef();

  return (
    <>
     <Amap zoom={15} center={[116.473179, 39.993169]}>
          <Marker
            position={[116.473179, 39.993169]}
            label={{
              content: "Hello, AMap-React!",
              direction: "bottom"
            }}
            draggable
          />
        </Amap>
    </>
  );
};
export default groupMap;
