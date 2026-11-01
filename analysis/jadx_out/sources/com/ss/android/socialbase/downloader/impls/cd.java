package com.ss.android.socialbase.downloader.impls;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.SparseArray;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.ss.android.download.api.constant.BaseConstants;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.dq.dq;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import g.tn;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class cd implements Handler.Callback, dq.InterfaceC0248dq {
    private static volatile cd dq;
    private static d kk;
    private ConnectivityManager ia;
    private long iw;
    private final boolean s;
    private final Handler ox = new Handler(Looper.getMainLooper(), this);
    private final SparseArray<dq> p = new SparseArray<>();
    private int mn = 0;

    /* renamed from: d, reason: collision with root package name */
    private final Context f9382d = com.ss.android.socialbase.downloader.downloader.ox.ob();

    public interface d {
        void dq(DownloadInfo downloadInfo, long j, boolean z, int i);
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        final int f9385d;
        final int dq;
        private int ia;
        private boolean ig;
        final boolean iw;
        private int kk;
        final int[] mn;
        private long no;
        private boolean o;
        final int ox;
        final int p;
        final int s;

        public dq(int i, int i2, int i3, int i4, int i5, boolean z, int[] iArr) {
            i4 = i4 < 3000 ? 3000 : i4;
            i5 = i5 < 5000 ? MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE : i5;
            this.dq = i;
            this.f9385d = i2;
            this.ox = i3;
            this.p = i4;
            this.s = i5;
            this.iw = z;
            this.mn = iArr;
            this.ia = i4;
        }

        public synchronized void d() {
            this.kk++;
        }

        public synchronized void dq() {
            this.ia += this.s;
        }

        public synchronized void dq(long j) {
            this.no = j;
        }

        public boolean dq(long j, int i, int i2, boolean z) {
            if (!this.ig) {
                com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", "canRetry: mIsWaitingRetry is false, return false!!!");
                return false;
            }
            if (this.f9385d < i || this.kk >= this.ox) {
                return false;
            }
            if (!this.o || i2 == 2) {
                return z || j - this.no >= ((long) this.p);
            }
            return false;
        }

        public void ox() {
            this.ia = this.p;
        }

        public int p() {
            return this.ia;
        }
    }

    private cd() {
        iw();
        this.s = com.ss.android.socialbase.downloader.kk.iw.ox();
        com.ss.android.socialbase.downloader.dq.dq.dq().dq(this);
    }

    private dq d(int i) {
        dq dqVar;
        dq dqVar2 = this.p.get(i);
        if (dqVar2 != null) {
            return dqVar2;
        }
        synchronized (this.p) {
            try {
                dqVar = this.p.get(i);
                if (dqVar == null) {
                    dqVar = p(i);
                }
                this.p.put(i, dqVar);
            } catch (Throwable th) {
                throw th;
            }
        }
        return dqVar;
    }

    private void d(final int i, final boolean z) {
        com.ss.android.socialbase.downloader.downloader.ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.cd.2
            @Override // java.lang.Runnable
            public void run() {
                int mn;
                try {
                    if (cd.this.mn > 0 && (mn = cd.this.mn()) != 0) {
                        com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", "doScheduleAllTaskRetry: mWaitingRetryTasksCount = " + cd.this.mn);
                        long currentTimeMillis = System.currentTimeMillis();
                        ArrayList arrayList = new ArrayList();
                        synchronized (cd.this.p) {
                            for (int i2 = 0; i2 < cd.this.p.size(); i2++) {
                                try {
                                    dq dqVar = (dq) cd.this.p.valueAt(i2);
                                    if (dqVar != null && dqVar.dq(currentTimeMillis, i, mn, z)) {
                                        if (z) {
                                            dqVar.ox();
                                        }
                                        arrayList.add(dqVar);
                                    }
                                } finally {
                                }
                            }
                        }
                        if (arrayList.size() > 0) {
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                cd.this.dq(((dq) it.next()).dq, mn, false);
                            }
                        }
                    }
                } catch (Exception unused) {
                }
            }
        });
    }

    public static cd dq() {
        if (dq == null) {
            synchronized (cd.class) {
                try {
                    if (dq == null) {
                        dq = new cd();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, int i2, boolean z) {
        com.ss.android.socialbase.downloader.downloader.cd reserveWifiStatusListener;
        boolean z2;
        Context context = this.f9382d;
        if (context == null) {
            return;
        }
        synchronized (this.p) {
            try {
                dq dqVar = this.p.get(i);
                if (dqVar == null) {
                    return;
                }
                boolean z3 = true;
                if (dqVar.ig) {
                    dqVar.ig = false;
                    int i3 = this.mn - 1;
                    this.mn = i3;
                    if (i3 < 0) {
                        this.mn = 0;
                    }
                }
                StringBuilder z4 = tn.z(i, "doSchedulerRetryInSubThread: downloadId = ", ", retryCount = ");
                z4.append(dqVar.kk);
                z4.append(", mWaitingRetryTasksCount = ");
                z4.append(this.mn);
                com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", z4.toString());
                DownloadInfo downloadInfo = Downloader.getInstance(context).getDownloadInfo(i);
                if (downloadInfo == null) {
                    ox(i);
                    return;
                }
                com.ss.android.socialbase.downloader.ox.dq.s("RetryScheduler", "doSchedulerRetryInSubThread，id:".concat(String.valueOf(i)));
                int realStatus = downloadInfo.getRealStatus();
                if (realStatus == -3 || realStatus == -4) {
                    ox(i);
                    return;
                }
                if (realStatus == -5 || (realStatus == -2 && downloadInfo.isPauseReserveOnWifi())) {
                    if (realStatus == -2 && (reserveWifiStatusListener = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getReserveWifiStatusListener()) != null) {
                        reserveWifiStatusListener.dq(downloadInfo, 4, 3);
                    }
                    com.ss.android.socialbase.downloader.downloader.ig wp = com.ss.android.socialbase.downloader.downloader.ox.wp();
                    if (wp != null) {
                        wp.dq(Collections.singletonList(downloadInfo), 3);
                    }
                    ox(i);
                    return;
                }
                if (realStatus != -1) {
                    return;
                }
                if (i2 != 0) {
                    z2 = true;
                } else if (!dqVar.iw) {
                    return;
                } else {
                    z2 = false;
                }
                BaseException failedException = downloadInfo.getFailedException();
                if (z2 && com.ss.android.socialbase.downloader.kk.iw.ia(failedException)) {
                    z2 = dq(downloadInfo, failedException);
                }
                dqVar.d();
                if (!z2) {
                    if (z) {
                        dqVar.dq();
                    }
                    if (!downloadInfo.isOnlyWifi() && !downloadInfo.isPauseReserveOnWifi()) {
                        z3 = false;
                    }
                    dq(downloadInfo, z3, i2);
                    return;
                }
                com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", "doSchedulerRetry: restart task, ****** id = " + dqVar.dq);
                dqVar.dq(System.currentTimeMillis());
                if (z) {
                    dqVar.dq();
                }
                downloadInfo.setRetryScheduleCount(dqVar.kk);
                if (downloadInfo.getStatus() == -1) {
                    Downloader.getInstance(context).restart(downloadInfo.getId());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, boolean z) {
        if (this.mn <= 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        synchronized (this) {
            if (!z) {
                try {
                    if (currentTimeMillis - this.iw < ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
                        return;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.iw = currentTimeMillis;
            com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", "scheduleAllTaskRetry, level = [" + i + "], force = [" + z + "]");
            if (z) {
                this.ox.removeMessages(0);
            }
            Message obtain = Message.obtain();
            obtain.what = 0;
            obtain.arg1 = i;
            obtain.arg2 = z ? 1 : 0;
            this.ox.sendMessageDelayed(obtain, 2000L);
        }
    }

    public static void dq(d dVar) {
        kk = dVar;
    }

    private void dq(DownloadInfo downloadInfo, boolean z, int i) {
        BaseException failedException = downloadInfo.getFailedException();
        if (failedException == null) {
            return;
        }
        dq d2 = d(downloadInfo.getId());
        if (d2.kk > d2.ox) {
            com.ss.android.socialbase.downloader.ox.dq.p("RetryScheduler", "tryStartScheduleRetry, id = " + d2.dq + ", mRetryCount = " + d2.kk + ", maxCount = " + d2.ox);
            return;
        }
        int errorCode = failedException.getErrorCode();
        if (!com.ss.android.socialbase.downloader.kk.iw.ia(failedException) && !com.ss.android.socialbase.downloader.kk.iw.kk(failedException) && (!downloadInfo.statusInPause() || !downloadInfo.isPauseReserveOnWifi())) {
            if (!dq(d2, errorCode)) {
                return;
            }
            com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", "allow error code, id = " + d2.dq + ", error code = " + errorCode);
        }
        d2.o = z;
        synchronized (this.p) {
            try {
                if (!d2.ig) {
                    d2.ig = true;
                    this.mn++;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        int p = d2.p();
        com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", "tryStartScheduleRetry: id = " + d2.dq + ", delayTimeMills = " + p + ", mWaitingRetryTasks = " + this.mn);
        if (!d2.iw) {
            if (z) {
                return;
            }
            this.ox.removeMessages(downloadInfo.getId());
            this.ox.sendEmptyMessageDelayed(downloadInfo.getId(), p);
            return;
        }
        if (i == 0) {
            d2.ox();
        }
        d dVar = kk;
        if (dVar != null) {
            dVar.dq(downloadInfo, p, z, i);
        }
        if (this.s) {
            d2.dq(System.currentTimeMillis());
            d2.d();
            d2.dq();
        }
    }

    private boolean dq(dq dqVar, int i) {
        int[] iArr = dqVar.mn;
        if (iArr != null && iArr.length != 0) {
            for (int i2 : iArr) {
                if (i2 == i) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean dq(DownloadInfo downloadInfo, BaseException baseException) {
        long j;
        try {
            j = com.ss.android.socialbase.downloader.kk.iw.p(downloadInfo.getTempPath());
        } catch (BaseException e2) {
            e2.printStackTrace();
            j = 0;
        }
        if (j < (baseException instanceof com.ss.android.socialbase.downloader.exception.p ? ((com.ss.android.socialbase.downloader.exception.p) baseException).d() : downloadInfo.getTotalBytes() - downloadInfo.getCurBytes())) {
            com.ss.android.socialbase.downloader.mn.dq dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId());
            if (dq2.dq("space_fill_part_download", 0) == 1) {
                if (j > 0) {
                    int dq3 = dq2.dq("space_fill_min_keep_mb", 100);
                    if (dq3 > 0) {
                        long j2 = j - (dq3 * BaseConstants.MB_VALUE);
                        com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", "retry schedule: available = " + com.ss.android.socialbase.downloader.kk.iw.dq(j) + "MB, minKeep = " + dq3 + "MB, canDownload = " + com.ss.android.socialbase.downloader.kk.iw.dq(j2) + "MB");
                        if (j2 <= 0) {
                            com.ss.android.socialbase.downloader.ox.dq.p("RetryScheduler", "doSchedulerRetryInSubThread: canDownload <= 0 , canRetry = false !!!!");
                            return false;
                        }
                    }
                } else if (dq2.dq("download_when_space_negative", 0) != 1) {
                }
            }
            return false;
        }
        return true;
    }

    private int[] dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            String[] split = str.split(",");
            if (split.length <= 0) {
                return null;
            }
            int[] iArr = new int[split.length];
            for (int i = 0; i < split.length; i++) {
                iArr[i] = Integer.parseInt(split[i]);
            }
            return iArr;
        } catch (Throwable unused) {
            return null;
        }
    }

    private void iw() {
        if (com.ss.android.socialbase.downloader.mn.dq.ox().dq("use_network_callback", 0) != 1) {
            return;
        }
        com.ss.android.socialbase.downloader.downloader.ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.cd.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (cd.this.f9382d != null) {
                        cd cdVar = cd.this;
                        cdVar.ia = (ConnectivityManager) cdVar.f9382d.getApplicationContext().getSystemService("connectivity");
                        cd.this.ia.registerNetworkCallback(new NetworkRequest.Builder().build(), new ConnectivityManager.NetworkCallback() { // from class: com.ss.android.socialbase.downloader.impls.cd.1.1
                            @Override // android.net.ConnectivityManager.NetworkCallback
                            public void onAvailable(Network network) {
                                com.ss.android.socialbase.downloader.ox.dq.d("RetryScheduler", "network onAvailable: ");
                                cd.this.dq(1, true);
                            }
                        });
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int mn() {
        try {
            if (this.ia == null) {
                this.ia = (ConnectivityManager) this.f9382d.getApplicationContext().getSystemService("connectivity");
            }
            NetworkInfo activeNetworkInfo = this.ia.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                return activeNetworkInfo.getType() == 1 ? 2 : 1;
            }
        } catch (Exception unused) {
        }
        return 0;
    }

    private void ox(int i) {
        synchronized (this.p) {
            this.p.remove(i);
        }
    }

    private dq p(int i) {
        int[] iArr;
        int i2;
        int i3;
        boolean z;
        com.ss.android.socialbase.downloader.mn.dq dq2 = com.ss.android.socialbase.downloader.mn.dq.dq(i);
        boolean z2 = false;
        int dq3 = dq2.dq("retry_schedule", 0);
        JSONObject p = dq2.p("retry_schedule_config");
        int i4 = 60;
        if (p != null) {
            int optInt = p.optInt("max_count", 60);
            int optInt2 = p.optInt("interval_sec", 60);
            int optInt3 = p.optInt("interval_sec_acceleration", 60);
            if (kk != null && p.optInt("use_job_scheduler", 0) == 1) {
                z2 = true;
            }
            iArr = dq(p.optString("allow_error_code"));
            i2 = optInt3;
            z = z2;
            i3 = optInt;
            i4 = optInt2;
        } else {
            iArr = null;
            i2 = 60;
            i3 = 60;
            z = false;
        }
        return new dq(i, dq3, i3, i4 * 1000, i2 * 1000, z, iArr);
    }

    @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
    public void d() {
        dq(4, false);
    }

    public void dq(final int i) {
        com.ss.android.socialbase.downloader.downloader.ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.cd.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    cd cdVar = cd.this;
                    cdVar.dq(i, cdVar.mn(), true);
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
            }
        });
    }

    public void dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null || TextUtils.isEmpty(com.ss.android.socialbase.downloader.constants.s.dq) || !com.ss.android.socialbase.downloader.constants.s.dq.equals(downloadInfo.getMimeType())) {
            return;
        }
        dq(downloadInfo, downloadInfo.isOnlyWifi() || downloadInfo.isPauseReserveOnWifi(), mn());
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what == 0) {
            d(message.arg1, message.arg2 == 1);
        } else {
            com.ss.android.socialbase.downloader.ox.dq.ox("RetryScheduler", "handleMessage, doSchedulerRetry, id = " + message.what);
            dq(message.what);
        }
        return true;
    }

    @Override // com.ss.android.socialbase.downloader.dq.dq.InterfaceC0248dq
    public void ox() {
        dq(3, false);
    }

    public void p() {
        dq(2, true);
    }

    public void s() {
        dq(5, false);
    }
}
