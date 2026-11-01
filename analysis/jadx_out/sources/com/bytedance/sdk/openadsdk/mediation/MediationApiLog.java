package com.bytedance.sdk.openadsdk.mediation;

import android.util.Log;

/* loaded from: classes3.dex */
public class MediationApiLog {

    /* renamed from: d, reason: collision with root package name */
    private static String f3800d = "MEDIATION_LOG";
    private static boolean dq;

    public static void e(String str) {
        if (dq) {
            Log.e(f3800d, str);
        }
    }

    public static void e(String str, String str2) {
        if (dq) {
            Log.e(str, str2);
        }
    }

    public static void i(String str) {
    }

    public static void i(String str, String str2) {
    }

    public static void setDebug(Boolean bool) {
        dq = bool.booleanValue();
    }
}
