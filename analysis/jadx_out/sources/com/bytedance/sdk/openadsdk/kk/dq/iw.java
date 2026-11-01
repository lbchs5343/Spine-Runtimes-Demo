package com.bytedance.sdk.openadsdk.kk.dq;

import com.bytedance.sdk.component.dq.fw;
import com.bytedance.sdk.component.dq.p;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private WeakReference<c> dq;

    public iw(c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(fw fwVar, final c cVar) {
        fwVar.dq("openPrivacy", new p.d() { // from class: com.bytedance.sdk.openadsdk.kk.dq.iw.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new iw(c.this);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        c cVar;
        j kk;
        WeakReference<c> weakReference = this.dq;
        if (weakReference == null || (cVar = weakReference.get()) == null || (kk = cVar.kk()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(iwVar.getContext(), kk);
        cVar.wn();
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}
