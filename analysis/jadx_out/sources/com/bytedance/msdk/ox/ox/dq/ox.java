package com.bytedance.msdk.ox.ox.dq;

import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.Map;

/* loaded from: classes.dex */
public class ox implements dq {
    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void d(dq.InterfaceC0088dq interfaceC0088dq) {
        interfaceC0088dq.dq((String) null);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void dq(dq.InterfaceC0088dq interfaceC0088dq) {
        com.bytedance.msdk.ox.s.dq.d dq = interfaceC0088dq.dq();
        com.bytedance.msdk.api.dq.d gh = dq.gh();
        com.bytedance.msdk.core.no.d ig = dq.ig();
        com.bytedance.msdk.core.no.d dq2 = com.bytedance.msdk.core.ox.ox.dq(gh, ig);
        if (dq2 != null) {
            if (gh.ox() == 2 || gh.ox() == 4 || gh.ox() == 5) {
                com.bytedance.msdk.core.s.d.p.dq().dq(gh.k(), gh);
            }
            ig = dq2;
        }
        if (ig.t() == null || ig.t().size() == 0) {
            com.bytedance.msdk.s.iw.dq(gh, dq.ig() != null ? dq.ig().gx() : null, !dq.k(), dq.c().dq, 810085, (Map<String, Object>) null);
            dq.dq(new com.bytedance.msdk.api.dq(810085, com.bytedance.msdk.api.dq.dq(810085)));
        } else {
            dq.dq(ig);
            interfaceC0088dq.dq(interfaceC0088dq.dq());
        }
    }
}
