package com.bytedance.msdk.ox.ox.dq;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.msdk.ox.ox.dq.dq;
import java.util.ArrayList;
import java.util.Map;

/* loaded from: classes.dex */
public class no implements dq {
    private final long dq = 500;

    private com.bytedance.msdk.core.no.d dq(String str, String str2, String str3) {
        com.bytedance.msdk.core.no.no dq = com.bytedance.msdk.core.mn.mn.dq(str3, str2, -4, -4);
        if (dq == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(dq);
        com.bytedance.msdk.core.no.d dVar = new com.bytedance.msdk.core.no.d();
        dVar.p(str);
        dVar.q(3);
        dVar.p(400L);
        dVar.s(2000L);
        dVar.iw(PushUIConfig.dismissTime);
        dVar.mn(3000L);
        dVar.dq(arrayList);
        return dVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(dq.InterfaceC0088dq interfaceC0088dq, com.bytedance.msdk.ox.s.dq.d dVar, String str, String str2) {
        dVar.dq(dq(dVar.gh().k(), str, str2));
        interfaceC0088dq.dq(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.msdk.ox.s.dq.d dVar, int i) {
        com.bytedance.msdk.s.iw.dq(dVar.gh(), (String) null, !dVar.k(), dVar.c().dq, i, (Map<String, Object>) null);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void d(dq.InterfaceC0088dq interfaceC0088dq) {
        interfaceC0088dq.dq((String) null);
    }

    @Override // com.bytedance.msdk.ox.ox.dq.dq
    public void dq(dq.InterfaceC0088dq interfaceC0088dq) {
        com.bytedance.msdk.ox.s.dq.d dq = interfaceC0088dq.dq();
        if (dq.ig() != null || dq.gh().le() != 3 || com.bytedance.msdk.core.dq.d().ji() || dq.n() == null) {
            interfaceC0088dq.dq(dq);
        } else {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "执行开启开屏兜底...............");
            dq(interfaceC0088dq, dq, dq.gh(), dq.n());
        }
    }

    public void dq(final dq.InterfaceC0088dq interfaceC0088dq, final com.bytedance.msdk.ox.s.dq.d dVar, com.bytedance.msdk.api.dq.d dVar2, com.bytedance.msdk.api.p.no noVar) {
        if (noVar != null && dVar2 != null) {
            com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", com.bytedance.msdk.dq.s.s.dq(dVar2.k()) + "settings config.......AdUnitId = " + dVar2.k() + "  开屏广告走了开发者自定义兜底方案   adnName:" + com.bytedance.msdk.d.dq.dq(noVar.dq()));
        }
        com.bytedance.msdk.s.iw.d(dVar2, -4);
        com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "开屏广告走了开发者自定义开屏兜底，数据为: getAdNetworkFlatFromId = " + noVar.dq() + " getAppId = " + noVar.ox() + " getAppKey = " + noVar.p() + " getAdNetworkSlotId = " + noVar.d());
        if (TextUtils.isEmpty(noVar.d()) || (TextUtils.isEmpty(noVar.ox()) && TextUtils.isEmpty(noVar.p()))) {
            dq(dVar, 840027);
            dVar.dq(new com.bytedance.msdk.api.dq(840027, com.bytedance.msdk.api.dq.dq(840027)));
            return;
        }
        int dq = noVar.dq();
        final String dq2 = com.bytedance.msdk.d.dq.dq(dq);
        final String d2 = noVar.d();
        if (TextUtils.isEmpty(dq2)) {
            dq(dVar, 840027);
            dVar.dq(new com.bytedance.msdk.api.dq(840027, com.bytedance.msdk.api.dq.dq(840027)));
            return;
        }
        if (dq == 3) {
            new com.bytedance.msdk.iw.dq.s(noVar).dq(noVar);
            Looper d3 = com.bytedance.msdk.dq.s.iw.d();
            if (d3 != null) {
                new Handler(d3).postDelayed(new Runnable() { // from class: com.bytedance.msdk.ox.ox.dq.no.1
                    @Override // java.lang.Runnable
                    public void run() {
                        no.this.dq(interfaceC0088dq, dVar, dq2, d2);
                    }
                }, 500L);
                return;
            }
            return;
        }
        if (dq == 1) {
            com.bytedance.msdk.iw.dq.o.d(noVar).dq(noVar, new com.bytedance.msdk.dq.dq.ox() { // from class: com.bytedance.msdk.ox.ox.dq.no.2
                @Override // com.bytedance.msdk.dq.dq.ox
                public void dq() {
                    no.this.dq(interfaceC0088dq, dVar, dq2, d2);
                }

                @Override // com.bytedance.msdk.dq.dq.ox
                public void dq(com.bytedance.msdk.api.dq dqVar) {
                    no.this.dq(dVar, 840027);
                    dVar.dq(new com.bytedance.msdk.api.dq(840027, com.bytedance.msdk.api.dq.dq(840027)));
                }
            });
            return;
        }
        if (dq == 7) {
            new com.bytedance.msdk.iw.dq.mn(noVar).dq(noVar);
            dq(interfaceC0088dq, dVar, dq2, d2);
            return;
        }
        if (dq == 6) {
            new com.bytedance.msdk.iw.dq.d(noVar).dq(noVar);
            dq(interfaceC0088dq, dVar, dq2, d2);
            return;
        }
        if (dq == 4) {
            new com.bytedance.msdk.iw.dq.ia(noVar).dq(noVar);
            dq(interfaceC0088dq, dVar, dq2, d2);
        } else if (dq == 8) {
            new com.bytedance.msdk.iw.dq.ig(noVar).dq(noVar);
            dq(interfaceC0088dq, dVar, dq2, d2);
        } else if (dq == 9) {
            new com.bytedance.msdk.iw.dq.iw(noVar).dq(noVar, new com.bytedance.msdk.dq.dq.ox() { // from class: com.bytedance.msdk.ox.ox.dq.no.3
                @Override // com.bytedance.msdk.dq.dq.ox
                public void dq() {
                    no.this.dq(interfaceC0088dq, dVar, dq2, d2);
                }

                @Override // com.bytedance.msdk.dq.dq.ox
                public void dq(com.bytedance.msdk.api.dq dqVar) {
                    no.this.dq(dVar, 840027);
                    dVar.dq(new com.bytedance.msdk.api.dq(840027, com.bytedance.msdk.api.dq.dq(840027)));
                }
            });
        } else {
            dq(dVar, 840027);
            dVar.dq(new com.bytedance.msdk.api.dq(840027, com.bytedance.msdk.api.dq.dq(840027)));
        }
    }
}
