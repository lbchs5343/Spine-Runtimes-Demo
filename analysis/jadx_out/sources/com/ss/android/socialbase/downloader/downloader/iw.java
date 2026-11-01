package com.ss.android.socialbase.downloader.downloader;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteFullException;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.c;
import com.ss.android.socialbase.downloader.depend.wp;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import g.awf;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public class iw {
    private static final String dq = "iw";

    /* renamed from: d, reason: collision with root package name */
    private final boolean f9356d;

    /* renamed from: f, reason: collision with root package name */
    private com.ss.android.socialbase.downloader.depend.q f9357f;
    private wp fw;
    private SparseArray<IDownloadListener> ia;
    private DownloadTask iw;
    private long jy;
    private SparseArray<IDownloadListener> kk;
    private SparseArray<IDownloadListener> mn;
    private DownloadInfo ox;
    private final o p;
    private int q;
    private final Handler s;
    private boolean o = false;
    private volatile long no = 0;
    private final AtomicLong ig = new AtomicLong();
    private boolean mp = false;

    public iw(DownloadTask downloadTask, Handler handler) {
        this.iw = downloadTask;
        o();
        this.s = handler;
        this.p = ox.e();
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo != null) {
            this.f9356d = com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("fix_start_with_file_exist_update_error");
        } else {
            this.f9356d = false;
        }
    }

    private void d(BaseException baseException) {
        Log.getStackTraceString(new Throwable());
        if (baseException == null || baseException.getCause() == null || !(baseException.getCause() instanceof SQLiteFullException)) {
            try {
                try {
                    this.p.d(this.ox.getId(), this.ox.getCurBytes());
                } catch (SQLiteException e2) {
                    e2.printStackTrace();
                }
            } catch (SQLiteException unused) {
                this.p.iw(this.ox.getId());
            }
        } else {
            try {
                this.p.iw(this.ox.getId());
            } catch (SQLiteException e3) {
                e3.printStackTrace();
            }
        }
        BaseException ox = ox(baseException);
        this.ox.setFailedException(ox);
        dq(ox instanceof com.ss.android.socialbase.downloader.exception.s ? -2 : -1, ox);
        if (com.ss.android.socialbase.downloader.mn.dq.dq(this.ox.getId()).dq("retry_schedule", 0) > 0) {
            com.ss.android.socialbase.downloader.impls.cd.dq().dq(this.ox);
        }
    }

    private void d(BaseException baseException, boolean z) {
        this.p.ia(this.ox.getId());
        dq(z ? 7 : 5, baseException);
    }

    private boolean d(long j) {
        boolean z = true;
        if (!this.mp) {
            this.mp = true;
            return true;
        }
        long j2 = j - this.no;
        if (this.ig.get() < this.jy && j2 < this.q) {
            z = false;
        }
        if (z) {
            this.no = j;
            this.ig.set(0L);
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(int i, BaseException baseException) {
        dq(i, baseException, true);
    }

    private void dq(int i, BaseException baseException, boolean z) {
        SparseArray<IDownloadListener> sparseArray;
        SparseArray<IDownloadListener> sparseArray2;
        int status = this.ox.getStatus();
        if (status == -3 && i == 4) {
            return;
        }
        o();
        if (i != 4 && DownloadStatus.isRealTimeUploadStatus(i)) {
            this.ox.updateRealDownloadTime(false);
            if (DownloadStatus.isTimeUploadStatus(i)) {
                this.ox.updateDownloadTime();
            }
        }
        if (!this.ox.isAddListenerToSameTask()) {
            com.ss.android.socialbase.downloader.p.dq.dq(this.iw, baseException, i);
        }
        if (i == 6) {
            this.ox.setStatus(2);
        } else if (i == -6) {
            this.ox.setStatus(-3);
        } else {
            this.ox.setStatus(i);
        }
        if (status == -3 || status == -1) {
            if (this.ox.getRetryDelayStatus() == com.ss.android.socialbase.downloader.constants.mn.DELAY_RETRY_DOWNLOADING) {
                this.ox.setRetryDelayStatus(com.ss.android.socialbase.downloader.constants.mn.DELAY_RETRY_DOWNLOADED);
            }
            if (this.ox.getAsyncHandleStatus() == com.ss.android.socialbase.downloader.constants.dq.ASYNC_HANDLE_DOWNLOADING) {
                this.ox.setAsyncHandleStatus(com.ss.android.socialbase.downloader.constants.dq.ASYNC_HANDLE_DOWNLOADED);
            }
            if (this.ox.getByteInvalidRetryStatus() == com.ss.android.socialbase.downloader.constants.d.BYTE_INVALID_RETRY_STATUS_DOWNLOADING) {
                this.ox.setByteInvalidRetryStatus(com.ss.android.socialbase.downloader.constants.d.BYTE_INVALID_RETRY_STATUS_DOWNLOADED);
            }
        }
        com.ss.android.socialbase.downloader.kk.ox.dq(i, this.ia, true, this.ox, baseException);
        if (i == -4) {
            return;
        }
        if (z && this.s != null && (((sparseArray = this.mn) != null && sparseArray.size() > 0) || ((sparseArray2 = this.kk) != null && sparseArray2.size() > 0 && (this.ox.canShowNotification() || this.ox.isAutoInstallWithoutNotification())))) {
            this.s.obtainMessage(i, this.ox.getId(), this.iw.getHashCodeForSameTask(), baseException).sendToTarget();
            return;
        }
        com.ss.android.socialbase.downloader.impls.dq n = ox.n();
        if (n != null) {
            n.dq(this.ox.getId(), this.iw.getHashCodeForSameTask(), i);
        }
    }

    private boolean dq(long j, boolean z) {
        boolean z2 = false;
        if (this.ox.getCurBytes() == this.ox.getTotalBytes()) {
            try {
                this.p.dq(this.ox.getId(), this.ox.getCurBytes());
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return false;
        }
        if (this.o) {
            this.o = false;
            this.ox.setStatus(4);
        }
        if (this.ox.isNeedPostProgress() && z) {
            z2 = true;
        }
        dq(4, (BaseException) null, z2);
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ig() {
        try {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "saveFileAsTargetName onSuccess");
            try {
                mp();
                this.ox.setFirstSuccess(false);
                this.ox.setSuccessByCache(false);
                dq(-3, (BaseException) null);
                this.p.ox(this.ox.getId(), this.ox.getTotalBytes());
                this.p.p(this.ox.getId());
                this.p.mp(this.ox.getId());
            } catch (BaseException e2) {
                dq(e2);
            }
        } catch (Throwable th) {
            dq(new BaseException(1008, com.ss.android.socialbase.downloader.kk.iw.d(th, "onCompleted")));
        }
    }

    private void mp() throws BaseException {
        List<com.ss.android.socialbase.downloader.depend.mp> downloadCompleteHandlers = this.iw.getDownloadCompleteHandlers();
        if (downloadCompleteHandlers.isEmpty()) {
            return;
        }
        DownloadInfo downloadInfo = this.ox;
        dq(11, (BaseException) null);
        this.p.dq(downloadInfo);
        for (com.ss.android.socialbase.downloader.depend.mp mpVar : downloadCompleteHandlers) {
            try {
                if (mpVar.d(downloadInfo)) {
                    mpVar.dq(downloadInfo);
                    this.p.dq(downloadInfo);
                }
            } catch (BaseException e2) {
                throw e2;
            } catch (Throwable th) {
                throw new BaseException(1071, th);
            }
        }
    }

    private void no() {
        ExecutorService ig = ox.ig();
        if (ig != null) {
            ig.execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.iw.1
                @Override // java.lang.Runnable
                public void run() {
                    iw.this.p.kk(iw.this.ox.getId());
                    iw.this.dq(1, (BaseException) null);
                }
            });
        }
    }

    private void o() {
        DownloadTask downloadTask = this.iw;
        if (downloadTask != null) {
            this.ox = downloadTask.getDownloadInfo();
            this.mn = this.iw.getDownloadListeners(com.ss.android.socialbase.downloader.constants.iw.MAIN);
            this.kk = this.iw.getDownloadListeners(com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION);
            this.ia = this.iw.getDownloadListeners(com.ss.android.socialbase.downloader.constants.iw.SUB);
            this.f9357f = this.iw.getDepend();
            this.fw = this.iw.getMonitorDepend();
        }
    }

    private BaseException ox(BaseException baseException) {
        Context ob;
        if (com.ss.android.socialbase.downloader.mn.dq.dq(this.ox.getId()).dq("download_failed_check_net", 1) != 1 || !com.ss.android.socialbase.downloader.kk.iw.kk(baseException) || (ob = ox.ob()) == null || com.ss.android.socialbase.downloader.kk.iw.ox(ob)) {
            return baseException;
        }
        return new BaseException(this.ox.isOnlyWifi() ? 1013 : 1049, baseException.getErrorMessage());
    }

    public void d() {
        if (this.ox.canSkipStatusHandler()) {
            this.ox.changeSkipStatus();
            return;
        }
        this.p.mn(this.ox.getId());
        if (this.ox.isFirstDownload()) {
            dq(6, (BaseException) null);
        }
        dq(2, (BaseException) null);
    }

    public void dq() {
        if (this.ox.canSkipStatusHandler()) {
            return;
        }
        this.ox.setStatus(1);
        no();
    }

    public void dq(long j, String str, String str2) {
        long j2;
        this.ox.setTotalBytes(j);
        this.ox.seteTag(str);
        if (!TextUtils.isEmpty(str2) && TextUtils.isEmpty(this.ox.getName())) {
            this.ox.setName(str2);
        }
        try {
            j2 = j;
            try {
                this.p.dq(this.ox.getId(), j2, str, str2);
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
                dq(3, (BaseException) null);
                this.jy = this.ox.getMinByteIntervalForPostToMainThread(j2);
                this.q = this.ox.getMinProgressTimeMsInterval();
                this.o = true;
                com.ss.android.socialbase.downloader.impls.cd.dq().s();
            }
        } catch (Exception e3) {
            e = e3;
            j2 = j;
        }
        dq(3, (BaseException) null);
        this.jy = this.ox.getMinByteIntervalForPostToMainThread(j2);
        this.q = this.ox.getMinProgressTimeMsInterval();
        this.o = true;
        com.ss.android.socialbase.downloader.impls.cd.dq().s();
    }

    public void dq(BaseException baseException) {
        this.ox.setFirstDownload(false);
        d(baseException);
    }

    public void dq(BaseException baseException, boolean z) {
        this.ox.setFirstDownload(false);
        this.ig.set(0L);
        d(baseException, z);
    }

    public void dq(com.ss.android.socialbase.downloader.model.d dVar, BaseException baseException, boolean z) {
        this.ox.setFirstDownload(false);
        this.ig.set(0L);
        this.p.ia(this.ox.getId());
        dq(z ? 10 : 9, baseException, true);
    }

    public void dq(String str) throws BaseException {
        String str2 = dq;
        StringBuilder p = awf.p("onCompleteForFileExist existTargetFileName is ", str, " but curName is ");
        p.append(this.ox.getName());
        com.ss.android.socialbase.downloader.ox.dq.d(str2, p.toString());
        if (this.f9356d) {
            com.ss.android.socialbase.downloader.kk.iw.dq(this.ox, str);
            mp();
            this.ox.setSuccessByCache(true);
            dq(-3, (BaseException) null);
            this.p.dq(this.ox);
            return;
        }
        this.p.dq(this.ox);
        com.ss.android.socialbase.downloader.kk.iw.dq(this.ox, str);
        this.ox.setSuccessByCache(true);
        mp();
        dq(-3, (BaseException) null);
    }

    public boolean dq(long j) {
        this.ig.addAndGet(j);
        this.ox.increaseCurBytes(j);
        long uptimeMillis = SystemClock.uptimeMillis();
        return dq(uptimeMillis, d(uptimeMillis));
    }

    public void ia() {
        this.ox.setStatus(8);
        this.ox.setAsyncHandleStatus(com.ss.android.socialbase.downloader.constants.dq.ASYNC_HANDLE_WAITING);
        com.ss.android.socialbase.downloader.impls.dq n = ox.n();
        if (n != null) {
            n.dq(this.ox.getId(), this.iw.getHashCodeForSameTask(), 8);
        }
    }

    public void iw() {
        this.ox.setFirstDownload(false);
        if (!this.ox.isIgnoreDataVerify() && this.ox.getCurBytes() != this.ox.getTotalBytes()) {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, this.ox.getErrorBytesLog());
            dq(new com.ss.android.socialbase.downloader.exception.iw(1027, "current bytes is not equals to total bytes, bytes changed with process : " + this.ox.getByteInvalidRetryStatus()));
            return;
        }
        if (this.ox.getCurBytes() <= 0) {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, this.ox.getErrorBytesLog());
            dq(new com.ss.android.socialbase.downloader.exception.iw(1026, "curBytes is 0, bytes changed with process : " + this.ox.getByteInvalidRetryStatus()));
            return;
        }
        if (!this.ox.isIgnoreDataVerify() && this.ox.getTotalBytes() <= 0) {
            com.ss.android.socialbase.downloader.ox.dq.d(dq, this.ox.getErrorBytesLog());
            dq(new com.ss.android.socialbase.downloader.exception.iw(1044, "TotalBytes is 0, bytes changed with process : " + this.ox.getByteInvalidRetryStatus()));
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d(dq, this.ox.getName() + " onCompleted start save file as target name");
        wp wpVar = this.fw;
        DownloadTask downloadTask = this.iw;
        if (downloadTask != null) {
            wpVar = downloadTask.getMonitorDepend();
        }
        com.ss.android.socialbase.downloader.kk.iw.dq(this.ox, wpVar, new c() { // from class: com.ss.android.socialbase.downloader.downloader.iw.2
            @Override // com.ss.android.socialbase.downloader.depend.c
            public void dq() {
                iw.this.ig();
            }

            @Override // com.ss.android.socialbase.downloader.depend.c
            public void dq(BaseException baseException) {
                String str = iw.dq;
                StringBuilder sb = new StringBuilder("saveFileAsTargetName onFailed : ");
                sb.append(baseException != null ? baseException.getErrorMessage() : "");
                com.ss.android.socialbase.downloader.ox.dq.d(str, sb.toString());
                iw.this.dq(baseException);
            }
        });
    }

    public void mn() throws BaseException {
        if (!this.f9356d) {
            mp();
            com.ss.android.socialbase.downloader.ox.dq.d(dq, "onCompleteForFileExist");
            this.ox.setSuccessByCache(true);
            dq(-3, (BaseException) null);
            this.p.ox(this.ox.getId(), this.ox.getTotalBytes());
            this.p.p(this.ox.getId());
            this.p.mp(this.ox.getId());
            return;
        }
        mp();
        com.ss.android.socialbase.downloader.ox.dq.d(dq, "onCompleteForFileExist");
        this.ox.setSuccessByCache(true);
        dq(-3, (BaseException) null);
        this.p.ox(this.ox.getId(), this.ox.getTotalBytes());
        this.p.p(this.ox.getId());
        this.p.dq(this.ox);
        this.p.mp(this.ox.getId());
    }

    public void ox() {
        dq(-4, (BaseException) null);
    }

    public void p() {
        this.ox.setStatus(-2);
        try {
            this.p.p(this.ox.getId(), this.ox.getCurBytes());
        } catch (SQLiteException e2) {
            e2.printStackTrace();
        }
        dq(-2, (BaseException) null);
    }

    public void s() {
        this.ox.setStatus(-7);
        try {
            this.p.o(this.ox.getId());
        } catch (SQLiteException e2) {
            e2.printStackTrace();
        }
        dq(-7, (BaseException) null);
    }
}
