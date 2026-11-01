package com.bytedance.sdk.openadsdk.q;

/* loaded from: classes3.dex */
public class mn {
    private static dq dq;

    public interface dq {
        void dq(String str, String str2, Throwable th);
    }

    public static void dq(dq dqVar) {
        dq = dqVar;
    }

    public static void dq(String str, String str2, Throwable th) {
        if (dq == null) {
            return;
        }
        if (th == null) {
            th = new Throwable();
        }
        dq.dq(str, str2, th);
    }

    public static boolean dq() {
        return dq != null;
    }
}
