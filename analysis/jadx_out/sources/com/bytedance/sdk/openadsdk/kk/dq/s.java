package com.bytedance.sdk.openadsdk.kk.dq;

import com.bytedance.sdk.component.dq.fw;
import com.bytedance.sdk.component.dq.p;
import com.bytedance.sdk.openadsdk.core.c;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class s extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private WeakReference<c> dq;

    public s(c cVar) {
        this.dq = new WeakReference<>(cVar);
    }

    public static void dq(fw fwVar, final c cVar) {
        fwVar.dq("adInfoDialog", new p.d() { // from class: com.bytedance.sdk.openadsdk.kk.dq.s.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new s(c.this);
            }
        });
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        j kk;
        no.ia().c();
        c cVar = this.dq.get();
        if (cVar == null || (kk = cVar.kk()) == null) {
            return;
        }
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(iwVar.getContext(), kk.ao());
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}
