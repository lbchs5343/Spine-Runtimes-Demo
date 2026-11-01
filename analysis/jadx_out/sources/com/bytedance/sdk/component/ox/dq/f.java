package com.bytedance.sdk.component.ox.dq;

/* loaded from: classes.dex */
final class f {

    /* renamed from: d, reason: collision with root package name */
    static long f2152d;
    static jy dq;

    private f() {
    }

    public static jy dq() {
        synchronized (f.class) {
            try {
                jy jyVar = dq;
                if (jyVar == null) {
                    return new jy();
                }
                dq = jyVar.iw;
                jyVar.iw = null;
                f2152d -= 8192;
                return jyVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dq(jy jyVar) {
        if (jyVar.iw != null || jyVar.mn != null) {
            throw new IllegalArgumentException();
        }
        if (jyVar.p) {
            return;
        }
        synchronized (f.class) {
            try {
                long j = f2152d;
                if (j + 8192 > 65536) {
                    return;
                }
                f2152d = j + 8192;
                jyVar.iw = dq;
                jyVar.ox = 0;
                jyVar.f2157d = 0;
                dq = jyVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
