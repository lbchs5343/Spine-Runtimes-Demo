package com.bytedance.msdk.core.p;

import android.content.Context;
import android.text.TextUtils;
import com.bytedance.msdk.core.jy.dq;
import com.bytedance.msdk.core.no.ia;
import com.bytedance.msdk.core.no.kk;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.core.p.s;
import com.bytedance.msdk.ia.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn implements s {
    private List<no> dq(List<no> list, com.bytedance.msdk.core.no.d dVar, d dVar2) {
        List<no> t;
        if (list == null || list.size() == 0 || dVar == null) {
            return null;
        }
        boolean booleanValue = dVar.s().get("serverBidding_timeout") instanceof Boolean ? ((Boolean) dVar.s().get("serverBidding_timeout")).booleanValue() : false;
        if (dVar.iw() != 4 || booleanValue) {
            t = dVar.t();
        } else {
            com.bytedance.msdk.core.no.d dq = com.bytedance.msdk.mn.dq.dq.jy().dq(dVar.c(), dVar.ce(), 102);
            if (dq == null) {
                return null;
            }
            t = com.bytedance.msdk.core.o.ox.dq(dq, dq.c(), dVar2 == null ? 0.0d : dVar2.ig, dVar2 != null ? dVar2.q : 0.0d);
            dVar.s().putAll(dq.s());
        }
        if (t != null && t.size() != 0) {
            ArrayList arrayList = new ArrayList();
            for (no noVar : t) {
                Iterator<no> it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        no next = it.next();
                        if (noVar != null && next != null && noVar.gh() == 0 && !TextUtils.isEmpty(noVar.cd()) && noVar.cd().equals(next.cd())) {
                            arrayList.add(noVar);
                            break;
                        }
                    }
                }
            }
            return arrayList;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(long j, int i, com.bytedance.msdk.api.dq dqVar, com.bytedance.msdk.api.dq.d dVar, s.dq dqVar2) {
        int i2 = (dqVar == null || dqVar.dq != -1) ? 5 : 4;
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.k()) + "server bidding网络请求响应失败......onFail  result:" + i2);
        d dVar2 = new d();
        dVar2.iw = i2;
        dVar2.mn = System.currentTimeMillis() - j;
        dVar2.ia = dqVar;
        if (dqVar2 != null) {
            dqVar2.dq(dVar2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(long j, com.bytedance.msdk.api.dq.d dVar, com.bytedance.msdk.core.no.d dVar2, int i, ia iaVar, s.dq dqVar) {
        int i2;
        d dVar3;
        int i3;
        no iw;
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.k()) + "server bidding网络请求响返回.............");
        long currentTimeMillis = System.currentTimeMillis() - j;
        if (dVar2 == null || iaVar == null || n.dq(iaVar.p())) {
            i2 = (iaVar == null || n.dq(iaVar.kk())) ? i : 2;
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.k()) + "server bidding网络请求响应失败......没有返回serverBiddingModel相关数据");
            dVar3 = null;
        } else {
            List<kk> p = iaVar.p();
            dVar3 = new d();
            dVar3.ig = iaVar.dq();
            dVar3.mp = iaVar.d();
            dVar3.q = iaVar.ox();
            dVar3.no = iaVar.mn();
            dVar3.kk = p.size();
            dVar3.dq = iaVar.kk();
            dVar3.o = dVar2.iw();
            ArrayList arrayList = new ArrayList();
            StringBuilder sb = new StringBuilder("winners : {");
            for (kk kkVar : p) {
                if (kkVar != null && (iw = dVar2.iw(kkVar.mn())) != null) {
                    no s = iw.s();
                    sb.append(" [ AdnName:" + s.jy() + ",slotId:" + s.cd() + ",loadSort:" + s.wp() + ",showSort:" + s.e() + "] ");
                    s.dq(kkVar);
                    arrayList.add(s);
                }
            }
            sb.append("}");
            if (n.dq(arrayList)) {
                i2 = n.dq(iaVar.kk()) ? i : 2;
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.k()) + "server bidding网络请求响应失败......：数据有返回，但没有返回winner数据......");
            } else {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.k()) + "server bidding网络请求响应成功......：" + sb.toString());
                CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
                copyOnWriteArrayList.addAll(arrayList);
                List<no> dq = dq(iaVar.kk(), dVar2, dVar3);
                if (dq == null || dq.size() <= 0) {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.k()) + "server bidding网络请求响应成功......server bidding物料......");
                    i3 = 3;
                } else {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.k()) + "server bidding网络请求响应成功......waterfall+server bidding物料......");
                    copyOnWriteArrayList.addAll(dq);
                    i3 = 1;
                }
                dVar3.f1004d = copyOnWriteArrayList;
                i2 = i3;
            }
        }
        if (iaVar != null) {
            String iw2 = iaVar.iw();
            if (!TextUtils.isEmpty(iw2)) {
                if (dVar3 == null) {
                    dVar3 = new d();
                }
                dVar3.p = iw2;
            }
            if (iaVar.ia()) {
                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar.k()) + "server bidding发现config过期了，需要重新拉取配置......：");
                if (dVar3 == null) {
                    dVar3 = new d();
                }
                dVar3.ox = true;
            }
            if (!n.dq(iaVar.s())) {
                if (dVar3 == null) {
                    dVar3 = new d();
                }
                dVar3.s = iaVar.s();
            }
        }
        if (dVar3 == null) {
            dVar3 = new d();
        }
        dVar3.iw = i2;
        dVar3.mn = currentTimeMillis;
        if (dqVar != null) {
            dqVar.dq(dVar3);
        }
    }

    public void dq(String str, final long j, final com.bytedance.msdk.api.dq.d dVar, final com.bytedance.msdk.core.no.d dVar2, final s.dq dqVar) {
        com.bytedance.msdk.core.jy.dq.dq().dq(str, new dq.InterfaceC0058dq() { // from class: com.bytedance.msdk.core.p.mn.2
            @Override // com.bytedance.msdk.core.jy.dq.InterfaceC0058dq
            public void dq(com.bytedance.msdk.api.dq dqVar2) {
                mn.this.dq(j, 4, dqVar2, dVar, dqVar);
            }

            @Override // com.bytedance.msdk.core.jy.dq.InterfaceC0058dq
            public void dq(ia iaVar) {
                mn.this.dq(j, dVar, dVar2, 4, iaVar, dqVar);
            }
        });
    }

    @Override // com.bytedance.msdk.core.p.s
    public void dq(Map<String, com.bytedance.msdk.dq.dq> map, Context context, final ox oxVar, final s.dq dqVar) {
        if (oxVar == null || oxVar.dq == null || oxVar.p == null || n.dq(oxVar.f1008d)) {
            dqVar.dq(null);
            return;
        }
        String gx = oxVar.p.gx();
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(oxVar.dq.k()) + "开启server bidding网络请求......：");
        com.bytedance.msdk.s.iw.dq(oxVar.dq, gx, (JSONObject) null);
        final long currentTimeMillis = System.currentTimeMillis();
        final int[] iArr = {4};
        com.bytedance.msdk.core.jy.dq.dq().dq(map, context, oxVar.dq, oxVar.f1008d, oxVar.ox, oxVar.p, oxVar.s, oxVar.iw, new dq.InterfaceC0058dq() { // from class: com.bytedance.msdk.core.p.mn.1
            @Override // com.bytedance.msdk.core.jy.dq.InterfaceC0058dq
            public void dq(com.bytedance.msdk.api.dq dqVar2) {
                mn.this.dq(currentTimeMillis, iArr[0], dqVar2, oxVar.dq, dqVar);
            }

            @Override // com.bytedance.msdk.core.jy.dq.InterfaceC0058dq
            public void dq(ia iaVar) {
                mn mnVar = mn.this;
                long j = currentTimeMillis;
                ox oxVar2 = oxVar;
                mnVar.dq(j, oxVar2.dq, oxVar2.p, iArr[0], iaVar, dqVar);
            }
        });
    }
}
