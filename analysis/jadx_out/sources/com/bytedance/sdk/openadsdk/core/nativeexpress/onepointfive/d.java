package com.bytedance.sdk.openadsdk.core.nativeexpress.onepointfive;

import android.view.View;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.openadsdk.e.dq.d.dq.d {

    /* renamed from: d, reason: collision with root package name */
    public dq f3251d;
    public com.bytedance.sdk.openadsdk.e.dq.d.dq.d dq;
    public int ox;

    public interface dq {
        void dq(int i);
    }

    public d(dq dqVar, int i, com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar) {
        super(null);
        this.dq = dVar;
        this.f3251d = dqVar;
        this.ox = i;
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
    public void d(View view, int i) {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.d(view, i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
    public void dq(View view, float f2, float f3) {
        dq dqVar = this.f3251d;
        if (dqVar != null) {
            dqVar.dq(this.ox);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
    public void dq(View view, int i) {
        com.bytedance.sdk.openadsdk.e.dq.d.dq.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(view, i);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.e.dq.d.dq.d
    public void dq(View view, String str, int i) {
    }
}
