package com.ss.android.downloadlib.mn;

import android.annotation.TargetApi;
import android.os.AsyncTask;

/* loaded from: classes.dex */
public class d {
    static final dq dq = new C0220d();

    @TargetApi(11)
    /* renamed from: com.ss.android.downloadlib.mn.d$d, reason: collision with other inner class name */
    public static class C0220d extends dq {
        private C0220d() {
            super();
        }

        @Override // com.ss.android.downloadlib.mn.d.dq
        public <T> void dq(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            try {
                asyncTask.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, tArr);
            } catch (Throwable unused) {
            }
        }
    }

    public static class dq {
        private dq() {
        }

        public <T> void dq(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
            try {
                asyncTask.executeOnExecutor(com.bytedance.sdk.component.o.p.d.dq, tArr);
            } catch (Throwable unused) {
            }
        }
    }

    public static <T> void dq(AsyncTask<T, ?, ?> asyncTask, T... tArr) {
        dq.dq(asyncTask, tArr);
    }
}
