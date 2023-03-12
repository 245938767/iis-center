import type { ProSchemaValueEnumObj } from '@ant-design/pro-utils/lib';
import type { TabPaneProps } from 'antd';
import { message, Tag } from 'antd';
import type { DataNode } from 'rc-tree-select/lib/interface';

type Tab = TabPaneProps & { key?: React.Key; label?: string; [key: string]: any };

export const isFalsy = (value: unknown) => (value === 0 ? false : !value);

export const isVoid = (value: unknown) => value === undefined || value === null || value === '';

/**
 * 空校验 null或""都返回true
 */
export const isEmpty = (obj: any) => {
  if (typeof obj === 'string') {
    return !obj || obj.replace(/\s+/g, '') === '';
  } else {
    return !obj || JSON.stringify(obj) === '{}' || obj.length === 0;
  }
};

/**
 * 非空校验
 */
export const isNotEmpty = (obj: any) => {
  return !isEmpty(obj);
};

export const cleanObject = (object: Record<string, unknown>) => {
  const result = { ...object };
  Object.keys(result).forEach((key) => {
    const value = result[key];
    if (isVoid(value)) {
      delete result[key];
    }
  });
  return result;
};

export /**
 * @param {*} data 数据源
 * @param {*} props id字段 默认 'id'
 * @param {*} parentId_key 父节点字段 默认 'parentId'
 * @param {*} children 孩子节点字段 默认 'children'
 * @param {*} lable_key 标签字段（树形选择器使用） 默认 'lable'
 * @param {*} isRoot 判断是否根节点
 */
const array2Tree = (props: {
  data: any;
  id_key?: string;
  parentId_key?: string;
  children_key?: string;
  lable_key?: string;
  isRoot?: (item: any) => boolean;
}) => {
  const {
    data,
    id_key = 'id',
    parentId_key = 'parentId',
    children_key = 'children',
    lable_key = 'lable',
    isRoot = (item: any) => item[parentId_key] === 0,
  } = props;

  const obj = {};
  const result: any[] = [];
  if (!!!data) return result;

  //将数组中数据转为键值对结构 (这里的数组和obj会相互引用)
  data.map((el: any) => {
    if (!el.label && lable_key) {
      el.label = el[lable_key];
    }
    if (!el.key) {
      el.key = el[id_key];
      el.value = el.key;
    }
    obj[el[id_key]] = el;
  });

  for (let index = 0; index < data.length; index++) {
    const element = data[index];
    if (isRoot(element) || !obj[element[parentId_key]]) {
      result.push(element);
      if (isEmpty(element[children_key])) {
        delete element[children_key];
      }
      continue;
    }
    if (obj[element[parentId_key]][children_key]) {
      obj[element[parentId_key]][children_key].push(element);
    } else {
      obj[element[parentId_key]][children_key] = [element];
    }
    if (isEmpty(element[children_key])) {
      delete element[children_key];
    }
  }

  return result;
};

/** 自定义节点 title、key、children 的字段 */
export const fieldTree = (
  array: any[],
  props: { title: string; value: string; children?: string; disabled?: string },
) => {
  const { title, value, children = 'children', disabled = 'disabled' } = props;
  const res: DataNode[] = [];
  array.forEach((e) => {
    const node: DataNode = {
      title: e[title],
      value: e[value],
      key: e[value],
      disabled: e[disabled],
    };
    if (e[children]) {
      node.children = fieldTree(e[children], props);
    }
    res.push(node);
  });
  return res;
};

/** 获取到所有可展开的父节点 */
export const getExpanded = (treeDatas: any[]) => {
  let newExpandedKeys: any[] = [];
  treeDatas.forEach((item: { children: any; key: any }) => {
    newExpandedKeys.push(item.key);
    if (item.children) {
      newExpandedKeys = newExpandedKeys.concat(getExpanded(item.children));
    }
  });
  return newExpandedKeys;
};

/**
 * 构造Select组件的options
 * @param {*} data 数据源
 * @param {*} key 键的字段名
 * @param {*} value 值的字段名
 *
 */
export const array2options = (data: any[], label: string, value: string) => {
  const result: any = [];
  if (isEmpty(data)) return result;

  data.forEach((element) => {
    result.push({
      label: element[label],
      value: element[value],
    });
  });

  return result;
};

/**
 * 构造valueEnum
 * @param {*} data 数据源
 * @param {*} key 键的字段名
 * @param {*} value 值的字段名
 *
 */
export const array2valueEnum = (data: any[], key: string, value: string): ProSchemaValueEnumObj => {
  const result: ProSchemaValueEnumObj = {};
  if (isEmpty(data)) return result;

  data.forEach((element) => {
    if (isEmpty(element.cssClass)) {
      result[element[key]] = element[value];
    } else {
      result[element[key]] = <Tag color={element.cssClass}>{element[value]}</Tag>;
    }
  });

  return result;
};

/** 清除树型结构中空children */
export const cleanTreeChildren = (data: any[], childrenKey: string = 'children') => {
  if (!!!data) return data;

  data.forEach((item) => {
    if (isEmpty(item[childrenKey])) {
      delete item[childrenKey];
    } else {
      cleanTreeChildren(item[childrenKey], childrenKey);
    }
  });

  return data;
};

export const codeInc = (code: string) => {
  if (isEmpty(code)) {
    return '0';
  }
  return code.split(/\d*$/gm)[0] + (parseInt((code.match(/\d*$/gm) || ['0'])[0] || '0') + 1);
};

/**
 *
 * @param collection
 * @param fieldNames
 * @returns
 */
export const convertToTabList = (
  collection: any[],
  fieldNames: { key: string; tab: string; label: string },
): Tab[] => {
  const result: Tab[] = [];
  for (let index = 0; index < collection.length; index++) {
    const element = collection[index];
    result.push({
      key: element[fieldNames.key] || '',
      tab: element[fieldNames.tab] || '',
      label: element[fieldNames.label] || '',
    });
  }
  return result;
};

export const generateActions: <O = any, T = Record<keyof O, string>>(
  obj: O,
  prefix?: string,
) => T = (obj, prefix) => {
  return Object.keys(obj).reduce((pre, cur) => {
    pre[cur] = prefix ? prefix + '/' + cur : cur;
    return pre;
  }, {}) as any;
};

export const objectMap = (obj, fieldMap) => {
  return Object.keys(fieldMap).reduce((pre, cur) => {
    pre[cur] = obj[fieldMap[cur]];
    return pre;
  }, {} as any);
};

export function getParent(
  list: any[],
  selector: (item) => boolean,
  childrenKey: string = 'children',
): any[] {
  for (const item of list) {
    if (selector(item)) {
      return [item];
    }
    if (item[childrenKey]) {
      const node = getParent(item[childrenKey], selector, childrenKey);
      if (isNotEmpty(node)) {
        return [item].concat(node);
      }
    }
  }
  return [];
}

export async function sleep(time: number) {
  return new Promise((resolve) => {
    setTimeout(resolve, time);
  });
}

export function findTree<T>(
  tree: T[],
  selector: (item: T) => boolean,
  childrenKey: string = 'children',
): T | null {
  if (tree.length === 0) return null;

  for (const iterator of tree) {
    if (selector(iterator)) {
      return iterator;
    }
    if (iterator[childrenKey]) {
      const res = findTree(iterator[childrenKey], selector, childrenKey);
      if (res) {
        return res;
      }
    }
  }

  return null;
}

export const formatMoney = (money, decimals = 2) => {
  return new Intl.NumberFormat('zh-CN', {
    style: 'currency', // 货币形式
    currency: 'CNY', // "CNY"是人民币
    currencyDisplay: 'symbol', // 默认“symbol”，中文中代表“¥”符号
    // useGrouping: true, // 是否使用分组分隔符，如千位分隔符或千/万/亿分隔符，默认为true
    // minimumIntegerDigits: 1, // 使用的整数数字的最小数目.可能的值是从1到21,默认值是1
    // minimumFractionDigits: 2, // 使用的小数位数的最小数目.可能的值是从 0 到 20
    maximumFractionDigits: decimals, // 使用的小数位数的最大数目。可能的值是从 0 到 20
  }).format(money);
};

export const commonRequestHandler = (callBack?: () => void) => {
  return (resp?: Record<string, any>) => {
    if (!resp) return Promise.reject(false);
    message.success(resp?.msg);
    callBack?.();
    return Promise.resolve(true);
  };
};
