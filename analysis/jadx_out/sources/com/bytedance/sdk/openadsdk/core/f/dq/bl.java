package com.bytedance.sdk.openadsdk.core.f.dq;

import android.os.Handler;
import android.os.Looper;
import com.bytedance.sdk.component.dq.p;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class bl extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {

    /* renamed from: d, reason: collision with root package name */
    private j f2844d;
    private WeakReference<com.bytedance.sdk.openadsdk.core.c> dq;
    private com.bytedance.sdk.openadsdk.core.fw.iw ox;
    private long p;

    public bl(com.bytedance.sdk.openadsdk.core.c cVar, j jVar) {
        this.dq = new WeakReference<>(cVar);
        this.f2844d = jVar;
    }

    public static void dq(com.bytedance.sdk.component.dq.fw fwVar, final com.bytedance.sdk.openadsdk.core.c cVar, final j jVar) {
        fwVar.dq("requestVideoDelayCallback", new p.d() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.bl.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new bl(com.bytedance.sdk.openadsdk.core.c.this, jVar);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        com.bytedance.sdk.openadsdk.core.c cVar = this.dq.get();
        if (cVar == null || jSONObject == null) {
            ox();
            return;
        }
        this.ox = new com.bytedance.sdk.openadsdk.core.fw.iw() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.bl.2
            @Override // com.bytedance.sdk.openadsdk.core.fw.iw
            public void dq() {
                new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.f.dq.bl.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            bl.this.dq((bl) new JSONObject());
                        } catch (Exception e2) {
                            com.bytedance.sdk.component.utils.ig.p("requestVideoDelay", e2.getMessage());
                        }
                    }
                }, bl.this.p);
            }
        };
        int optInt = jSONObject.optInt("delay", -1);
        if (optInt < 0) {
            return;
        }
        this.p = optInt;
        if (cVar.ox() == null || !cVar.ox().iw()) {
            cVar.dq(this.ox);
        } else {
            this.ox.dq();
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}
