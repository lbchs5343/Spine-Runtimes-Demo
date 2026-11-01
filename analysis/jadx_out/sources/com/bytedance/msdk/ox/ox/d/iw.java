package com.bytedance.msdk.ox.ox.d;

import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.s.d.ig;
import com.bytedance.msdk.ox.ox.d.dq;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class iw implements dq {
    private boolean dq(com.bytedance.msdk.ox.s.dq.d dVar, com.bytedance.msdk.ox.s.d.d dVar2, com.bytedance.msdk.api.dq.d dVar3, String str, no noVar, int i) {
        com.bytedance.msdk.core.s.dq.dq.dq().dq(dVar3.k(), str, noVar, i);
        List<ig> dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(str, dVar3, dVar3.s());
        if (dq == null || dq.size() <= 0) {
            return false;
        }
        int ia = dq.get(0).dq.ia(dVar3.dq());
        com.bytedance.msdk.s.iw.dq(noVar, dVar3, com.bytedance.msdk.core.s.dq.dq.dq().dq(str), !dVar.k(), 1, i, 3, ia, (com.bytedance.msdk.api.dq) null, -1L, false, false);
        ArrayList arrayList = new ArrayList();
        for (ig igVar : dq) {
            igVar.dq.o(3);
            igVar.dq.no(ia);
            igVar.dq.p(false);
            igVar.dq.ox(false);
            com.bytedance.msdk.ox.mn.p.dq(igVar.dq, dVar3.k(), str);
            arrayList.add(igVar.dq);
        }
        com.bytedance.msdk.s.iw.dq(dq.get(0).dq, 0, "adn cache命中", 0L, dVar3, i, arrayList.size(), 2, (String) null, 0L, -1L);
        dVar2.dq(arrayList, noVar);
        return true;
    }

    @Override // com.bytedance.msdk.ox.ox.d.dq
    public void dq(dq.InterfaceC0083dq interfaceC0083dq) {
        List<ig> dq;
        no ia = interfaceC0083dq.dq().ia();
        com.bytedance.msdk.api.dq.d gh = interfaceC0083dq.d().gh();
        if (ia != null) {
            String cd = ia.cd();
            if (ia.r() && com.bytedance.msdk.core.s.dq.dq.dq().p(gh.k(), cd, gh.s())) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==-- 广告复用，模式：" + com.bytedance.msdk.core.s.dq.dq.dq().s(gh.k(), cd, gh.s()));
                int dq2 = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, gh, true);
                interfaceC0083dq.dq().ox(dq2);
                if (dq2 == 3) {
                    interfaceC0083dq.dq().dq(2);
                    if (dq(interfaceC0083dq.d(), interfaceC0083dq.dq(), gh, cd, ia, 2)) {
                        return;
                    }
                } else if (dq2 == 2 && (dq = com.bytedance.msdk.core.s.dq.dq.dq().dq(cd, gh, gh.s())) != null && dq.size() > 0) {
                    interfaceC0083dq.dq().d(dq.get(0).dq.ia(gh.dq()));
                }
                interfaceC0083dq.dq(this);
            }
        }
        interfaceC0083dq.dq(this);
    }
}
