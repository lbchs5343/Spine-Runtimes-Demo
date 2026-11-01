package com.ss.android.downloadlib;

import android.content.SharedPreferences;
import android.util.SparseArray;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.mn.mp;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.he;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class s {

    /* renamed from: d, reason: collision with root package name */
    private ExecutorService f9261d;
    private ExecutorService dq;
    private ScheduledExecutorService ox;
    private ExecutorService p;

    public static class dq {
        private static s dq = new s();
    }

    private s() {
    }

    public static s dq() {
        return dq.dq;
    }

    public ExecutorService d() {
        if (this.dq == null) {
            synchronized (s.class) {
                try {
                    if (this.dq == null) {
                        this.dq = new com.bytedance.sdk.component.o.p.p(0, he.UNDEFINED_ITEM_ID, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new com.ss.android.socialbase.downloader.ia.dq(o.class.getName().concat("-CPUThreadPool")));
                    }
                } finally {
                }
            }
        }
        return this.dq;
    }

    public void d(Runnable runnable) {
        d(runnable, false);
    }

    public void d(Runnable runnable, boolean z) {
        if (runnable == null) {
            return;
        }
        if (!z || mp.d()) {
            ox().execute(runnable);
        } else {
            runnable.run();
        }
    }

    public void dq(Runnable runnable) {
        dq(runnable, false);
    }

    public void dq(Runnable runnable, long j) {
        try {
            p().schedule(runnable, j, TimeUnit.MILLISECONDS);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void dq(Runnable runnable, boolean z) {
        if (runnable == null) {
            return;
        }
        if (!z || mp.d()) {
            d().execute(runnable);
        } else {
            runnable.run();
        }
    }

    public void iw() {
        dq(new Runnable() { // from class: com.ss.android.downloadlib.s.1
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.downloader.downloader.o e2;
                synchronized (s.class) {
                    try {
                        String[] strArr = {"sp_ad_download_event", "sp_download_finish_cache", "sp_delay_operation_info", "sp_ttdownloader_md5", "sp_name_installed_app", "misc_config", "sp_ad_install_back_dialog", "sp_ttdownloader_clean", "sp_order_download", "sp_a_b_c", "sp_ah_config", "sp_download_info", "sp_appdownloader"};
                        for (int i = 0; i < 13; i++) {
                            SharedPreferences sharedPreferences = no.getContext().getSharedPreferences(strArr[i], 0);
                            if (sharedPreferences != null) {
                                sharedPreferences.edit().clear().apply();
                            }
                        }
                        e2 = com.ss.android.socialbase.downloader.downloader.ox.e();
                    } catch (Throwable unused) {
                    }
                    if (e2 instanceof com.ss.android.socialbase.downloader.impls.p) {
                        SparseArray<DownloadInfo> dq2 = ((com.ss.android.socialbase.downloader.impls.p) e2).dq().dq();
                        for (int size = dq2.size() - 1; size >= 0; size--) {
                            DownloadInfo downloadInfo = dq2.get(dq2.keyAt(size));
                            if (downloadInfo != null) {
                                Downloader.getInstance(no.getContext()).clearDownloadData(downloadInfo.getId());
                            }
                        }
                    }
                }
            }
        });
    }

    public ExecutorService ox() {
        if (this.f9261d == null) {
            synchronized (s.class) {
                try {
                    if (this.f9261d == null) {
                        this.f9261d = new com.bytedance.sdk.component.o.p.p(0, he.UNDEFINED_ITEM_ID, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new com.ss.android.socialbase.downloader.ia.dq(o.class.getName().concat("-IOThreadPool")));
                    }
                } finally {
                }
            }
        }
        return this.f9261d;
    }

    public void ox(Runnable runnable) {
        if (runnable == null) {
            return;
        }
        s().execute(runnable);
    }

    public ScheduledExecutorService p() {
        if (this.ox == null) {
            synchronized (s.class) {
                try {
                    if (this.ox == null) {
                        this.ox = new com.bytedance.sdk.component.o.p.s(0, new com.ss.android.socialbase.downloader.ia.dq(o.class.getName().concat("-ScheduledThreadPool")));
                    }
                } finally {
                }
            }
        }
        return this.ox;
    }

    public ExecutorService s() {
        if (this.p == null) {
            synchronized (s.class) {
                try {
                    if (this.p == null) {
                        this.p = new com.bytedance.sdk.component.o.p.p(5, he.UNDEFINED_ITEM_ID, 30L, TimeUnit.SECONDS, new SynchronousQueue(), new com.ss.android.socialbase.downloader.ia.dq(o.class.getName().concat("-InstallFinishCheckCPUThreadPool")));
                    }
                } finally {
                }
            }
        }
        return this.p;
    }
}
