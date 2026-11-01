package com.bykv.vk.openvk.preload.geckox.no;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    private static ox f662d = new dq();
    private static boolean dq;

    public static void d(String str, String str2, Throwable th) {
        ox oxVar;
        if (!dq || (oxVar = f662d) == null) {
            return;
        }
        oxVar.d(str, str2, th);
    }

    public static void dq() {
        dq = true;
    }

    public static void dq(String str, String str2, Throwable th) {
        ox oxVar;
        if (!dq || (oxVar = f662d) == null) {
            return;
        }
        oxVar.dq(str, str2, th);
    }

    public static void dq(String str, Object... objArr) {
        ox oxVar;
        if (!dq || (oxVar = f662d) == null) {
            return;
        }
        oxVar.dq(str, objArr);
    }
}
