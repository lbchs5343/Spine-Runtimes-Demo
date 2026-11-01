package com.ss.android.socialbase.downloader.downloader;

import android.app.Notification;
import android.content.Intent;
import android.os.IBinder;
import com.ss.android.socialbase.downloader.downloader.DownloadService;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public interface jy<T extends DownloadService> {
    void d(DownloadTask downloadTask);

    boolean d();

    IBinder dq(Intent intent);

    void dq(int i);

    void dq(int i, Notification notification);

    void dq(Intent intent, int i, int i2);

    void dq(q qVar);

    void dq(WeakReference<T> weakReference);

    void dq(boolean z);

    boolean dq();

    void ox();

    void ox(DownloadTask downloadTask);

    void p();

    void startService();
}
