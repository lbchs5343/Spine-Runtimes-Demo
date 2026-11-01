package com.ss.android.socialbase.downloader.impls;

/* loaded from: classes.dex */
public class ig {

    /* renamed from: d, reason: collision with root package name */
    private static volatile com.ss.android.socialbase.downloader.downloader.mp f9394d;
    private static volatile com.ss.android.socialbase.downloader.downloader.mp dq;

    public static com.ss.android.socialbase.downloader.downloader.mp dq(boolean z) {
        if (z && com.ss.android.socialbase.downloader.downloader.ox.uh()) {
            if (f9394d == null) {
                synchronized (ig.class) {
                    try {
                        if (f9394d == null) {
                            f9394d = com.ss.android.socialbase.downloader.downloader.ox.xz().d();
                        }
                    } finally {
                    }
                }
            }
            return f9394d;
        }
        if (dq == null) {
            synchronized (ig.class) {
                try {
                    if (dq == null) {
                        dq = new f();
                    }
                } finally {
                }
            }
        }
        return dq;
    }
}
