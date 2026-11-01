package com.bytedance.sdk.openadsdk.kk.dq;

import com.bytedance.sdk.component.dq.fw;
import com.bytedance.sdk.component.dq.p;
import com.bytedance.sdk.openadsdk.core.c;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class ox extends com.bytedance.sdk.component.dq.p<JSONObject, JSONObject> {
    private static WeakReference<dq> dq;

    /* renamed from: d, reason: collision with root package name */
    private WeakReference<c> f3792d;

    public interface dq {
        void dq();

        void dq(int i);
    }

    private ox(c cVar) {
        this.f3792d = new WeakReference<>(cVar);
    }

    public static void dq(fw fwVar, final c cVar) {
        fwVar.dq("onClickBrowseCloseCallback", new p.d() { // from class: com.bytedance.sdk.openadsdk.kk.dq.ox.1
            @Override // com.bytedance.sdk.component.dq.p.d
            public com.bytedance.sdk.component.dq.p dq() {
                return new ox(c.this);
            }
        });
    }

    public static void dq(dq dqVar) {
        dq = new WeakReference<>(dqVar);
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void dq(JSONObject jSONObject, com.bytedance.sdk.component.dq.iw iwVar) throws Exception {
        WeakReference<dq> weakReference = dq;
        dq dqVar = weakReference != null ? weakReference.get() : null;
        if (this.f3792d == null || jSONObject == null) {
            if (dqVar != null) {
                dqVar.dq();
                return;
            }
            return;
        }
        int optInt = jSONObject.optInt("remainTime", Integer.MIN_VALUE);
        if (optInt == Integer.MIN_VALUE) {
            if (dqVar != null) {
                dqVar.dq();
            }
        } else if (dqVar != null) {
            dqVar.dq(optInt);
        }
    }

    @Override // com.bytedance.sdk.component.dq.p
    public void p() {
    }
}
