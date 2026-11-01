package com.bytedance.msdk.ox.ox.dq;

import com.bytedance.msdk.core.s.d.p;
import com.bytedance.msdk.ox.ox.dq.dq;
import g.awf;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ia implements dq {
    private int dq = 0;

    private double dq(String str, int i) {
        com.bytedance.msdk.core.no.d dq = com.bytedance.msdk.mn.dq.dq.jy().dq(str, i, 102);
        double d2 = 0.0d;
        if (dq == null) {
            return 0.0d;
        }
        for (com.bytedance.msdk.core.no.no noVar : dq.t()) {
            if (noVar.ce() && noVar.k() > d2) {
                d2 = noVar.k();
            }
        }
        return d2;
    }

    private void dq(com.bytedance.msdk.api.dq.d dVar, String str, com.bytedance.msdk.core.no.d dVar2, final com.bytedance.msdk.ox.s.dq.d dVar3) {
        com.bytedance.msdk.api.dq.d d2 = com.bytedance.msdk.core.s.d.p.dq().d(str);
        if (d2 != null) {
            dVar.dq(d2.dq());
            dVar.d(d2.ox());
        }
        com.bytedance.msdk.core.s.d.p.dq().dq(str, dVar);
        com.bytedance.msdk.s.iw.dq(dVar3.gh(), dVar2.gx(), !dVar3.k(), dVar3.c().dq, 0, (Map<String, Object>) null);
        com.bytedance.msdk.d.s sVar = null;
        com.bytedance.msdk.ox.mn.dq.dq(dVar3, null, false);
        com.bytedance.msdk.core.s.d.d ox = com.bytedance.msdk.core.s.d.p.dq().ox(str);
        if (ox != null) {
            dVar3.dq(ox.iw() != null ? ox.iw().c() : null);
            dVar3.dq(ox.s());
        }
        final int d3 = com.bytedance.msdk.core.s.d.p.dq().d(str, dVar.s());
        if (d3 == 2) {
            this.dq = 1;
            dVar3.dq(1);
            dVar3.p();
            return;
        }
        if (d3 != 3 && d3 != 4) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==-- 预缓存reqType错误：reqType = ".concat(String.valueOf(d3)));
            return;
        }
        if (dVar.ia() == 1) {
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==-- 激励再得情况，不进行预缓存补充，直接对外给出回调");
            this.dq = 2;
            dVar3.dq(2);
            dVar3.p();
            return;
        }
        long iw = com.bytedance.msdk.core.s.d.p.iw(str);
        long currentTimeMillis = System.currentTimeMillis() - iw;
        if (iw != -1 && currentTimeMillis < dVar2.p()) {
            StringBuilder l = awf.l(currentTimeMillis, "--==-- 预缓存补充请求无需发起，时间间隔不够，interval：", ", config interval: ");
            l.append(dVar2.p());
            com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", l.toString());
            this.dq = 3;
            dVar3.dq(3);
            dVar3.p();
            return;
        }
        List<com.bytedance.msdk.d.s> r = dVar3.r();
        if (r != null && r.size() > 0) {
            sVar = r.get(0);
        }
        com.bytedance.msdk.d.s sVar2 = sVar;
        final double dq = dq(str, dVar.le());
        if (sVar2 != null && !sVar2.w() && sVar2.dk() < dq) {
            com.bytedance.msdk.core.s.d.p.dq().dq(dVar3.getContext(), str, d3, dVar, sVar2, new p.ox() { // from class: com.bytedance.msdk.ox.ox.dq.ia.1
                @Override // com.bytedance.msdk.core.s.d.p.ox
                public void dq(String str2, boolean z, int i, List<com.bytedance.msdk.d.s> list) {
                    ia.this.dq(str2, z, i, list, d3, dq, dVar3);
                }
            });
            return;
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==-- 预缓存补充请求无需发起，已经命中最优");
        this.dq = 4;
        dVar3.dq(4);
        dVar3.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, boolean z, int i, List<com.bytedance.msdk.d.s> list, int i2, double d2, com.bytedance.msdk.ox.s.dq.d dVar) {
        if (z) {
            if (i2 == 4) {
                com.bytedance.msdk.d.s sVar = (list == null || list.size() <= 0) ? null : list.get(0);
                if (sVar == null || sVar.dk() < d2) {
                    this.dq = 7;
                } else {
                    this.dq = 6;
                }
            } else if (i2 == 3) {
                this.dq = 5;
            }
        } else if (i == 10003) {
            this.dq = 9;
        } else if (i == 10086) {
            this.dq = 8;
        }
        dVar.dq(this.dq);
        dVar.dq(list);
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", "--==-- 预缓存补充请求结束，对外给出回调");
        dVar.p();
    }

    private boolean dq(String str, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.ox.s.dq.d dVar2) {
        List<com.bytedance.msdk.core.s.d.ig> p;
        com.bytedance.msdk.core.no.d ig = dVar2.ig();
        if (com.bytedance.msdk.core.s.d.p.dq().dq(str, dVar, ig != null ? ig.gx() : null) && (p = com.bytedance.msdk.core.s.d.p.dq().p(str)) != null && p.size() > 0) {
            for (com.bytedance.msdk.core.s.d.ig igVar : p) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(igVar.dq);
                dVar2.dq(arrayList);
            }
            if (dVar2.mn().size() > 0 || dVar2.o().size() > 0 || dVar2.ia().size() > 0) {
                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "--==-- hit cache!!! -----");
                return true;
            }
        }
        com.bytedance.msdk.dq.s.ox.d("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(str) + "--==-- not hit cache!!! -----");
        return false;
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void d(dq.InterfaceC0088dq interfaceC0088dq) {
        interfaceC0088dq.dq((String) null);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void dq(dq.InterfaceC0088dq interfaceC0088dq) {
        String c2 = interfaceC0088dq.dq().ig().c();
        com.bytedance.msdk.api.dq.d gh = interfaceC0088dq.dq().gh();
        boolean k = interfaceC0088dq.dq().k();
        if (com.bytedance.msdk.core.s.d.p.dq().ox(c2, gh.s())) {
            boolean z = com.bytedance.msdk.core.s.d.p.dq().dq(c2) == null;
            if (!k && !z && dq(c2, gh, interfaceC0088dq.dq())) {
                interfaceC0088dq.dq().ox(true);
                dq(gh, c2, interfaceC0088dq.dq().ig(), interfaceC0088dq.dq());
                return;
            }
            com.bytedance.msdk.core.s.d.p.dq().dq(c2, gh);
        }
        interfaceC0088dq.dq(interfaceC0088dq.dq());
    }
}
