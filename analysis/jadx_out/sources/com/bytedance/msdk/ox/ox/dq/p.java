package com.bytedance.msdk.ox.ox.dq;

import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p implements dq {
    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void d(dq.InterfaceC0088dq interfaceC0088dq) {
        interfaceC0088dq.dq((String) null);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void dq(dq.InterfaceC0088dq interfaceC0088dq) {
        com.bytedance.msdk.ox.s.dq.d dq = interfaceC0088dq.dq();
        dq.mp().dq(0);
        int ox = dq.gh().ox();
        List<com.bytedance.msdk.core.no.no> list = dq.ig().kx().get(0);
        JSONObject jSONObject = new JSONObject();
        String dq2 = com.bytedance.msdk.core.jy.dq.dq().dq(dq.i(), dq.getContext(), dq.gh(), list, dq.ig(), ox, !dq.k(), jSONObject);
        com.bytedance.msdk.s.iw.dq(dq.gh(), dq.ig().gx(), jSONObject);
        dq.dq(dq2);
    }
}
