package com.bytedance.msdk.ox.ox.d.dq.dq;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ox extends d {
    public ox(String str, com.bytedance.msdk.ox.dq.d dVar) {
        super(str, dVar);
    }

    public void d(List<Bridge> list) {
        if (list == null) {
            dq(new com.bytedance.msdk.api.p.dq.d.dq(49010, "list is null"));
            return;
        }
        if (d()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
            return;
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<Bridge> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(new com.bytedance.msdk.ox.dq.dq.p(this, it.next()));
        }
        dq(arrayList);
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq.dq.d
    public <T> T dq(int i, ValueSet valueSet, Class<T> cls) {
        if (i == 8222) {
            boolean ox = ox();
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw loader : isExpressRender: " + ox);
            return (T) Boolean.valueOf(ox);
        }
        if (i == 8223) {
            boolean p = p();
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw loader : isNativeAd: " + p);
            return (T) Boolean.valueOf(p);
        }
        if (i != 8123) {
            if (i != 8107) {
                return null;
            }
            List<Bridge> list = (List) valueSet.objectValue(8303, List.class);
            StringBuilder sb = new StringBuilder("Adn custom draw loader : callLoadSucceed  list size:");
            sb.append(list != null ? list.size() : 0);
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", sb.toString());
            d(list);
            return null;
        }
        int intValue = valueSet.intValue(8014);
        String stringValue = valueSet.stringValue(8015);
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "Adn custom draw loader : callLoaderFail  code:" + intValue + " msg:" + stringValue);
        dq(intValue, stringValue);
        return null;
    }

    public void dq(com.bytedance.msdk.api.p.dq.d.dq dqVar) {
        if (dq()) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "自定义Adapter 加载成功或者失败回调只能调用一次");
        } else {
            dq(new com.bytedance.msdk.api.dq(49010, com.bytedance.msdk.api.dq.dq(49010), dqVar == null ? -1 : dqVar.dq(), dqVar == null ? "" : dqVar.d()));
        }
    }

    public boolean ox() {
        com.bytedance.msdk.api.p.dq.d.ox.ox oxVar = ((d) this).f1171d;
        return oxVar != null && oxVar.d() == 1;
    }

    public boolean p() {
        com.bytedance.msdk.api.p.dq.d.ox.ox oxVar = ((d) this).f1171d;
        return oxVar != null && oxVar.d() == 2;
    }
}
