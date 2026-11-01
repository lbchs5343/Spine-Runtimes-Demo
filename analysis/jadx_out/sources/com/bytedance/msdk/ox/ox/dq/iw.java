package com.bytedance.msdk.ox.ox.dq;

import android.util.Pair;
import com.bytedance.msdk.core.kk.mp;
import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.Map;

/* loaded from: classes.dex */
public class iw implements dq {
    private void dq(com.bytedance.msdk.ox.s.dq.d dVar, int i) {
        com.bytedance.msdk.s.iw.dq(dVar.gh(), (String) null, !dVar.k(), dVar.c().dq, i, (Map<String, Object>) null);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void d(dq.InterfaceC0088dq interfaceC0088dq) {
        interfaceC0088dq.dq((String) null);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void dq(dq.InterfaceC0088dq interfaceC0088dq) {
        com.bytedance.msdk.ox.s.dq.d dq = interfaceC0088dq.dq();
        String k = dq.gh().k();
        com.bytedance.msdk.core.no.d ig = dq.ig();
        if (ig != null && ig.o()) {
            if (!mp.dq().ia(String.valueOf(k))) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "广告位 请求触发次数拦截............");
                Pair<String, String> iw = mp.dq().iw(k);
                com.bytedance.msdk.api.d.d dVar = new com.bytedance.msdk.api.d.d(840041, com.bytedance.msdk.api.dq.dq(840041), iw != null ? (String) iw.second : "", iw != null ? (String) iw.first : "");
                dq(dq, dVar.dq);
                dq.dq(dVar);
                return;
            }
            if (!mp.dq().ox(String.valueOf(k)) && !dq.k()) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "广告位 请求触发时间间隔拦截............");
                com.bytedance.msdk.core.kk.kk s = mp.dq().s(String.valueOf(k));
                String dq2 = com.bytedance.msdk.api.dq.dq(840042);
                StringBuilder sb = new StringBuilder();
                sb.append(mp.dq().dq(k));
                com.bytedance.msdk.api.d.ox oxVar = new com.bytedance.msdk.api.d.ox(840042, dq2, sb.toString(), s != null ? s.o() : "");
                dq(dq, oxVar.dq);
                dq.dq(oxVar);
                return;
            }
        }
        interfaceC0088dq.dq(interfaceC0088dq.dq());
    }
}
