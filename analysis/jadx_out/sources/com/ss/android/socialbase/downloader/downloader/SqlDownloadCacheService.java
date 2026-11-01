package com.ss.android.socialbase.downloader.downloader;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Binder;
import android.os.IBinder;

/* loaded from: classes.dex */
public class SqlDownloadCacheService extends Service {
    private static final String dq = "SqlDownloadCacheService";

    public static void dq(Context context, ServiceConnection serviceConnection) {
        if (context != null) {
            try {
                Intent intent = new Intent(context, (Class<?>) SqlDownloadCacheService.class);
                if (serviceConnection != null) {
                    context.bindService(intent, serviceConnection, 1);
                }
                context.startService(intent);
            } catch (Throwable unused) {
            }
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        o e2 = ox.e();
        r iw = e2 instanceof com.ss.android.socialbase.downloader.impls.p ? ((com.ss.android.socialbase.downloader.impls.p) e2).iw() : e2 instanceof r ? (r) e2 : null;
        return iw instanceof IBinder ? (IBinder) iw : new Binder();
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        ox.dq(getApplicationContext());
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        int onStartCommand = super.onStartCommand(intent, i, i2);
        if (ox.o()) {
            return 2;
        }
        return onStartCommand;
    }
}
