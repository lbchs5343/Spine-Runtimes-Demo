package com.bytedance.msdk.dq.s;

import java.util.IllegalFormatException;

/* loaded from: classes.dex */
public final class p {
    private static String dq(String str, Object... objArr) {
        String valueOf = String.valueOf(str);
        try {
            return String.format(valueOf, objArr);
        } catch (IllegalFormatException e2) {
            ox.p("TTMediationSDK_ADAPTER", "MoPub preconditions had a format exception: " + e2.getMessage());
            return valueOf;
        }
    }

    public static void dq(Object obj) {
        dq(obj, true, "Object can not be null.", "");
    }

    private static boolean dq(Object obj, boolean z, String str, Object... objArr) {
        if (obj != null) {
            return true;
        }
        String dq = dq(str, objArr);
        if (z) {
            throw new NullPointerException(dq);
        }
        ox.p("TTMediationSDK_ADAPTER", dq);
        return false;
    }
}
