package com.bytedance.sdk.gromore.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import g.hat;

/* loaded from: classes.dex */
public class dq implements Bridge {

    /* renamed from: d, reason: collision with root package name */
    private static Bridge f2301d;
    private static volatile dq dq;

    private dq() {
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public static void dq(Bridge bridge) {
        f2301d = bridge;
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        return null;
    }

    public void dq(String str, String str2) {
        if (f2301d != null) {
            hat f2 = hat.f();
            f2.n(AdBaseConstants.DEFAULT_INSTALL_FINISH_TRY_INTERVAL_MS, str);
            f2.n(20001, str2);
            f2301d.call(10000, f2.k(), null);
        }
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
