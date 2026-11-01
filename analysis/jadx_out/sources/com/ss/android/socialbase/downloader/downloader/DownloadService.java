package com.ss.android.socialbase.downloader.downloader;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public class DownloadService extends Service {

    /* renamed from: d, reason: collision with root package name */
    private static final String f9353d = "DownloadService";
    protected jy dq;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        String str = f9353d;
        StringBuilder sb = new StringBuilder("onBind downloadServiceHandler != null:");
        sb.append(this.dq != null);
        com.ss.android.socialbase.downloader.ox.dq.d(str, sb.toString());
        jy jyVar = this.dq;
        if (jyVar != null) {
            return jyVar.dq(intent);
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ox.dq(this);
        jy kx = ox.kx();
        this.dq = kx;
        kx.dq(new WeakReference(this));
    }

    @Override // android.app.Service
    public void onDestroy() {
        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
            com.ss.android.socialbase.downloader.ox.dq.d(f9353d, "Service onDestroy");
        }
        jy jyVar = this.dq;
        if (jyVar != null) {
            jyVar.p();
            this.dq = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(final Intent intent, final int i, final int i2) {
        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
            com.ss.android.socialbase.downloader.ox.dq.d(f9353d, "DownloadService onStartCommand");
        }
        this.dq.ox();
        ExecutorService ig = ox.ig();
        if (ig != null) {
            ig.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.DownloadService.1
                @Override // java.lang.Runnable
                public void run() {
                    jy jyVar = DownloadService.this.dq;
                    if (jyVar != null) {
                        jyVar.dq(intent, i, i2);
                    }
                }
            });
        }
        return ox.o() ? 2 : 3;
    }
}
