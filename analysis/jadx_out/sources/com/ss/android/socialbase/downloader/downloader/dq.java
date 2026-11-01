package com.ss.android.socialbase.downloader.downloader;

import android.app.Notification;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import g.tn;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class dq implements jy {
    private static final String s = "dq";
    private WeakReference<Service> iw;
    protected volatile boolean ox;
    protected final SparseArray<List<DownloadTask>> dq = new SparseArray<>();

    /* renamed from: d, reason: collision with root package name */
    protected volatile boolean f9355d = false;
    protected volatile boolean p = false;
    private Handler mn = new Handler(Looper.getMainLooper());
    private Runnable ia = new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.dq.1
        @Override // java.lang.Runnable
        public void run() {
            if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                com.ss.android.socialbase.downloader.ox.dq.d(dq.s, "tryDownload: 2 try");
            }
            if (dq.this.f9355d) {
                return;
            }
            if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                com.ss.android.socialbase.downloader.ox.dq.d(dq.s, "tryDownload: 2 error");
            }
            dq.this.startService(ox.ob(), null);
        }
    };

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void d(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        if (this.f9355d) {
            String str = s;
            com.ss.android.socialbase.downloader.ox.dq.d(str, "tryDownload when isServiceAlive");
            s();
            com.ss.android.socialbase.downloader.impls.dq n = ox.n();
            if (n != null) {
                com.ss.android.socialbase.downloader.ox.dq.d(str, "tryDownload current task: " + downloadTask.getDownloadId());
                n.dq(downloadTask);
                return;
            }
            return;
        }
        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
            com.ss.android.socialbase.downloader.ox.dq.d(s, "tryDownload but service is not alive");
        }
        if (!com.ss.android.socialbase.downloader.kk.dq.dq(262144)) {
            dq(downloadTask);
            startService(ox.ob(), null);
            return;
        }
        dq(downloadTask);
        if (this.p) {
            this.mn.removeCallbacks(this.ia);
            this.mn.postDelayed(this.ia, 10L);
        } else {
            if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                com.ss.android.socialbase.downloader.ox.dq.d(s, "tryDownload: 1");
            }
            startService(ox.ob(), null);
            this.p = true;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public boolean d() {
        com.ss.android.socialbase.downloader.ox.dq.ox(s, "isServiceForeground = " + this.ox);
        return this.ox;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public IBinder dq(Intent intent) {
        com.ss.android.socialbase.downloader.ox.dq.d(s, "onBind Abs");
        return new Binder();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void dq(int i) {
        com.ss.android.socialbase.downloader.ox.dq.dq(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void dq(int i, Notification notification) {
        WeakReference<Service> weakReference = this.iw;
        if (weakReference == null || weakReference.get() == null) {
            com.ss.android.socialbase.downloader.ox.dq.p(s, "startForeground: downloadService is null, do nothing!");
            return;
        }
        String str = s;
        StringBuilder z = tn.z(i, "startForeground  id = ", ", service = ");
        z.append(this.iw.get());
        z.append(",  isServiceAlive = ");
        z.append(this.f9355d);
        com.ss.android.socialbase.downloader.ox.dq.ox(str, z.toString());
        try {
            this.iw.get().startForeground(i, notification);
            this.ox = true;
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void dq(Intent intent, int i, int i2) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void dq(q qVar) {
    }

    public void dq(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        int downloadId = downloadTask.getDownloadId();
        synchronized (this.dq) {
            try {
                String str = s;
                com.ss.android.socialbase.downloader.ox.dq.d(str, "pendDownloadTask pendingTasks.size:" + this.dq.size() + " downloadId:" + downloadId);
                List<DownloadTask> list = this.dq.get(downloadId);
                if (list == null) {
                    list = new ArrayList<>();
                    this.dq.put(downloadId, list);
                }
                com.ss.android.socialbase.downloader.ox.dq.d(str, "before pendDownloadTask taskArray.size:" + list.size());
                list.add(downloadTask);
                com.ss.android.socialbase.downloader.ox.dq.d(str, "after pendDownloadTask pendingTasks.size:" + this.dq.size());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void dq(WeakReference weakReference) {
        this.iw = weakReference;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void dq(boolean z) {
        WeakReference<Service> weakReference = this.iw;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.ox(s, "stopForeground  service = " + this.iw.get() + ",  isServiceAlive = " + this.f9355d);
        try {
            this.ox = false;
            this.iw.get().stopForeground(z);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public boolean dq() {
        return this.f9355d;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void ox() {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void ox(DownloadTask downloadTask) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void p() {
        this.f9355d = false;
    }

    public void s() {
        SparseArray<List<DownloadTask>> clone;
        synchronized (this.dq) {
            com.ss.android.socialbase.downloader.ox.dq.d(s, "resumePendingTask pendingTasks.size:" + this.dq.size());
            clone = this.dq.clone();
            this.dq.clear();
        }
        com.ss.android.socialbase.downloader.impls.dq n = ox.n();
        if (n != null) {
            for (int i = 0; i < clone.size(); i++) {
                List<DownloadTask> list = clone.get(clone.keyAt(i));
                if (list != null) {
                    for (DownloadTask downloadTask : list) {
                        com.ss.android.socialbase.downloader.ox.dq.d(s, "resumePendingTask key:" + downloadTask.getDownloadId());
                        n.dq(downloadTask);
                    }
                }
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.jy
    public void startService() {
        if (this.f9355d) {
            return;
        }
        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
            com.ss.android.socialbase.downloader.ox.dq.d(s, "startService");
        }
        startService(ox.ob(), null);
    }

    public void startService(Context context, ServiceConnection serviceConnection) {
    }

    public void stopService(Context context, ServiceConnection serviceConnection) {
    }
}
