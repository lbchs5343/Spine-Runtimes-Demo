package com.bytedance.sdk.openadsdk.e.dq.d.dq;

import android.view.View;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class d {
    private final Bridge dq;

    public d(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d(View view, int i) {
        hat g2 = hat.g(2);
        g2.m(0, view);
        g2.o(1, i);
        this.dq.call(151102, g2.k(), Void.class);
    }

    public void dq(View view, float f2, float f3) {
        hat g2 = hat.g(3);
        g2.m(0, view);
        g2.l(1, f2);
        g2.l(2, f3);
        this.dq.call(151104, g2.k(), Void.class);
    }

    public void dq(View view, int i) {
        hat g2 = hat.g(2);
        g2.m(0, view);
        g2.o(1, i);
        this.dq.call(151101, g2.k(), Void.class);
    }

    public void dq(View view, String str, int i) {
        hat g2 = hat.g(3);
        g2.m(0, view);
        g2.n(1, str);
        g2.o(2, i);
        this.dq.call(151103, g2.k(), Void.class);
    }
}
