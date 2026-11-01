package com.ss.android.socialbase.downloader.network.dq;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Process;
import android.text.TextUtils;
import com.ss.android.socialbase.downloader.kk.iw;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.network.o;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    static long f9450d;
    static long dq;
    private static final HandlerThread ox;
    private static final Handler p;

    static {
        HandlerThread handlerThread = new HandlerThread("Downloader-preconnecter");
        ox = handlerThread;
        d();
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        p = handler;
        handler.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.network.dq.d.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Process.setThreadPriority(10);
                } catch (Throwable unused) {
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static List<com.ss.android.socialbase.downloader.model.ox> d(long j, DownloadInfo downloadInfo, List<com.ss.android.socialbase.downloader.model.ox> list) {
        return iw.dq(list, downloadInfo == null ? null : downloadInfo.geteTag(), j, 0L);
    }

    private static void d() {
        dq = com.ss.android.socialbase.downloader.mn.dq.ox().dq("preconnect_connection_outdate_time", 300000L);
        f9450d = com.ss.android.socialbase.downloader.mn.dq.ox().dq("preconnect_head_info_outdate_time", 300000L);
        dq.dq().dq(com.ss.android.socialbase.downloader.mn.dq.ox().dq("preconnect_max_cache_size", 3));
    }

    public static Looper dq() {
        return ox.getLooper();
    }

    public static void dq(final String str, final o oVar) {
        p.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.network.dq.d.2
            @Override // java.lang.Runnable
            public void run() {
                if (TextUtils.isEmpty(str)) {
                    o oVar2 = oVar;
                    if (oVar2 != null) {
                        oVar2.dq(null);
                        return;
                    }
                    return;
                }
                try {
                    try {
                        List<com.ss.android.socialbase.downloader.model.ox> d2 = d.d(0L, null, null);
                        r1 = dq.dq().dq(str) ? dq.dq().dq(str, d2) : null;
                        if (r1 == null) {
                            ox oxVar = new ox(str, d2, 0L);
                            try {
                                oxVar.dq();
                                if (oxVar.s()) {
                                    dq.dq().dq(str, oxVar);
                                }
                                r1 = oxVar;
                            } catch (Exception e2) {
                                e = e2;
                                r1 = oxVar;
                                e.printStackTrace();
                                try {
                                    r1.ox();
                                    return;
                                } catch (Throwable unused) {
                                    return;
                                }
                            } catch (Throwable th) {
                                th = th;
                                r1 = oxVar;
                                try {
                                    r1.ox();
                                } catch (Throwable unused2) {
                                }
                                throw th;
                            }
                        }
                        Map<String, String> kk = r1.kk();
                        o oVar3 = oVar;
                        if (oVar3 != null) {
                            oVar3.dq(kk);
                        }
                        try {
                            r1.ox();
                        } catch (Throwable unused3) {
                        }
                    } catch (Exception e3) {
                        e = e3;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        });
    }
}
