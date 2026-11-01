package com.ss.android.socialbase.downloader.notification;

import android.app.Notification;
import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.o;
import com.ss.android.socialbase.downloader.downloader.ox;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class d {
    private static volatile d ox;
    private static final Object s = new Object();
    private final long dq = 1000;

    /* renamed from: d, reason: collision with root package name */
    private final Map<Integer, Long> f9466d = new HashMap();
    private final Set<String> p = new HashSet();
    private final SparseArray<dq> iw = new SparseArray<>();

    private d() {
    }

    public static boolean d(int i) {
        return i == 1 || i == 3;
    }

    public static d dq() {
        if (ox == null) {
            synchronized (d.class) {
                try {
                    if (ox == null) {
                        ox = new d();
                    }
                } finally {
                }
            }
        }
        return ox;
    }

    public static boolean ox(DownloadInfo downloadInfo) {
        return downloadInfo.isDownloadOverStatus() && d(downloadInfo.getNotificationVisibility());
    }

    public SparseArray<dq> d() {
        SparseArray<dq> sparseArray;
        synchronized (this.iw) {
            sparseArray = this.iw;
        }
        return sparseArray;
    }

    public void d(DownloadInfo downloadInfo) {
        if (ox(downloadInfo)) {
            iw(downloadInfo.getId());
        }
    }

    public void dq(int i) {
        DownloadInfo downloadInfo = Downloader.getInstance(ox.ob()).getDownloadInfo(i);
        if (downloadInfo == null) {
            return;
        }
        dq(downloadInfo);
        d(downloadInfo);
    }

    public void dq(int i, int i2, Notification notification) {
        Context ob = ox.ob();
        if (ob == null || i == 0 || notification == null) {
            return;
        }
        if (i2 == 4) {
            synchronized (this.f9466d) {
                try {
                    Long l = this.f9466d.get(Integer.valueOf(i));
                    long currentTimeMillis = System.currentTimeMillis();
                    if (l != null && Math.abs(currentTimeMillis - l.longValue()) < 1000) {
                        return;
                    } else {
                        this.f9466d.put(Integer.valueOf(i), Long.valueOf(currentTimeMillis));
                    }
                } finally {
                }
            }
        }
        try {
            Intent intent = new Intent(ob, (Class<?>) DownloadNotificationService.class);
            intent.setAction("android.ss.intent.action.DOWNLOAD_NOTIFICATION_NOTIFY");
            intent.putExtra("DOWNLOAD_NOTIFICATION_EXTRA_STATUS", i2);
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", i);
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA", notification);
            ob.startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void dq(DownloadInfo downloadInfo) {
        o e2 = ox.e();
        if (e2 != null && downloadInfo.isDownloadOverStatus()) {
            downloadInfo.setNotificationVisibility(3);
            try {
                e2.dq(downloadInfo);
            } catch (SQLiteException e3) {
                e3.printStackTrace();
            }
        }
    }

    public void dq(dq dqVar) {
        if (dqVar == null) {
            return;
        }
        synchronized (this.iw) {
            this.iw.put(dqVar.dq(), dqVar);
        }
    }

    public void iw(int i) {
        p(i);
        if (i != 0) {
            dq().ox(i);
        }
    }

    public void ox(int i) {
        Context ob = ox.ob();
        if (ob == null || i == 0) {
            return;
        }
        try {
            Intent intent = new Intent(ob, (Class<?>) DownloadNotificationService.class);
            intent.setAction("android.ss.intent.action.DOWNLOAD_NOTIFICATION_CANCEL");
            intent.putExtra("DOWNLOAD_NOTIFICATION_BUNDLE_EXTRA_ID", i);
            ob.startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public dq p(int i) {
        dq dqVar;
        if (i == 0) {
            return null;
        }
        synchronized (this.iw) {
            try {
                dqVar = this.iw.get(i);
                if (dqVar != null) {
                    this.iw.remove(i);
                    com.ss.android.socialbase.downloader.ox.dq.dq("removeNotificationId ".concat(String.valueOf(i)));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return dqVar;
    }

    public dq s(int i) {
        dq dqVar;
        if (i == 0) {
            return null;
        }
        synchronized (this.iw) {
            dqVar = this.iw.get(i);
        }
        return dqVar;
    }
}
