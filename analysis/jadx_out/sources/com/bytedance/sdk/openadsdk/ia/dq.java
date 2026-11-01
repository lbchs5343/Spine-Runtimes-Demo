package com.bytedance.sdk.openadsdk.ia;

import android.content.Context;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.iw;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.iw.jy;
import com.bytedance.sdk.component.iw.mp;
import com.bytedance.sdk.component.iw.ox.s;
import com.bytedance.sdk.component.iw.p;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.h.kk;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq {
    @ATSMethod
    public static jy dq(Context context, mp mpVar) {
        return com.bytedance.sdk.component.iw.ox.d.dq(context, mpVar);
    }

    @ATSMethod
    public static mp dq() {
        return new s.dq().dq(new com.bytedance.sdk.component.iw.ox.dq.dq(Math.max(Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 83886080), 10485760), 41943040L, new File(kk.iw()))).dq(mn.dq()).dq(new p() { // from class: com.bytedance.sdk.openadsdk.ia.dq.1
            private com.bytedance.sdk.component.iw.d.p dq(com.bytedance.sdk.component.iw.d.s sVar, Throwable th) {
                ig.d("ImageConfig", th.getMessage());
                if (sVar != null) {
                    sVar.ox(System.currentTimeMillis());
                }
                com.bytedance.sdk.component.iw.d.p pVar = new com.bytedance.sdk.component.iw.d.p(0, th, "net failed");
                pVar.dq(sVar);
                return pVar;
            }

            private Map<String, String> dq(com.bytedance.sdk.component.iw.s sVar, f fVar) {
                HashMap hashMap = new HashMap();
                if (sVar.d()) {
                    iw mn = fVar.mn();
                    int dq = mn.dq();
                    for (int i = 0; i < dq; i++) {
                        String dq2 = mn.dq(i);
                        String d2 = mn.d(i);
                        if (dq2 != null) {
                            hashMap.put(dq2, d2);
                        }
                    }
                }
                return hashMap;
            }

            @Override // com.bytedance.sdk.component.iw.p
            /* renamed from: call */
            public com.bytedance.sdk.component.iw.d.p call2(com.bytedance.sdk.component.iw.s sVar) {
                long currentTimeMillis = System.currentTimeMillis();
                com.bytedance.sdk.component.d.dq.ig iw = com.bytedance.sdk.openadsdk.core.le.s.dq().d().iw();
                q d2 = new q.dq().dq(sVar.dq()).dq().dq("csj_client_source_from", "2").d();
                f fVar = null;
                com.bytedance.sdk.component.iw.d.s sVar2 = sVar.ox() ? new com.bytedance.sdk.component.iw.d.s() : null;
                if (sVar2 != null) {
                    sVar2.dq(currentTimeMillis);
                }
                try {
                    f dq = iw.dq(d2).dq();
                    if (sVar2 != null) {
                        try {
                            sVar2.d(System.currentTimeMillis());
                        } catch (Throwable th) {
                            th = th;
                            fVar = dq;
                            try {
                                return dq(sVar2, th);
                            } finally {
                                com.bytedance.sdk.component.iw.ox.ox.d.dq(fVar);
                            }
                        }
                    }
                    if (sVar.p() != null) {
                        sVar.p().dq(3, null);
                    }
                    Map<String, String> dq2 = dq(sVar, dq);
                    byte[] p = dq.iw().p();
                    dq2.put("image_size", String.valueOf(p == null ? 0 : p.length));
                    com.bytedance.sdk.component.iw.d.p pVar = new com.bytedance.sdk.component.iw.d.p(dq.ox(), p, "", dq2);
                    if (sVar2 != null) {
                        sVar2.ox(System.currentTimeMillis());
                    }
                    pVar.dq(sVar2);
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(dq);
                    return pVar;
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        }).dq();
    }

    @ATSMethod
    public static Context getContext() {
        return wp.getContext();
    }
}
