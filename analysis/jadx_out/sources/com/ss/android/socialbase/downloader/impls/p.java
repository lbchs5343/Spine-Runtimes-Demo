package com.ss.android.socialbase.downloader.impls;

import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.util.SparseArray;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.ss.android.socialbase.downloader.downloader.ox;
import com.ss.android.socialbase.downloader.downloader.r;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.ia.ia;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class p implements com.ss.android.socialbase.downloader.downloader.o {

    /* renamed from: d, reason: collision with root package name */
    private r f9401d;
    private com.ss.android.socialbase.downloader.ia.ia iw;
    private volatile boolean ox;
    private volatile boolean p;
    private ia.dq s = new ia.dq() { // from class: com.ss.android.socialbase.downloader.impls.p.1
        @Override // com.ss.android.socialbase.downloader.ia.ia.dq
        public void dq(Message message) {
            if (message.what == 1) {
                com.ss.android.socialbase.downloader.downloader.ox.ig().execute(new Runnable() { // from class: com.ss.android.socialbase.downloader.impls.p.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            p.this.kk();
                        } catch (Exception e2) {
                            e2.printStackTrace();
                        }
                    }
                });
            }
        }
    };
    private final no dq = new no();

    public p() {
        this.iw = null;
        if (!com.ss.android.socialbase.downloader.mn.dq.ox().dq("fix_sigbus_downloader_db")) {
            this.f9401d = new com.ss.android.socialbase.downloader.d.s();
        } else if (com.ss.android.socialbase.downloader.kk.iw.dq() || !com.ss.android.socialbase.downloader.downloader.ox.uh()) {
            this.f9401d = new com.ss.android.socialbase.downloader.d.s();
        } else {
            this.f9401d = com.ss.android.socialbase.downloader.downloader.ox.xz().dq(new ox.dq.InterfaceC0247dq() { // from class: com.ss.android.socialbase.downloader.impls.p.2
                @Override // com.ss.android.socialbase.downloader.downloader.ox.dq.InterfaceC0247dq
                public void dq() {
                    p.this.f9401d = new com.ss.android.socialbase.downloader.d.s();
                    Log.e("DefaultDownloadCache", "rebind error,use backup sqlDownloadCache");
                }
            });
        }
        this.ox = false;
        this.iw = new com.ss.android.socialbase.downloader.ia.ia(Looper.getMainLooper(), this.s);
        mn();
    }

    private void dq(DownloadInfo downloadInfo, boolean z) {
        if (downloadInfo == null) {
            return;
        }
        if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
            this.f9401d.dq(downloadInfo);
            return;
        }
        if (z) {
            com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
            if (dq != null) {
                dq.ox(downloadInfo);
            } else {
                this.f9401d.dq(downloadInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        synchronized (this) {
            this.ox = true;
            notifyAll();
        }
    }

    private void ox(DownloadInfo downloadInfo) {
        dq(downloadInfo, true);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo d(int i) {
        return this.dq.d(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo d(int i, long j) {
        DownloadInfo d2 = this.dq.d(i, j);
        d(i, (List<com.ss.android.socialbase.downloader.model.d>) null);
        return d2;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> d() {
        return this.dq.d();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> d(String str) {
        return this.dq.d(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        try {
            dq(this.dq.d(i));
            if (list == null) {
                list = this.dq.ox(i);
            }
            if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
                this.f9401d.d(i, list);
                return;
            }
            com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
            if (dq != null) {
                dq.d(i, list);
            } else {
                this.f9401d.d(i, list);
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return;
        }
        this.dq.dq(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void d(com.ss.android.socialbase.downloader.model.d dVar) {
        if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
            this.f9401d.dq(dVar);
            return;
        }
        com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
        if (dq != null) {
            dq.dq(dVar);
        } else {
            this.f9401d.dq(dVar);
        }
    }

    public no dq() {
        return this.dq;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo dq(int i, int i2) {
        DownloadInfo dq = this.dq.dq(i, i2);
        ox(dq);
        return dq;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo dq(int i, long j) {
        DownloadInfo dq = this.dq.dq(i, j);
        dq(dq, false);
        return dq;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo dq(int i, long j, String str, String str2) {
        DownloadInfo dq = this.dq.dq(i, j, str, str2);
        ox(dq);
        return dq;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> dq(String str) {
        return this.dq.dq(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, int i2, int i3, int i4) {
        if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
            this.f9401d.dq(i, i2, i3, i4);
            return;
        }
        com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
        if (dq != null) {
            dq.dq(i, i2, i3, i4);
        } else {
            this.f9401d.dq(i, i2, i3, i4);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, int i2, int i3, long j) {
        if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
            this.f9401d.dq(i, i2, i3, j);
            return;
        }
        com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
        if (dq != null) {
            dq.dq(i, i2, i3, j);
        } else {
            this.f9401d.dq(i, i2, i3, j);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, int i2, long j) {
        this.dq.dq(i, i2, j);
        if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
            this.f9401d.dq(i, i2, j);
            return;
        }
        com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
        if (dq != null) {
            dq.dq(i, i2, j);
        } else {
            this.f9401d.dq(i, i2, j);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        this.dq.dq(i, list);
        if (com.ss.android.socialbase.downloader.kk.iw.ox()) {
            this.f9401d.d(i, list);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void dq(com.ss.android.socialbase.downloader.model.d dVar) {
        synchronized (this.dq) {
            this.dq.dq(dVar);
        }
        if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
            this.f9401d.dq(dVar);
            return;
        }
        com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
        if (dq != null) {
            dq.dq(dVar);
        } else {
            this.f9401d.dq(dVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean dq(int i, Map<Long, com.ss.android.socialbase.downloader.iw.kk> map) {
        this.dq.dq(i, map);
        this.f9401d.dq(i, map);
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean dq = this.dq.dq(downloadInfo);
        ox(downloadInfo);
        return dq;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo ia(int i) {
        DownloadInfo ia = this.dq.ia(i);
        ox(ia);
        return ia;
    }

    public void ia() {
        this.iw.sendMessageDelayed(this.iw.obtainMessage(1), com.ss.android.socialbase.downloader.mn.dq.ox().dq("task_resume_delay") ? 4000L : Build.VERSION.SDK_INT >= 23 ? 1000L : PushUIConfig.dismissTime);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public Map<Long, com.ss.android.socialbase.downloader.iw.kk> ig(int i) {
        Map<Long, com.ss.android.socialbase.downloader.iw.kk> ig = this.dq.ig(i);
        if (ig != null && !ig.isEmpty()) {
            return ig;
        }
        Map<Long, com.ss.android.socialbase.downloader.iw.kk> ig2 = this.f9401d.ig(i);
        this.dq.dq(i, ig2);
        return ig2;
    }

    public r iw() {
        return this.f9401d;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean iw(int i) {
        if (com.ss.android.socialbase.downloader.kk.iw.d()) {
            com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
            if (dq != null) {
                dq.f(i);
            } else {
                this.f9401d.iw(i);
            }
        } else {
            this.f9401d.iw(i);
        }
        return this.dq.iw(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo kk(int i) {
        DownloadInfo kk = this.dq.kk(i);
        ox(kk);
        return kk;
    }

    public void kk() {
        List<String> list;
        ArrayList arrayList;
        DownloadInfo downloadInfo;
        DownloadInfo downloadInfo2;
        if (this.ox) {
            if (this.p) {
                com.ss.android.socialbase.downloader.ox.dq.d("DefaultDownloadCache", "resumeUnCompleteTask: has resumed, return!!!");
                return;
            }
            this.p = true;
            if (com.ss.android.socialbase.downloader.kk.iw.dq()) {
                com.ss.android.socialbase.downloader.downloader.ig wp = com.ss.android.socialbase.downloader.downloader.ox.wp();
                if (wp != null) {
                    list = wp.dq();
                    arrayList = (list == null || list.isEmpty()) ? null : new ArrayList();
                } else {
                    list = null;
                    arrayList = null;
                }
                SparseArray sparseArray = new SparseArray();
                synchronized (this) {
                    try {
                        SparseArray<DownloadInfo> dq = this.dq.dq();
                        for (int i = 0; i < dq.size(); i++) {
                            int keyAt = dq.keyAt(i);
                            if (keyAt != 0 && (downloadInfo2 = dq.get(keyAt)) != null) {
                                sparseArray.put(keyAt, downloadInfo2);
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (sparseArray.size() == 0) {
                    return;
                }
                for (int i2 = 0; i2 < sparseArray.size(); i2++) {
                    int keyAt2 = sparseArray.keyAt(i2);
                    if (keyAt2 != 0 && (downloadInfo = (DownloadInfo) sparseArray.get(keyAt2)) != null) {
                        int realStatus = downloadInfo.getRealStatus();
                        int statusAtDbInit = downloadInfo.getStatusAtDbInit();
                        if (statusAtDbInit > 0 && statusAtDbInit <= 11) {
                            com.ss.android.socialbase.downloader.p.dq.dq(com.ss.android.socialbase.downloader.downloader.ox.mn(), downloadInfo, (BaseException) null, -5);
                        }
                        if (list != null && arrayList != null && downloadInfo.getMimeType() != null && list.contains(downloadInfo.getMimeType()) && (com.ss.android.socialbase.downloader.mn.dq.dq(downloadInfo.getId()).d("enable_notification_ui") >= 2 || realStatus != -2 || downloadInfo.isPauseReserveOnWifi())) {
                            downloadInfo.setDownloadFromReserveWifi(false);
                            arrayList.add(downloadInfo);
                        }
                    }
                }
                if (wp == null || arrayList == null || arrayList.isEmpty()) {
                    return;
                }
                wp.dq(arrayList, 1);
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo mn(int i) {
        DownloadInfo mn = this.dq.mn(i);
        ox(mn);
        return mn;
    }

    public void mn() {
        List<com.ss.android.socialbase.downloader.model.d> list;
        DownloadInfo downloadInfo;
        com.ss.android.socialbase.downloader.downloader.ox.dq(com.ss.android.socialbase.downloader.constants.p.SYNC_START);
        final SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        final SparseArray<List<com.ss.android.socialbase.downloader.model.d>> sparseArray2 = new SparseArray<>();
        synchronized (this.dq) {
            try {
                SparseArray<DownloadInfo> dq = this.dq.dq();
                for (int i = 0; i < dq.size(); i++) {
                    int keyAt = dq.keyAt(i);
                    if (keyAt != 0 && (downloadInfo = dq.get(keyAt)) != null) {
                        sparseArray.put(keyAt, downloadInfo);
                    }
                }
                SparseArray<List<com.ss.android.socialbase.downloader.model.d>> iw = this.dq.iw();
                for (int i2 = 0; i2 < iw.size(); i2++) {
                    int keyAt2 = iw.keyAt(i2);
                    if (keyAt2 != 0 && (list = iw.get(keyAt2)) != null) {
                        sparseArray2.put(keyAt2, new CopyOnWriteArrayList(list));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f9401d.dq(sparseArray, sparseArray2, new com.ss.android.socialbase.downloader.d.p() { // from class: com.ss.android.socialbase.downloader.impls.p.3
            @Override // com.ss.android.socialbase.downloader.d.p
            public void dq() {
                synchronized (p.this.dq) {
                    try {
                        SparseArray<DownloadInfo> dq2 = p.this.dq.dq();
                        if (sparseArray != null) {
                            for (int i3 = 0; i3 < sparseArray.size(); i3++) {
                                int keyAt3 = sparseArray.keyAt(i3);
                                if (keyAt3 != 0) {
                                    dq2.put(keyAt3, (DownloadInfo) sparseArray.get(keyAt3));
                                }
                            }
                        }
                        SparseArray<List<com.ss.android.socialbase.downloader.model.d>> iw2 = p.this.dq.iw();
                        if (sparseArray2 != null) {
                            for (int i4 = 0; i4 < sparseArray2.size(); i4++) {
                                int keyAt4 = sparseArray2.keyAt(i4);
                                if (keyAt4 != 0) {
                                    iw2.put(keyAt4, (List) sparseArray2.get(keyAt4));
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                p.this.o();
                p.this.ia();
                com.ss.android.socialbase.downloader.downloader.ox.dq(com.ss.android.socialbase.downloader.constants.p.SYNC_SUCCESS);
            }
        });
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void mp(int i) {
        this.dq.mp(i);
        this.f9401d.mp(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo o(int i) {
        DownloadInfo o = this.dq.o(i);
        ox(o);
        return o;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo ox(int i, long j) {
        DownloadInfo ox = this.dq.ox(i, j);
        d(i, (List<com.ss.android.socialbase.downloader.model.d>) null);
        return ox;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<com.ss.android.socialbase.downloader.model.d> ox(int i) {
        return this.dq.ox(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> ox(String str) {
        return this.dq.ox(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void ox() {
        try {
            this.dq.ox();
        } catch (SQLiteException e2) {
            e2.printStackTrace();
        }
        if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
            this.f9401d.ox();
            return;
        }
        com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
        if (dq != null) {
            dq.iw();
        } else {
            this.f9401d.ox();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public DownloadInfo p(int i, long j) {
        DownloadInfo p = this.dq.p(i, j);
        d(i, (List<com.ss.android.socialbase.downloader.model.d>) null);
        return p;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<DownloadInfo> p(String str) {
        return this.dq.p(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public void p(int i) {
        this.dq.p(i);
        if (!com.ss.android.socialbase.downloader.kk.iw.d()) {
            this.f9401d.p(i);
            return;
        }
        com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
        if (dq != null) {
            dq.jy(i);
        } else {
            this.f9401d.p(i);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean p() {
        return this.ox;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public List<com.ss.android.socialbase.downloader.iw.kk> q(int i) {
        List<com.ss.android.socialbase.downloader.iw.kk> q = this.dq.q(i);
        return (q == null || q.size() == 0) ? this.f9401d.q(i) : q;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean s() {
        if (this.ox) {
            return true;
        }
        synchronized (this) {
            if (!this.ox) {
                com.ss.android.socialbase.downloader.ox.dq.p("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting start!!!!");
                try {
                    wait(PushUIConfig.dismissTime);
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
                com.ss.android.socialbase.downloader.ox.dq.p("DefaultDownloadCache", "ensureDownloadCacheSyncSuccess: waiting end!!!!");
            }
        }
        return this.ox;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.o
    public boolean s(int i) {
        try {
            if (com.ss.android.socialbase.downloader.kk.iw.d()) {
                com.ss.android.socialbase.downloader.downloader.mp dq = ig.dq(true);
                if (dq != null) {
                    dq.q(i);
                } else {
                    this.f9401d.s(i);
                }
            } else {
                this.f9401d.s(i);
            }
        } catch (SQLiteException e2) {
            e2.printStackTrace();
        }
        return this.dq.s(i);
    }
}
