package com.bytedance.sdk.openadsdk.core.dislike.dq;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private static ox f2801d;
    private static volatile boolean dq;
    private static p ox;

    public static p d() {
        return ox;
    }

    public static ox dq() {
        return f2801d;
    }

    public static void dq(ox oxVar, p pVar) {
        if (dq) {
            return;
        }
        dq = true;
        f2801d = oxVar;
        ox = pVar;
    }
}
