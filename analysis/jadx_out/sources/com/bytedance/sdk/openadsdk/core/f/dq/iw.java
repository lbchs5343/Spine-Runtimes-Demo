package com.bytedance.sdk.openadsdk.core.f.dq;

import android.util.Log;
import com.bytedance.sdk.component.dq.p;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private j f2853d;
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;
    private com.bytedance.sdk.openadsdk.core.fw.ox ox;

    public iw(com.bytedance.sdk.openadsdk.core.c cVar, j jVar) {
        this.dq = new WeakReference<>(cVar);
        this.f2853d = jVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, final com.bytedance.sdk.openadsdk.core.c cVar, final j jVar) {
        fwVar.dq("getNetworkData", new p.d() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.iw.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new iw(com.bytedance.sdk.openadsdk.core.c.this, jVar);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.c cVar = this.dq.get();
        if (cVar == null) {
            ox();
            return;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        this.ox = new com.bytedance.sdk.openadsdk.core.fw.ox() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.iw.2
            @Override // com.bytedance.sdk.openadsdk.core.fw.ox
            public void dq(boolean z, List<j> list, boolean z2) {
                try {
                    JSONObject jSONObject2 = new JSONObject();
                    if (z) {
                        jSONObject2.put("creatives", com.bytedance.sdk.openadsdk.core.c.dq(list));
                        jSONObject2.put("is_cache", z2);
                        if (z2) {
                            jSONObject2.put("prefetch_opt_time", currentTimeMillis - com.bytedance.sdk.openadsdk.core.playable.p.dq().ox(iw.this.f2853d));
                        }
                        iw.this.dq((iw) jSONObject2);
                    } else {
                        iw.this.dq((iw) jSONObject2);
                    }
                    com.bytedance.sdk.openadsdk.core.no.ia().c();
                } catch (Throwable th) {
                    Log.e("DoGetAdsFromNetwork", "onAdLoaded error", th);
                }
            }
        };
        if (jSONObject != null && jSONObject.optBoolean("is_first_request", false) && com.bytedance.sdk.openadsdk.core.playable.p.dq().dq(this.f2853d, this.ox)) {
            return;
        }
        cVar.dq(jSONObject, this.ox);
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}
