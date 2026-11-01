package com.bytedance.sdk.component.d.dq.d;

/* loaded from: classes.dex */
final class mn {

    /* renamed from: d, reason: collision with root package name */
    static long f1833d;
    static iw dq;

    private mn() {
    }

    public static iw dq() {
        synchronized (mn.class) {
            try {
                iw iwVar = dq;
                if (iwVar == null) {
                    return new iw();
                }
                dq = iwVar.iw;
                iwVar.iw = null;
                f1833d -= 8192;
                return iwVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void dq(iw iwVar) {
        if (iwVar.iw != null || iwVar.mn != null) {
            throw new IllegalArgumentException();
        }
        if (iwVar.p) {
            return;
        }
        synchronized (mn.class) {
            try {
                long j = f1833d;
                if (j + 8192 > 65536) {
                    return;
                }
                f1833d = j + 8192;
                iwVar.iw = dq;
                iwVar.ox = 0;
                iwVar.f1832d = 0;
                dq = iwVar;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
