package com.bytedance.sdk.openadsdk.core.dq;

import android.os.Looper;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.le;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.r.dq.d.dq.dq implements d {
    private long dq;

    public ox(Bridge bridge) {
        super(bridge);
        this.dq = System.currentTimeMillis();
    }

    @Override // com.bytedance.sdk.openadsdk.core.dq.d
    public long d() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.dq
    public void d(final com.bytedance.sdk.openadsdk.f.d.d.d dVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.d(dVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.ox.3
                @Override // java.lang.Runnable
                public void run() {
                    ox.super.d(dVar);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.dq
    public void dq(final com.bytedance.sdk.openadsdk.f.d.d.d dVar) {
        if (com.bytedance.sdk.openadsdk.core.component.splash.mn.dq()) {
            super.dq(dVar);
        } else {
            com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    ox.super.dq(dVar);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.dq
    public void dq(final com.bytedance.sdk.openadsdk.f.d.d.d dVar, final com.bytedance.sdk.openadsdk.f.d.d.dq dqVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq(dVar, dqVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.ox.4
                @Override // java.lang.Runnable
                public void run() {
                    ox.super.dq(dVar, dqVar);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.dq
    public void dq(final com.bytedance.sdk.openadsdk.f.d.d.dq dqVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq(dqVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.ox.2
                @Override // java.lang.Runnable
                public void run() {
                    ox.super.dq(dqVar);
                }
            });
        }
    }
}
