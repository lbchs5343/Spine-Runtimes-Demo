package com.bytedance.msdk.ia.p;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.openvk.api.proto.Bridge;
import g.hat;

/* loaded from: classes.dex */
public class d {
    private static Bridge dq;

    private static void d(com.bytedance.msdk.s.dq dqVar, boolean z) {
        if (dq != null) {
            hat f2 = hat.f();
            if (z) {
                f2.n(20003, dqVar.ox());
                dq.call(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBLS, f2.k(), Void.class);
            } else {
                f2.n(20002, dqVar.ox());
                dq.call(AVMDLDataLoader.KeyIsStoPlayDldWinSizeKBLS, f2.k(), Void.class);
            }
        }
    }

    public static void dq(Bridge bridge) {
        dq = bridge;
    }

    public static void dq(com.bytedance.msdk.s.dq dqVar, boolean z) {
        if (dqVar != null && com.bytedance.msdk.core.d.no().e()) {
            d(dqVar, z);
        }
    }
}
