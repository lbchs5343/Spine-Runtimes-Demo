package com.bytedance.sdk.openadsdk.core.dq;

import android.os.Looper;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.f.d.d.ig;

/* loaded from: classes3.dex */
public class iw extends com.bytedance.sdk.openadsdk.r.dq.d.dq.p implements d {
    private long dq;

    public iw(Bridge bridge) {
        super(bridge);
        this.dq = System.currentTimeMillis();
    }

    @Override // com.bytedance.sdk.openadsdk.core.dq.d
    public long d() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.p
    public void d(final ig igVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.d(igVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.iw.4
                @Override // java.lang.Runnable
                public void run() {
                    iw.super.d(igVar);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.p
    public void dq() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq();
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.iw.3
                @Override // java.lang.Runnable
                public void run() {
                    iw.super.dq();
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.p
    public void dq(final int i, final String str) {
        if (str == null) {
            str = "未知异常";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq(i, str);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.iw.1
                @Override // java.lang.Runnable
                public void run() {
                    iw.super.dq(i, str);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.p
    public void dq(final ig igVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq(igVar);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.iw.2
                @Override // java.lang.Runnable
                public void run() {
                    iw.super.dq(igVar);
                }
            });
        }
    }
}
