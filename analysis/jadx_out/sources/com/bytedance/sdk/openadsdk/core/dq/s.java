package com.bytedance.sdk.openadsdk.core.dq;

import android.os.Looper;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.le;
import com.bytedance.sdk.openadsdk.f.d.d.no;
import java.util.List;

/* loaded from: classes3.dex */
public class s extends com.bytedance.sdk.openadsdk.r.dq.d.dq.ox implements d {
    private long dq;

    public s(Bridge bridge) {
        super(bridge);
        this.dq = System.currentTimeMillis();
    }

    @Override // com.bytedance.sdk.openadsdk.core.dq.d
    public long d() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.ox
    public void dq(final int i, final String str) {
        if (str == null) {
            str = "未知异常";
        }
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq(i, str);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.s.1
                @Override // java.lang.Runnable
                public void run() {
                    s.super.dq(i, str);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.r.dq.d.dq.ox
    public void dq(final List<no> list) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            super.dq(list);
        } else {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.dq.s.2
                @Override // java.lang.Runnable
                public void run() {
                    s.super.dq(list);
                }
            });
        }
    }
}
