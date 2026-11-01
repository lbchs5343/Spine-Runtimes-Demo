package com.bytedance.sdk.openadsdk.core.component.reward.endcard;

import com.bytedance.sdk.openadsdk.core.fw.s;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
class p extends com.bytedance.sdk.openadsdk.core.cd.p {

    /* renamed from: d, reason: collision with root package name */
    private final j f2608d;
    private final WeakReference<s> dq;
    private final String ox;

    public p(j jVar, String str, s sVar) {
        this.f2608d = jVar;
        this.ox = str;
        this.dq = new WeakReference<>(sVar);
    }

    @Override // com.bytedance.sdk.openadsdk.q.dq
    public void dq() {
        WeakReference<s> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().dq();
    }

    @Override // com.bytedance.sdk.openadsdk.q.dq
    public void dq(int i, String str) {
        WeakReference<s> weakReference = this.dq;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.dq.get().dq(i, str);
    }

    @Override // com.bytedance.sdk.openadsdk.q.dq
    public void dq(JSONObject jSONObject) {
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.f2608d, this.ox, "playable_track", jSONObject);
    }
}
