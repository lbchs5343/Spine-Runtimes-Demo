package com.ss.android.socialbase.downloader.impls;

import android.database.sqlite.SQLiteException;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.constants.DownloadStatus;
import com.ss.android.socialbase.downloader.constants.EnqueueType;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.ia.ia;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.LinkedBlockingDeque;

/* loaded from: classes.dex */
public abstract class dq implements ia.dq {

    /* renamed from: d, reason: collision with root package name */
    private final SparseArray<DownloadTask> f9386d = new SparseArray<>();
    private final SparseArray<DownloadTask> ox = new SparseArray<>();
    private final SparseArray<DownloadTask> p = new SparseArray<>();
    private final SparseArray<DownloadTask> s = new SparseArray<>();
    private final SparseArray<DownloadTask> iw = new SparseArray<>();
    private final SparseArray<SparseArray<DownloadTask>> mn = new SparseArray<>();
    private final com.ss.android.socialbase.downloader.kk.ia<Integer, DownloadTask> ia = new com.ss.android.socialbase.downloader.kk.ia<>();
    private final SparseArray<Long> kk = new SparseArray<>();
    private final LinkedBlockingDeque<DownloadTask> o = new LinkedBlockingDeque<>();
    protected final com.ss.android.socialbase.downloader.ia.ia dq = new com.ss.android.socialbase.downloader.ia.ia(Looper.getMainLooper(), this);
    private final com.ss.android.socialbase.downloader.downloader.o no = com.ss.android.socialbase.downloader.downloader.ox.e();

    private void d(DownloadTask downloadTask) {
        int hashCodeForSameTask = downloadTask.getHashCodeForSameTask();
        if (hashCodeForSameTask == 0 && downloadTask.isAutoSetHashCodeForSameTask()) {
            hashCodeForSameTask = downloadTask.autoCalAndGetHashCodeForSameTask();
        }
        if (hashCodeForSameTask == 0) {
            return;
        }
        SparseArray<DownloadTask> sparseArray = this.mn.get(downloadTask.getDownloadId());
        if (sparseArray == null) {
            sparseArray = new SparseArray<>();
            this.mn.put(downloadTask.getDownloadId(), sparseArray);
        }
        com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "tryCacheSameTaskWithListenerHashCode id:" + downloadTask.getDownloadId() + " listener hasCode:" + hashCodeForSameTask);
        sparseArray.put(hashCodeForSameTask, downloadTask);
    }

    private boolean d(DownloadInfo downloadInfo) {
        if (downloadInfo != null && downloadInfo.statusInPause()) {
            return downloadInfo.isPauseReserveOnWifi();
        }
        return false;
    }

    private void dq(int i, int i2) {
        com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "removeTask id: " + i + " listener hasCode: " + i2);
        if (i2 == 0) {
            this.f9386d.remove(i);
            this.mn.remove(i);
            return;
        }
        SparseArray<DownloadTask> sparseArray = this.mn.get(i);
        if (sparseArray == null) {
            this.f9386d.remove(i);
            return;
        }
        sparseArray.remove(i2);
        com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "after downloadTaskWithListenerMap removeTask taskArray.size: " + sparseArray.size());
        if (sparseArray.size() == 0) {
            this.f9386d.remove(i);
            this.mn.remove(i);
        }
    }

    private void dq(int i, BaseException baseException, DownloadTask downloadTask) {
        if (downloadTask != null) {
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            SparseArray<IDownloadListener> downloadListeners = downloadTask.getDownloadListeners(com.ss.android.socialbase.downloader.constants.iw.MAIN);
            SparseArray<IDownloadListener> downloadListeners2 = downloadTask.getDownloadListeners(com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION);
            boolean z = downloadTask.canShowNotification() || downloadInfo.isAutoInstallWithoutNotification();
            com.ss.android.socialbase.downloader.kk.ox.dq(i, downloadListeners, true, downloadInfo, baseException);
            com.ss.android.socialbase.downloader.kk.ox.dq(i, downloadListeners2, z, downloadInfo, baseException);
        }
    }

    private void dq(DownloadInfo downloadInfo) {
        if (downloadInfo != null) {
            try {
                if (downloadInfo.getStatus() != 7 && downloadInfo.getRetryDelayStatus() == com.ss.android.socialbase.downloader.constants.mn.DELAY_RETRY_NONE) {
                    return;
                }
                downloadInfo.setStatus(5);
                downloadInfo.setRetryDelayStatus(com.ss.android.socialbase.downloader.constants.mn.DELAY_RETRY_NONE);
                com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "cancelAlarm");
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }

    private void dq(DownloadTask downloadTask, boolean z) {
        DownloadInfo downloadInfo;
        int i;
        DownloadInfo downloadInfo2;
        DownloadTask remove;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return;
        }
        if (downloadInfo.isEntityInvalid()) {
            com.ss.android.socialbase.downloader.p.dq.dq(downloadTask.getMonitorDepend(), downloadInfo, new BaseException(1003, "downloadInfo is Invalid, url is " + downloadInfo.getUrl() + " name is " + downloadInfo.getName() + " savePath is " + downloadInfo.getSavePath()), downloadInfo.getStatus());
            return;
        }
        boolean z2 = false;
        if (com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).dq("no_net_opt", 0) == 1 && !com.ss.android.socialbase.downloader.kk.iw.ox(com.ss.android.socialbase.downloader.downloader.ox.ob()) && !downloadInfo.isFirstDownload()) {
            new com.ss.android.socialbase.downloader.downloader.iw(downloadTask, this.dq).dq(new BaseException(1049, "network_not_available"));
            return;
        }
        int id = downloadInfo.getId();
        if (z) {
            dq(downloadInfo);
        }
        if (this.p.get(id) != null) {
            this.p.remove(id);
        }
        if (this.ox.get(id) != null) {
            this.ox.remove(id);
        }
        if (this.s.get(id) != null) {
            this.s.remove(id);
        }
        if (this.iw.get(id) != null) {
            this.iw.remove(id);
        }
        if (dq(id) && !downloadInfo.canReStartAsyncTask()) {
            com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "another task with same id is downloading when tryDownload");
            downloadTask.addListenerToDownloadingSameTask();
            com.ss.android.socialbase.downloader.p.dq.dq(downloadTask.getMonitorDepend(), downloadInfo, new BaseException(1003, "downloadInfo is isDownloading and addListenerToSameTask is false"), downloadInfo.getStatus());
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "no downloading task :".concat(String.valueOf(id)));
        if (downloadInfo.canReStartAsyncTask()) {
            downloadInfo.setAsyncHandleStatus(com.ss.android.socialbase.downloader.constants.dq.ASYNC_HANDLE_RESTART);
        }
        if (com.ss.android.socialbase.downloader.kk.dq.dq(32768) && (remove = this.ia.remove(Integer.valueOf(id))) != null) {
            downloadTask.copyListenerFromPendingTask(remove);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        DownloadTask downloadTask2 = this.f9386d.get(id);
        if (downloadTask2 == null || (downloadInfo2 = downloadTask2.getDownloadInfo()) == null) {
            i = 0;
        } else {
            i = downloadInfo2.getStatus();
            if (DownloadStatus.isDownloading(i)) {
                z2 = true;
            }
        }
        com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "can add listener " + z2 + " , oldTaskStatus is :" + i);
        if (z2) {
            downloadTask.addListenerToDownloadingSameTask();
            return;
        }
        d(downloadTask);
        this.f9386d.put(id, downloadTask);
        this.kk.put(id, Long.valueOf(uptimeMillis));
        dq(id, downloadTask);
    }

    private void f(int i) {
        DownloadTask first;
        if (this.o.isEmpty()) {
            return;
        }
        DownloadTask first2 = this.o.getFirst();
        if (first2 != null && first2.getDownloadId() == i) {
            this.o.poll();
        }
        if (this.o.isEmpty() || (first = this.o.getFirst()) == null) {
            return;
        }
        dq(first, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DownloadTask jy(int i) {
        DownloadTask downloadTask = this.f9386d.get(i);
        return (downloadTask == null && (downloadTask = this.p.get(i)) == null && (downloadTask = this.ox.get(i)) == null && (downloadTask = this.s.get(i)) == null) ? this.iw.get(i) : downloadTask;
    }

    private void ox(DownloadTask downloadTask) {
        DownloadInfo downloadInfo;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return;
        }
        try {
            if (this.o.isEmpty()) {
                dq(downloadTask, true);
                this.o.put(downloadTask);
                return;
            }
            if (downloadInfo.getEnqueueType() != EnqueueType.ENQUEUE_TAIL) {
                DownloadTask first = this.o.getFirst();
                if (first.getDownloadId() == downloadTask.getDownloadId() && dq(downloadTask.getDownloadId())) {
                    return;
                }
                s(first.getDownloadId());
                dq(downloadTask, true);
                if (first.getDownloadId() != downloadTask.getDownloadId()) {
                    this.o.putFirst(downloadTask);
                    return;
                }
                return;
            }
            if (this.o.getFirst().getDownloadId() == downloadTask.getDownloadId() && dq(downloadTask.getDownloadId())) {
                return;
            }
            Iterator<DownloadTask> it = this.o.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                DownloadTask next = it.next();
                if (next != null && next.getDownloadId() == downloadTask.getDownloadId()) {
                    it.remove();
                    break;
                }
            }
            this.o.put(downloadTask);
            new com.ss.android.socialbase.downloader.downloader.iw(downloadTask, this.dq).dq();
        } catch (InterruptedException unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p(int i, boolean z) {
        com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "clearDownloadDataInSubThread::id=" + i + " deleteTargetFile=" + z);
        try {
            DownloadInfo d2 = this.no.d(i);
            if (d2 != null) {
                if (z) {
                    com.ss.android.socialbase.downloader.kk.iw.dq(d2);
                } else {
                    com.ss.android.socialbase.downloader.kk.iw.ox(d2.getTempPath(), d2.getTempName());
                }
                d2.erase();
            }
            try {
                this.no.iw(i);
            } catch (SQLiteException e2) {
                e2.printStackTrace();
            }
            dq(i, 0, -4);
            if (this.p.get(i) != null) {
                this.p.remove(i);
            }
            if (this.ox.get(i) != null) {
                this.ox.remove(i);
            }
            this.ia.remove(Integer.valueOf(i));
            com.ss.android.socialbase.downloader.mn.dq.d(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s(int i, boolean z) {
        try {
            DownloadInfo d2 = this.no.d(i);
            if (d2 != null) {
                com.ss.android.socialbase.downloader.kk.iw.dq(d2, z);
                d2.erase();
            }
            try {
                this.no.p(i);
                this.no.dq(d2);
            } catch (SQLiteException e2) {
                e2.printStackTrace();
            }
            if (this.p.get(i) != null) {
                this.p.remove(i);
            }
            if (this.ox.get(i) != null) {
                this.ox.remove(i);
            }
            this.ia.remove(Integer.valueOf(i));
            com.ss.android.socialbase.downloader.mn.dq.d(i);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public List<DownloadInfo> d(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Iterator<Integer> it = dq().iterator();
        ArrayList arrayList = new ArrayList();
        while (it.hasNext()) {
            DownloadInfo p = p(it.next().intValue());
            if (p != null && str.equals(p.getMimeType())) {
                arrayList.add(p);
            }
        }
        return arrayList;
    }

    public void d() {
        List<Integer> dq = dq();
        if (dq == null) {
            return;
        }
        Iterator<Integer> it = dq.iterator();
        while (it.hasNext()) {
            s(it.next().intValue());
        }
    }

    public abstract void d(int i);

    public synchronized void d(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z) {
        dq(i, i2, iDownloadListener, iwVar, z, true);
    }

    public void d(int i, long j) {
        DownloadInfo d2 = this.no.d(i);
        if (d2 != null) {
            d2.setThrottleNetSpeed(j);
        }
        dq(i, j);
    }

    public void d(final int i, final boolean z) {
        DownloadInfo d2 = this.no.d(i);
        if (d2 != null) {
            dq(d2);
        }
        this.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.dq.2
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.downloader.notification.d.dq().iw(i);
            }
        });
        com.ss.android.socialbase.downloader.downloader.ox.dq(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.dq.3
            @Override // java.lang.Runnable
            public void run() {
                DownloadTask jy;
                if (dq.this.ox(i) == null && (jy = dq.this.jy(i)) != null) {
                    DownloadInfo downloadInfo = jy.getDownloadInfo();
                    SparseArray<IDownloadListener> downloadListeners = jy.getDownloadListeners(com.ss.android.socialbase.downloader.constants.iw.SUB);
                    if (downloadListeners != null) {
                        synchronized (downloadListeners) {
                            for (int i2 = 0; i2 < downloadListeners.size(); i2++) {
                                try {
                                    IDownloadListener iDownloadListener = downloadListeners.get(downloadListeners.keyAt(i2));
                                    if (iDownloadListener != null) {
                                        iDownloadListener.onCanceled(downloadInfo);
                                    }
                                } finally {
                                }
                            }
                        }
                    }
                }
                dq.this.p(i, z);
            }
        }, false);
    }

    public synchronized void d(List<String> list) {
        DownloadInfo downloadInfo;
        try {
            if (com.ss.android.socialbase.downloader.kk.iw.d(com.ss.android.socialbase.downloader.downloader.ox.ob())) {
                for (int i = 0; i < this.f9386d.size(); i++) {
                    DownloadTask downloadTask = this.f9386d.get(this.f9386d.keyAt(i));
                    if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && d(downloadInfo)) {
                        downloadInfo.setAutoResumed(true);
                        downloadInfo.setShowNotificationForNetworkResumed(true);
                        dq(downloadTask);
                        downloadInfo.setDownloadFromReserveWifi(true);
                        com.ss.android.socialbase.downloader.downloader.cd reserveWifiStatusListener = Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).getReserveWifiStatusListener();
                        if (reserveWifiStatusListener != null) {
                            reserveWifiStatusListener.dq(downloadInfo, 5, 2);
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public abstract List<Integer> dq();

    public synchronized List<DownloadInfo> dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        List<DownloadInfo> dq = this.no.dq(str);
        if (dq != null && !dq.isEmpty()) {
            return dq;
        }
        ArrayList arrayList = new ArrayList();
        int size = this.f9386d.size();
        for (int i = 0; i < size; i++) {
            DownloadTask valueAt = this.f9386d.valueAt(i);
            if (valueAt != null && valueAt.getDownloadInfo() != null && str.equals(valueAt.getDownloadInfo().getUrl())) {
                arrayList.add(valueAt.getDownloadInfo());
            }
        }
        return arrayList;
    }

    public synchronized void dq(int i, int i2, int i3) {
        try {
            if (i3 != -7) {
                if (i3 == -6) {
                    this.ox.put(i, this.f9386d.get(i));
                    dq(i, i2);
                    return;
                }
                if (i3 == -4) {
                    dq(i, i2);
                } else if (i3 == -3) {
                    this.ox.put(i, this.f9386d.get(i));
                    dq(i, i2);
                } else if (i3 != -1) {
                    if (i3 != 7) {
                        if (i3 == 8) {
                            DownloadTask downloadTask = this.f9386d.get(i);
                            if (downloadTask != null && this.iw.get(i) == null) {
                                this.iw.put(i, downloadTask);
                            }
                        }
                        return;
                    }
                    DownloadTask downloadTask2 = this.f9386d.get(i);
                    if (downloadTask2 != null) {
                        if (this.s.get(i) == null) {
                            this.s.put(i, downloadTask2);
                        }
                        dq(i, i2);
                    }
                    f(i);
                    return;
                }
                f(i);
                return;
            }
            DownloadTask downloadTask3 = this.f9386d.get(i);
            if (downloadTask3 != null) {
                if (this.p.get(i) == null) {
                    this.p.put(i, downloadTask3);
                }
                dq(i, i2);
            }
            f(i);
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void dq(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z) {
        try {
            DownloadTask jy = jy(i);
            if (jy == null) {
                jy = this.ia.get(Integer.valueOf(i));
            }
            if (jy != null) {
                jy.removeDownloadListener(i2, iDownloadListener, iwVar, z);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void dq(int i, int i2, final IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z, boolean z2) {
        DownloadInfo d2;
        try {
            DownloadTask jy = jy(i);
            if (jy == null) {
                if (com.ss.android.socialbase.downloader.kk.dq.dq(32768) && (d2 = this.no.d(i)) != null && d2.getStatus() != -3) {
                    DownloadTask downloadTask = this.ia.get(Integer.valueOf(i));
                    if (downloadTask == null) {
                        downloadTask = new DownloadTask(d2);
                        this.ia.put(Integer.valueOf(i), downloadTask);
                    }
                    downloadTask.addDownloadListener(i2, iDownloadListener, iwVar, z);
                }
                return;
            }
            jy.addDownloadListener(i2, iDownloadListener, iwVar, z);
            final DownloadInfo downloadInfo = jy.getDownloadInfo();
            if (z2) {
                if (downloadInfo != null) {
                    if (!dq(i)) {
                        if (iwVar != com.ss.android.socialbase.downloader.constants.iw.MAIN) {
                            if (iwVar == com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION) {
                            }
                        }
                        if (iwVar != com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION || downloadInfo.canShowNotification()) {
                            this.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.dq.6
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (iDownloadListener != null) {
                                        if (downloadInfo.getStatus() == -3) {
                                            iDownloadListener.onSuccessed(downloadInfo);
                                        } else if (downloadInfo.getStatus() == -1) {
                                            iDownloadListener.onFailed(downloadInfo, new BaseException(1000, "try add listener for failed task"));
                                        }
                                    }
                                }
                            });
                        }
                    }
                }
            }
        } finally {
        }
    }

    public abstract void dq(int i, long j);

    public synchronized void dq(int i, kx kxVar) {
        DownloadTask downloadTask = this.f9386d.get(i);
        if (downloadTask != null) {
            downloadTask.setNotificationEventListener(kxVar);
        }
    }

    public abstract void dq(int i, DownloadTask downloadTask);

    @Override // com.ss.android.socialbase.downloader.ia.ia.dq
    public void dq(Message message) {
        int i = message.arg1;
        int i2 = message.arg2;
        com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "handleMsg id: " + i + " listener hasCode: " + i2);
        Object obj = message.obj;
        DownloadTask downloadTask = null;
        BaseException baseException = obj instanceof Exception ? (BaseException) obj : null;
        synchronized (this) {
            try {
                if (i2 == 0) {
                    downloadTask = this.f9386d.get(i);
                } else {
                    SparseArray<DownloadTask> sparseArray = this.mn.get(i);
                    if (sparseArray != null) {
                        downloadTask = sparseArray.get(i2);
                    }
                }
                if (downloadTask == null) {
                    return;
                }
                dq(message.what, baseException, downloadTask);
                dq(i, i2, message.what);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public abstract void dq(com.ss.android.socialbase.downloader.ia.ox oxVar);

    public synchronized void dq(DownloadTask downloadTask) {
        if (downloadTask == null) {
            return;
        }
        DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
        if (downloadInfo == null) {
            return;
        }
        downloadInfo.setDownloadFromReserveWifi(false);
        if (downloadInfo.getEnqueueType() != EnqueueType.ENQUEUE_NONE) {
            ox(downloadTask);
        } else {
            dq(downloadTask, true);
        }
    }

    public synchronized void dq(List<String> list) {
        DownloadInfo downloadInfo;
        try {
            try {
                boolean d2 = com.ss.android.socialbase.downloader.kk.dq.dq(1048576) ? com.ss.android.socialbase.downloader.kk.iw.d(com.ss.android.socialbase.downloader.downloader.ox.ob()) : true;
                for (int i = 0; i < this.p.size(); i++) {
                    DownloadTask downloadTask = this.p.get(this.p.keyAt(i));
                    if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && (!downloadInfo.isOnlyWifi() || d2)) {
                        downloadInfo.setAutoResumed(true);
                        downloadInfo.setShowNotificationForNetworkResumed(true);
                        dq(downloadTask);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public abstract boolean dq(int i);

    public synchronized boolean dq(int i, boolean z) {
        try {
            DownloadTask downloadTask = this.f9386d.get(i);
            if (downloadTask == null && com.ss.android.socialbase.downloader.kk.dq.dq(65536)) {
                downloadTask = jy(i);
            }
            if (downloadTask != null) {
                if (!com.ss.android.socialbase.downloader.mn.dq.dq(i).d("fix_on_cancel_call_twice", true)) {
                    new com.ss.android.socialbase.downloader.downloader.iw(downloadTask, this.dq).ox();
                }
                final DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
                final SparseArray<IDownloadListener> downloadListeners = downloadTask.getDownloadListeners(com.ss.android.socialbase.downloader.constants.iw.MAIN);
                final SparseArray<IDownloadListener> downloadListeners2 = downloadTask.getDownloadListeners(com.ss.android.socialbase.downloader.constants.iw.NOTIFICATION);
                this.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SparseArray sparseArray;
                        SparseArray sparseArray2 = downloadListeners;
                        if (sparseArray2 != null) {
                            synchronized (sparseArray2) {
                                for (int i2 = 0; i2 < downloadListeners.size(); i2++) {
                                    try {
                                        IDownloadListener iDownloadListener = (IDownloadListener) downloadListeners.get(downloadListeners.keyAt(i2));
                                        if (iDownloadListener != null) {
                                            iDownloadListener.onCanceled(downloadInfo);
                                        }
                                    } finally {
                                    }
                                }
                            }
                        }
                        DownloadInfo downloadInfo2 = downloadInfo;
                        if (downloadInfo2 == null || !downloadInfo2.canShowNotification() || (sparseArray = downloadListeners2) == null) {
                            return;
                        }
                        synchronized (sparseArray) {
                            for (int i3 = 0; i3 < downloadListeners2.size(); i3++) {
                                try {
                                    IDownloadListener iDownloadListener2 = (IDownloadListener) downloadListeners2.get(downloadListeners2.keyAt(i3));
                                    if (iDownloadListener2 != null) {
                                        iDownloadListener2.onCanceled(downloadInfo);
                                    }
                                } finally {
                                }
                            }
                        }
                    }
                });
            }
            DownloadInfo d2 = this.no.d(i);
            if (com.ss.android.socialbase.downloader.kk.dq.dq(65536)) {
                if (d2 != null) {
                    d2.setStatus(-4);
                }
            } else if (d2 != null && DownloadStatus.isDownloading(d2.getStatus())) {
                d2.setStatus(-4);
            }
            d(i, z);
        } catch (Throwable th) {
            throw th;
        }
        return true;
    }

    public synchronized op ia(int i) {
        DownloadTask downloadTask = this.f9386d.get(i);
        if (downloadTask != null) {
            return downloadTask.getNotificationClickCallback();
        }
        DownloadTask downloadTask2 = this.ox.get(i);
        if (downloadTask2 != null) {
            return downloadTask2.getNotificationClickCallback();
        }
        DownloadTask downloadTask3 = this.p.get(i);
        if (downloadTask3 != null) {
            return downloadTask3.getNotificationClickCallback();
        }
        DownloadTask downloadTask4 = this.s.get(i);
        if (downloadTask4 != null) {
            return downloadTask4.getNotificationClickCallback();
        }
        DownloadTask downloadTask5 = this.iw.get(i);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getNotificationClickCallback();
    }

    public synchronized boolean ig(int i) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.iw.get(i);
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return false;
        }
        if (downloadInfo.canReStartAsyncTask()) {
            dq(downloadTask);
        }
        return true;
    }

    public synchronized boolean iw(int i) {
        try {
            DownloadTask downloadTask = this.f9386d.get(i);
            if (downloadTask != null) {
                DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
                if (downloadInfo != null) {
                    downloadInfo.setDownloadFromReserveWifi(false);
                }
                dq(downloadTask);
            } else {
                mn(i);
            }
        } catch (Throwable th) {
            throw th;
        }
        return true;
    }

    public synchronized kx kk(int i) {
        DownloadTask downloadTask = this.f9386d.get(i);
        if (downloadTask != null) {
            return downloadTask.getNotificationEventListener();
        }
        DownloadTask downloadTask2 = this.ox.get(i);
        if (downloadTask2 != null) {
            return downloadTask2.getNotificationEventListener();
        }
        DownloadTask downloadTask3 = this.p.get(i);
        if (downloadTask3 != null) {
            return downloadTask3.getNotificationEventListener();
        }
        DownloadTask downloadTask4 = this.s.get(i);
        if (downloadTask4 != null) {
            return downloadTask4.getNotificationEventListener();
        }
        DownloadTask downloadTask5 = this.iw.get(i);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getNotificationEventListener();
    }

    public synchronized boolean mn(int i) {
        try {
            DownloadTask downloadTask = this.p.get(i);
            if (downloadTask == null) {
                downloadTask = this.s.get(i);
            }
            if (downloadTask == null) {
                return false;
            }
            DownloadInfo downloadInfo = downloadTask.getDownloadInfo();
            if (downloadInfo != null) {
                downloadInfo.setDownloadFromReserveWifi(false);
            }
            dq(downloadTask);
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void mp(int i) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.f9386d.get(i);
        if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null) {
            downloadInfo.setForceIgnoreRecommendSize(true);
            dq(downloadTask);
        }
    }

    public synchronized boolean no(int i) {
        DownloadInfo downloadInfo;
        DownloadTask downloadTask = this.s.get(i);
        if (downloadTask != null && (downloadInfo = downloadTask.getDownloadInfo()) != null) {
            if (downloadInfo.canStartRetryDelayTask()) {
                dq(downloadTask, false);
            }
            return true;
        }
        DownloadInfo d2 = this.no.d(i);
        if (d2 != null && d2.canStartRetryDelayTask()) {
            dq(new DownloadTask(d2), false);
        }
        return false;
    }

    public synchronized IDownloadFileUriProvider o(int i) {
        DownloadTask downloadTask = this.f9386d.get(i);
        if (downloadTask != null) {
            return downloadTask.getFileUriProvider();
        }
        DownloadTask downloadTask2 = this.ox.get(i);
        if (downloadTask2 != null) {
            return downloadTask2.getFileUriProvider();
        }
        DownloadTask downloadTask3 = this.p.get(i);
        if (downloadTask3 != null) {
            return downloadTask3.getFileUriProvider();
        }
        DownloadTask downloadTask4 = this.s.get(i);
        if (downloadTask4 != null) {
            return downloadTask4.getFileUriProvider();
        }
        DownloadTask downloadTask5 = this.iw.get(i);
        if (downloadTask5 == null) {
            return null;
        }
        return downloadTask5.getFileUriProvider();
    }

    public abstract com.ss.android.socialbase.downloader.ia.ox ox(int i);

    public void ox(final int i, final boolean z) {
        DownloadInfo d2 = this.no.d(i);
        if (d2 != null) {
            dq(d2);
        }
        this.dq.post(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.dq.4
            @Override // java.lang.Runnable
            public void run() {
                com.ss.android.socialbase.downloader.notification.d.dq().iw(i);
            }
        });
        com.ss.android.socialbase.downloader.downloader.ox.dq(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.dq.5
            @Override // java.lang.Runnable
            public void run() {
                dq.this.ox(i);
                dq.this.s(i, z);
            }
        }, false);
    }

    public synchronized DownloadInfo p(int i) {
        DownloadInfo d2;
        DownloadTask downloadTask;
        d2 = this.no.d(i);
        if (d2 == null && (downloadTask = this.f9386d.get(i)) != null) {
            d2 = downloadTask.getDownloadInfo();
        }
        return d2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0011, code lost:
    
        if (r1.p.get(r2) != null) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized boolean q(int i) {
        if (i != 0) {
            if (this.f9386d.get(i) == null) {
            }
            return true;
        }
        return false;
    }

    public synchronized boolean s(int i) {
        com.ss.android.socialbase.downloader.ox.dq.d("AbsDownloadEngine", "pause id=".concat(String.valueOf(i)));
        DownloadInfo d2 = this.no.d(i);
        if (d2 != null && d2.getStatus() == 11) {
            return false;
        }
        synchronized (this.f9386d) {
            d(i);
        }
        if (d2 == null) {
            DownloadTask downloadTask = this.f9386d.get(i);
            if (downloadTask != null) {
                new com.ss.android.socialbase.downloader.downloader.iw(downloadTask, this.dq).p();
                return true;
            }
        } else {
            dq(d2);
            if (d2.getStatus() == 1) {
                DownloadTask downloadTask2 = this.f9386d.get(i);
                if (downloadTask2 != null) {
                    new com.ss.android.socialbase.downloader.downloader.iw(downloadTask2, this.dq).p();
                    return true;
                }
            } else if (DownloadStatus.isDownloading(d2.getStatus())) {
                d2.setStatus(-2);
                return true;
            }
        }
        return false;
    }
}
