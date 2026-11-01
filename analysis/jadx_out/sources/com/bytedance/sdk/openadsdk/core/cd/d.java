package com.bytedance.sdk.openadsdk.core.cd;

/* loaded from: classes3.dex */
public class d {
    public static boolean d(long j) {
        return dq(j, dq.USE_PITAYA.dq());
    }

    public static boolean dq(long j) {
        return dq(j, dq.USE_ALOG.dq());
    }

    public static boolean dq(long j, long j2) {
        return (j & j2) == j2;
    }
}
