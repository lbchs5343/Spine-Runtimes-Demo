package com.bytedance.sdk.openadsdk.kx.dq.d.dq;

import android.os.Bundle;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes3.dex */
public class dq {
    private final Bridge dq;

    public dq(Bridge bridge) {
        this.dq = bridge == null ? hat.f19146a : bridge;
    }

    public void d() {
        this.dq.call(121102, hat.g(0).k(), Void.class);
    }

    public void dq() {
        this.dq.call(121101, hat.g(0).k(), Void.class);
    }

    public void dq(boolean z, int i, Bundle bundle) {
        hat g2 = hat.g(3);
        g2.i(0, z);
        g2.o(1, i);
        g2.m(2, bundle);
        this.dq.call(121107, g2.k(), Void.class);
    }

    public void dq(boolean z, int i, String str, int i2, String str2) {
        hat g2 = hat.g(5);
        g2.i(0, z);
        g2.o(1, i);
        g2.n(2, str);
        g2.o(3, i2);
        g2.n(4, str2);
        this.dq.call(121106, g2.k(), Void.class);
    }

    public void iw() {
        this.dq.call(121108, hat.g(0).k(), Void.class);
    }

    public void ox() {
        this.dq.call(121103, hat.g(0).k(), Void.class);
    }

    public void p() {
        this.dq.call(121104, hat.g(0).k(), Void.class);
    }

    public void s() {
        this.dq.call(121105, hat.g(0).k(), Void.class);
    }
}
