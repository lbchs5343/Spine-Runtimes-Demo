package com.bytedance.sdk.component.kk.p;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private d f1998d;
    private dq dq;

    public interface d {
        void d(String str, String str2);

        void dq(String str, String str2);
    }

    public enum dq {
        DEBUG,
        INFO,
        ERROR,
        OFF
    }

    /* renamed from: com.bytedance.sdk.component.kk.p.ox$ox, reason: collision with other inner class name */
    public static class C0122ox {
        private static final ox dq = new ox();
    }

    private ox() {
        this.dq = dq.OFF;
        this.f1998d = new com.bytedance.sdk.component.kk.p.d();
    }

    public static void d(String str, String str2) {
        if (C0122ox.dq.dq.compareTo(dq.INFO) <= 0) {
            C0122ox.dq.f1998d.d(str, str2);
        }
    }

    public static void dq(dq dqVar) {
        synchronized (ox.class) {
            C0122ox.dq.dq = dqVar;
        }
    }

    public static void dq(String str, String str2) {
        if (C0122ox.dq.dq.compareTo(dq.ERROR) <= 0) {
            C0122ox.dq.f1998d.dq(str, str2);
        }
    }

    public static void ox(String str, String str2) {
        if (C0122ox.dq.dq.compareTo(dq.DEBUG) <= 0) {
            ox unused = C0122ox.dq;
        }
    }
}
