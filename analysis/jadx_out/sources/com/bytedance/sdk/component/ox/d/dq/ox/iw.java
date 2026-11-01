package com.bytedance.sdk.component.ox.d.dq.ox;

/* loaded from: classes.dex */
public final class iw {
    public static boolean d(String str) {
        return str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT");
    }

    public static boolean dq(String str) {
        return str.equals("POST") || str.equals("PATCH") || str.equals("PUT") || str.equals("DELETE") || str.equals("MOVE");
    }

    public static boolean ox(String str) {
        return d(str) || str.equals("OPTIONS") || str.equals("DELETE") || str.equals("PROPFIND") || str.equals("MKCOL") || str.equals("LOCK");
    }

    public static boolean p(String str) {
        return str.equals("PROPFIND");
    }

    public static boolean s(String str) {
        return !str.equals("PROPFIND");
    }
}
