package com.bytedance.sdk.openadsdk.core.dq;

import android.os.Looper;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.f.d.d.f;

/* loaded from: classes3.dex */
public class kk extends com.bytedance.sdk.openadsdk.r.dq.d.dq.mn implements d {
    private long dq;

    public kk(Bridge bridge) {
        super(bridge);
        this.dq = System.currentTimeMillis();
    }

    @Override // com.bytedance.sdk.openadsdk.core.dq.d
    public long d() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
    public void d(final f fVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.d(fVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.kk.4
                @Override // java.lang.Runnable
                public void run() {
                    kk.super.d(fVar);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
    public void dq() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq();
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.kk.3
                @Override // java.lang.Runnable
                public void run() {
                    kk.super.dq();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
    public void dq(final int i, final String str) {
        if (str == null) {
            str = "未知异常";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq(i, str);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.kk.1
                @Override // java.lang.Runnable
                public void run() {
                    kk.super.dq(i, str);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.mn
    public void dq(final f fVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq(fVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.kk.2
                @Override // java.lang.Runnable
                public void run() {
                    kk.super.dq(fVar);
                }
            });
        }
    }
}
