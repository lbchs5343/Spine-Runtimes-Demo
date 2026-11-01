package com.bytedance.msdk.ox.ox.d;

import android.util.Pair;
import com.bytedance.msdk.core.kk.ig;
import com.bytedance.msdk.core.kk.kk;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.ox.ox.d.dq;

/* loaded from: classes.dex */
public class p implements dq {
    @Override // com.bytedance.msdk.ox.ox.d.dq
    public void dq(dq.InterfaceC0083dq interfaceC0083dq) {
        com.bytedance.msdk.api.dq dqVar;
        com.bytedance.msdk.ox.s.d.d dq = interfaceC0083dq.dq();
        com.bytedance.msdk.ox.s.dq.d d2 = interfaceC0083dq.d();
        no ia = dq.ia();
        String k = d2.gh().k();
        if (ia != null) {
            if (ia.p() && !com.bytedance.msdk.core.kk.no.dq().ox(k, ia.cd())) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "adn 请求触发次数拦截............");
                Pair<String, String> dq2 = com.bytedance.msdk.core.kk.no.dq().dq(k, ia.cd());
                com.bytedance.msdk.api.dq dVar = dq2 != null ? new com.bytedance.msdk.api.d.d(41041, com.bytedance.msdk.api.dq.dq(41041), (String) dq2.second, (String) dq2.first) : new com.bytedance.msdk.api.dq(41041, com.bytedance.msdk.api.dq.dq(41041));
                com.bytedance.msdk.s.iw.dq(ia, d2.gh(), com.bytedance.msdk.core.s.dq.dq.dq().dq(ia.cd()), dq.s(), 2, dq.ox(), dq.mn(), dq.iw(), dVar, -1L, d2.c().s, false);
                com.bytedance.msdk.s.iw.dq(dVar, d2.gh(), ia, dq.ox(), dq.mn(), dq.iw(), com.bytedance.msdk.core.s.dq.dq.dq().dq(ia.cd()), 0L, (String) null, (String) null, (String) null, 0L);
                dq.dq(dVar, ia);
                return;
            }
            if (ia.p() && !ig.dq().ox(k, ia.cd())) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "adn 请求触发时间间隔拦截............");
                kk p = ig.dq().p(k, ia.cd());
                if (p != null) {
                    String dq3 = com.bytedance.msdk.api.dq.dq(41042);
                    StringBuilder sb = new StringBuilder();
                    sb.append(ig.dq().dq(k, ia.cd()));
                    dqVar = new com.bytedance.msdk.api.d.ox(41042, dq3, sb.toString(), p.o());
                } else {
                    dqVar = new com.bytedance.msdk.api.dq(41042, com.bytedance.msdk.api.dq.dq(41042));
                }
                com.bytedance.msdk.api.dq dqVar2 = dqVar;
                com.bytedance.msdk.s.iw.dq(ia, d2.gh(), com.bytedance.msdk.core.s.dq.dq.dq().dq(ia.cd()), dq.s(), 2, dq.ox(), dq.mn(), dq.iw(), dqVar2, -1L, d2.c().s, false);
                com.bytedance.msdk.s.iw.dq(dqVar2, d2.gh(), ia, dq.ox(), dq.mn(), dq.iw(), com.bytedance.msdk.core.s.dq.dq.dq().dq(ia.cd()), 0L, (String) null, (String) null, (String) null, 0L);
                dq.dq(dqVar2, ia);
                return;
            }
            if (!com.bytedance.msdk.core.kk.ox.dq().dq(ia.jy(), ia.cd())) {
                com.bytedance.msdk.dq.s.ox.d("TMe", "adn 请求触发了错误码拦截............");
                com.bytedance.msdk.api.d.dq dqVar3 = new com.bytedance.msdk.api.d.dq(40044, com.bytedance.msdk.api.dq.dq(40044));
                com.bytedance.msdk.s.iw.dq(ia, d2.gh(), com.bytedance.msdk.core.s.dq.dq.dq().dq(ia.cd()), dq.s(), 2, dq.ox(), dq.mn(), dq.iw(), (com.bytedance.msdk.api.dq) dqVar3, -1L, d2.c().s, false);
                com.bytedance.msdk.s.iw.dq(dqVar3, d2.gh(), ia, dq.ox(), dq.mn(), dq.iw(), com.bytedance.msdk.core.s.dq.dq.dq().dq(ia.cd()), 0L, (String) null, (String) null, (String) null, 0L);
                dq.dq(dqVar3, ia);
                return;
            }
        }
        interfaceC0083dq.dq(this);
    }
}
