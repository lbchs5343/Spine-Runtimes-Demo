package com.ss.android.socialbase.downloader.downloader;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class IndependentProcessDownloadService extends DownloadService {
    @Override // com.ss.android.socialbase.downloader.downloader.DownloadService, android.app.Service
    public void onCreate() {
        super.onCreate();
        ox.dq(this);
        if (ox.xz() == null) {
            ox.dq(new le());
        }
        jy h = ox.h();
        this.dq = h;
        h.dq(new WeakReference(this));
    }
}
