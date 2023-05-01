import { usePlugins } from '@amap/amap-react';
import { Select, SelectProps } from 'antd';
import { useMemo, useState } from 'react';

let timeout: ReturnType<typeof setTimeout> | null;

const SearchInput: React.FC<{ placeholder: string; style: React.CSSProperties }> = (props) => {
  const [data, setData] = useState<SelectProps['options']>([]);
  const [value, setValue] = useState<string>();
  const [searchload, setSearchload] = useState(false);

  const AMap = usePlugins(['AMap.AutoComplete']);
  const ac = useMemo(() => {
    if (AMap) return new AMap.AutoComplete();
    else return null;
  }, [AMap]);

  const fetch = (valuem: string, callback: Function) => {
    if (timeout) {
      clearTimeout(timeout);
      timeout = null;
    }

    const fake = () => {

    if (!ac) return;
    if (valuem === null || valuem == undefined) {
      return;
    }
     ac.search(valuem, (status: string, result: any) => {
      setSearchload(true);
      console.info('message');
      console.info(status);
      console.info(result);
      if (status === 'complete' && result.tips) {
        console.info('ok');
        //数据转换
        const datsa = [{ label: valuem, value: valuem }].concat(
          result.tips.map((x: { district: any }) => {
            return { label: x.district, value: x.district };
          }),
        );
        console.info(datsa);

        callback(datsa);
        // return result.tips;
  }});

    };
    if (value) {
      timeout = setTimeout(fake, 300);
    } else {
      callback([]);
    }
  };
  const handleSearch = (newValue: string) => {
    fetch(newValue, setData);
  };

  const handleChange = (newValue: string) => {
    setValue(newValue);
  };

  return (
    <Select
      showSearch
      value={value}
      placeholder={props.placeholder}
      style={props.style}
      defaultActiveFirstOption={false}
      showArrow={false}
      filterOption={false}
      onSearch={handleSearch}
      onChange={handleChange}
      notFoundContent={null}
      options={(data || [])}
    />
  );
};
export default SearchInput;