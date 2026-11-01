package com.ss.android.downloadlib.s;

import android.text.TextUtils;

/* loaded from: classes.dex */
public class d {

    public interface dq<T> {
        T d();
    }

    public static <T> T dq(dq<T> dqVar) {
        return (T) dq(true, null, dqVar);
    }

    public static <T> T dq(boolean z, String str, dq<T> dqVar) {
        try {
            return dqVar.d();
        } catch (Throwable th) {
            if (th instanceof com.ss.android.downloadlib.s.dq) {
                throw th;
            }
            ox.dq().dq(z, th, str);
            if (TextUtils.isEmpty(str)) {
                throw th;
            }
            return null;
        }
    }

    public static void dq(final Runnable runnable) {
        dq(new dq<Void>() { // from class: com.ss.android.downloadlib.s.d.1
            @Override // com.ss.android.downloadlib.s.d.dq
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public Void d() {
                runnable.run();
                return null;
            }
        });
    }
}
