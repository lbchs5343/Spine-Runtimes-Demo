package com.ss.android.socialbase.downloader.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.constants.s;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.mp;
import com.ss.android.socialbase.downloader.downloader.ox;
import com.ss.android.socialbase.downloader.downloader.p;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.ia.mn;
import com.ss.android.socialbase.downloader.kk.iw;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class DownloadNotificationService extends Service {

    /* renamed from: d, reason: collision with root package name */
    private static int f9462d = -1;
    private static final String dq = "DownloadNotificationService";
    private static boolean ia = false;
    private static volatile long iw = 0;
    private static long kk = 900;
    private static volatile long mn = 0;
    private static int ox = -1;
    private static boolean p = true;
    private static boolean s;
    private final SparseArray<Notification> no = new SparseArray<>(2);
    private mn o;

    /* JADX INFO: Access modifiers changed from: private */
    public void d(NotificationManager notificationManager, int i) {
        boolean z;
        dq dqVar;
        int dq2;
        int i2 = f9462d;
        if (i2 != i && ox != i) {
            try {
                notificationManager.cancel(i);
                return;
            } catch (Throwable unused) {
                return;
            }
        }
        boolean z2 = true;
        if (i2 == i) {
            f9462d = 0;
            z = false;
        } else {
            ox = 0;
            z = true;
        }
        try {
            mp ox2 = p.dq().ox(i);
            if (!ox2.d()) {
                p = false;
                com.ss.android.socialbase.downloader.ox.dq.p(dq, "try to stopForeground when is not Foreground, id = " + i + ", isIndependentProcess = " + z);
            }
            com.ss.android.socialbase.downloader.ox.dq.ox(dq, "doCancel, ========== stopForeground id = " + i + ", isIndependentProcess = " + z);
            ox2.dq(false, true);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        try {
            notificationManager.cancel(i);
        } catch (Throwable unused2) {
        }
        if (p) {
            try {
                SparseArray<dq> d2 = d.dq().d();
                if (d2 != null) {
                    for (int size = d2.size() - 1; size >= 0; size--) {
                        dqVar = d2.valueAt(size);
                        if (dqVar != null && (dq2 = dqVar.dq()) != i && dq2 != f9462d && dq2 != ox && dqVar.ia()) {
                            if ((p.dq().dq(dqVar.dq()) == 1 && !iw.ox()) == z) {
                                break;
                            }
                        }
                    }
                }
                dqVar = null;
                if (dqVar != null) {
                    int dq3 = dqVar.dq();
                    try {
                        notificationManager.cancel(dq3);
                    } catch (Throwable th2) {
                        th2.printStackTrace();
                    }
                    if (Downloader.getInstance(this).getStatus(dq3) != 1) {
                        z2 = false;
                    }
                    com.ss.android.socialbase.downloader.ox.dq.ox(dq, "doCancel, updateNotification id = ".concat(String.valueOf(dq3)));
                    dqVar.dq((BaseException) null, z2);
                }
            } catch (Throwable th3) {
                th3.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0026, code lost:
    
        if (com.ss.android.socialbase.downloader.notification.DownloadNotificationService.ox == 0) goto L19;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(NotificationManager notificationManager, int i, Notification notification) {
        if (dq(i, notification)) {
            try {
                boolean z = true;
                if (p.dq().dq(i) != 1 || iw.ox()) {
                    z = false;
                }
                if (!z) {
                    if (f9462d == 0) {
                        mp ox2 = p.dq().ox(i);
                        if (!ox2.mn() || ox2.d()) {
                            com.ss.android.socialbase.downloader.ox.dq.ox(dq, "doNotify: canStartForeground = true, but proxy can not startForeground, isIndependentProcess = ".concat(String.valueOf(z)));
                        } else {
                            com.ss.android.socialbase.downloader.ox.dq.ox(dq, "doNotify, startForeground, ======== id = " + i + ", isIndependentProcess = " + z);
                            if (z) {
                                ox = i;
                            } else {
                                f9462d = i;
                            }
                            ox2.dq(i, notification);
                        }
                    }
                }
                if (z) {
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } else if ((f9462d == i || ox == i) && s && (notification.flags & 2) == 0) {
            d(notificationManager, i);
        }
        try {
            long currentTimeMillis = System.currentTimeMillis();
            if (iw < currentTimeMillis) {
                iw = currentTimeMillis;
            }
            notificationManager.notify(i, notification);
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(NotificationManager notificationManager, int i) {
        Notification notification;
        synchronized (this.no) {
            notification = this.no.get(i);
            this.no.remove(i);
        }
        if (notification != null) {
            d(notificationManager, i, notification);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final NotificationManager notificationManager, final int i, Notification notification) {
        synchronized (this.no) {
            try {
                int indexOfKey = this.no.indexOfKey(i);
                if (indexOfKey >= 0 && indexOfKey < this.no.size()) {
                    this.no.setValueAt(indexOfKey, notification);
                    return;
                }
                long currentTimeMillis = kk - (System.currentTimeMillis() - iw);
                if (currentTimeMillis <= 0) {
                    currentTimeMillis = 0;
                }
                if (currentTimeMillis > 20000) {
                    currentTimeMillis = 20000;
                }
                long currentTimeMillis2 = System.currentTimeMillis() + currentTimeMillis;
                mn = currentTimeMillis2;
                iw = currentTimeMillis2;
                if (currentTimeMillis <= 0) {
                    d(notificationManager, i, notification);
                } else if (this.o != null) {
                    synchronized (this.no) {
                        this.no.put(i, notification);
                    }
                    this.o.dq(new Runnable() { // from class: com.ss.android.socialbase.downloader.notification.DownloadNotificationService.2
                        @Override // java.lang.Runnable
                        public void run() {
                            DownloadNotificationService.this.dq(notificationManager, i);
                        }
                    }, currentTimeMillis);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void dq(final Intent intent) {
        mn mnVar;
        if (intent == null) {
            return;
        }
        final String action = intent.getAction();
        if (TextUtils.isEmpty(action) || (mnVar = this.o) == null) {
            return;
        }
        mnVar.dq(new Runnable() { // from class: com.ss.android.socialbase.downloader.notification.DownloadNotificationService.1
            @Override // java.lang.Runnable
            public void run() {
                ConnectivityManager connectivityManager;
                NetworkInfo activeNetworkInfo;
                final NotificationManager notificationManager = (NotificationManager) DownloadNotificationService.this.getSystemService("notification");
                final int intExtra = intent.getIntExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", 0);
                if (!action.equals("android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY")) {
                    if (action.equals("android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL")) {
                        if (intExtra != 0) {
                            DownloadNotificationService.this.d(notificationManager, intExtra);
                            return;
                        }
                        return;
                    }
                    if (!action.equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                        if (action.equals("android.intent.action.MEDIA_UNMOUNTED") || action.equals("android.intent.action.MEDIA_REMOVED") || action.equals("android.intent.action.MEDIA_BAD_REMOVAL") || action.equals("android.intent.action.MEDIA_EJECT")) {
                            try {
                                Downloader.getInstance(DownloadNotificationService.this).pauseAll();
                                return;
                            } catch (Exception e2) {
                                e2.printStackTrace();
                                return;
                            }
                        }
                        return;
                    }
                    try {
                        if (iw.dq((Context) DownloadNotificationService.this, "android.permission.ACCESS_NETWORK_STATE") && (connectivityManager = (ConnectivityManager) DownloadNotificationService.this.getApplicationContext().getSystemService("connectivity")) != null && (activeNetworkInfo = connectivityManager.getActiveNetworkInfo()) != null && activeNetworkInfo.isConnected()) {
                            ArrayList arrayList = new ArrayList();
                            if (!TextUtils.isEmpty(s.dq)) {
                                arrayList.add(s.dq);
                            }
                            arrayList.add("mime_type_plg");
                            Context applicationContext = DownloadNotificationService.this.getApplicationContext();
                            if (applicationContext != null) {
                                Downloader.getInstance(applicationContext).restartAllFailedDownloadTasks(arrayList);
                                Downloader.getInstance(applicationContext).restartAllPauseReserveOnWifiDownloadTasks(arrayList);
                                return;
                            }
                            return;
                        }
                        return;
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return;
                    }
                }
                final Notification notification = (Notification) intent.getParcelableExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA");
                int intExtra2 = intent.getIntExtra("DOWNLOAD_NOTIFICATION_EXTRA_STATUS", 0);
                if (intExtra == 0 || notification == null || notificationManager == null) {
                    return;
                }
                if (intExtra2 != 4) {
                    if (intExtra2 != -2 && intExtra2 != -3) {
                        if (DownloadNotificationService.ia) {
                            DownloadNotificationService.this.dq(notificationManager, intExtra, notification);
                            return;
                        } else {
                            DownloadNotificationService.this.d(notificationManager, intExtra, notification);
                            return;
                        }
                    }
                    if (DownloadNotificationService.ia) {
                        DownloadNotificationService.this.dq(notificationManager, intExtra, notification);
                        return;
                    } else {
                        if (DownloadNotificationService.this.o != null) {
                            DownloadNotificationService.this.o.dq(new Runnable() { // from class: com.ss.android.socialbase.downloader.notification.DownloadNotificationService.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    DownloadNotificationService.this.d(notificationManager, intExtra, notification);
                                }
                            }, intExtra2 == -2 ? 50L : 200L);
                            return;
                        }
                        return;
                    }
                }
                if (Downloader.getInstance(ox.ob()).isDownloading(intExtra)) {
                    DownloadInfo downloadInfo = Downloader.getInstance(ox.ob()).getDownloadInfo(intExtra);
                    if (!DownloadNotificationService.ia) {
                        if (downloadInfo == null || !downloadInfo.canNotifyProgress()) {
                            return;
                        }
                        DownloadNotificationService.this.d(notificationManager, intExtra, notification);
                        downloadInfo.setLastNotifyProgressTime();
                        return;
                    }
                    if (downloadInfo == null || !downloadInfo.canNotifyProgress() || System.currentTimeMillis() - DownloadNotificationService.mn <= DownloadNotificationService.kk) {
                        return;
                    }
                    DownloadNotificationService.this.d(notificationManager, intExtra, notification);
                    downloadInfo.setLastNotifyProgressTime();
                }
            }
        });
    }

    private boolean dq(int i, Notification notification) {
        int i2;
        int i3;
        String channelId;
        if (!p || (i2 = f9462d) == i || (i3 = ox) == i) {
            return false;
        }
        if (i2 != 0 && i3 != 0) {
            return false;
        }
        if (s && (notification.flags & 2) == 0) {
            return false;
        }
        if (Build.VERSION.SDK_INT < 26) {
            return true;
        }
        channelId = notification.getChannelId();
        return !TextUtils.isEmpty(channelId);
    }

    private void p() {
        if (this.o == null) {
            mn mnVar = new mn("DownloaderNotifyThread");
            this.o = mnVar;
            mnVar.dq();
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        p();
        ox.dq(this);
        com.ss.android.socialbase.downloader.mn.dq ox2 = com.ss.android.socialbase.downloader.mn.dq.ox();
        int dq2 = ox2.dq("download_service_foreground", 0);
        if ((dq2 == 1 || dq2 == 3) && f9462d == -1) {
            f9462d = 0;
        }
        if ((dq2 == 2 || dq2 == 3) && ox == -1) {
            ox = 0;
        }
        s = ox2.d("non_going_notification_foreground", false);
        ia = ox2.d("notify_too_fast", false);
        long dq3 = ox2.dq("notification_time_window", 900L);
        kk = dq3;
        if (dq3 < 0 || dq3 > 1200) {
            kk = 900L;
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        mn mnVar = this.o;
        if (mnVar != null) {
            try {
                mnVar.d();
            } catch (Throwable unused) {
            }
            this.o = null;
        }
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        dq(intent);
        return 2;
    }
}
