package com.bytedance.msdk.api.p.dq.d.ox;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;

/* loaded from: classes.dex */
public final class ox {

    /* renamed from: d, reason: collision with root package name */
    private final String f775d;
    private final String dq;
    private final int ox;
    private final int p;
    private final String s;

    public ox(String str, String str2, int i, int i2, String str3) {
        this.dq = str;
        this.f775d = str2;
        this.ox = i;
        this.p = i2;
        this.s = str3;
    }

    public int d() {
        return this.ox;
    }

    public ValueSet dq() {
        hat f2 = hat.f();
        f2.n(AVMDLDataLoader.KeyIsLiveGetPlayCacheSec, this.dq);
        f2.n(2, this.f775d);
        f2.o(AVMDLDataLoader.KeyIsLiveMaxTrySwitchP2pTimes, this.ox);
        f2.o(8094, this.p);
        f2.n(8547, this.s);
        return f2.k();
    }
}
