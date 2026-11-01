package com.ss.android.socialbase.downloader.impls;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import com.ss.android.socialbase.downloader.downloader.DownloadService;

/* loaded from: classes.dex */
public class ia extends com.ss.android.socialbase.downloader.downloader.dq {
    private static final String s = "ia";

    @Override // com.ss.android.socialbase.downloader.downloader.dq, com.ss.android.socialbase.downloader.downloader.jy
    public void dq(Intent intent, int i, int i2) {
        if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
            com.ss.android.socialbase.downloader.ox.dq.d(s, "onStartCommand");
        }
        if (!com.ss.android.socialbase.downloader.kk.dq.dq(262144)) {
            this.f9355d = true;
        }
        s();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq, com.ss.android.socialbase.downloader.downloader.jy
    public void ox() {
        if (com.ss.android.socialbase.downloader.kk.dq.dq(262144)) {
            this.f9355d = true;
            this.p = false;
            if (com.ss.android.socialbase.downloader.ox.dq.dq()) {
                com.ss.android.socialbase.downloader.ox.dq.d(s, "onStartCommandOnMainThread");
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq
    public void startService(Context context, ServiceConnection serviceConnection) {
        try {
            context.startService(new Intent(context, (Class<?>) DownloadService.class));
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.dq
    public void stopService(Context context, ServiceConnection serviceConnection) {
        context.stopService(new Intent(context, (Class<?>) DownloadService.class));
        this.f9355d = false;
    }
}
