package com.ss.android.socialbase.downloader.downloader;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.ji;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.impls.DownloadHandleService;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class p {
    private static volatile p dq;

    /* renamed from: d, reason: collision with root package name */
    private volatile SparseArray<Boolean> f9363d = new SparseArray<>();
    private Handler ox = new Handler(Looper.getMainLooper());
    private volatile List<ji> p = new ArrayList();

    private mp d(DownloadTask downloadTask) {
        DownloadInfo downloadInfo;
        List<com.ss.android.socialbase.downloader.model.d> kk;
        if (downloadTask == null || (downloadInfo = downloadTask.getDownloadInfo()) == null) {
            return null;
        }
        boolean isNeedIndependentProcess = downloadInfo.isNeedIndependentProcess();
        if (com.ss.android.socialbase.downloader.kk.iw.ox() || !com.ss.android.socialbase.downloader.kk.iw.dq()) {
            isNeedIndependentProcess = true;
        }
        int dq2 = dq(downloadInfo.getId());
        if (dq2 >= 0 && dq2 != isNeedIndependentProcess) {
            try {
                if (dq2 == 1) {
                    if (com.ss.android.socialbase.downloader.kk.iw.dq()) {
                        com.ss.android.socialbase.downloader.impls.ig.dq(true).dq(downloadInfo.getId());
                        DownloadInfo ia = com.ss.android.socialbase.downloader.impls.ig.dq(true).ia(downloadInfo.getId());
                        if (ia != null) {
                            com.ss.android.socialbase.downloader.impls.ig.dq(false).d(ia);
                        }
                        if (ia.getChunkCount() > 1 && (kk = com.ss.android.socialbase.downloader.impls.ig.dq(true).kk(downloadInfo.getId())) != null) {
                            com.ss.android.socialbase.downloader.impls.ig.dq(false).dq(downloadInfo.getId(), com.ss.android.socialbase.downloader.kk.iw.dq(kk));
                        }
                    }
                } else if (com.ss.android.socialbase.downloader.kk.iw.dq()) {
                    com.ss.android.socialbase.downloader.impls.ig.dq(false).dq(downloadInfo.getId());
                    List<com.ss.android.socialbase.downloader.model.d> kk2 = com.ss.android.socialbase.downloader.impls.ig.dq(false).kk(downloadInfo.getId());
                    if (kk2 != null) {
                        com.ss.android.socialbase.downloader.impls.ig.dq(true).dq(downloadInfo.getId(), com.ss.android.socialbase.downloader.kk.iw.dq(kk2));
                    }
                } else {
                    downloadTask.setNeedDelayForCacheSync(true);
                    com.ss.android.socialbase.downloader.impls.ig.dq(true).dq(1, downloadInfo.getId());
                }
            } catch (Throwable unused) {
            }
        }
        dq(downloadInfo.getId(), isNeedIndependentProcess);
        return com.ss.android.socialbase.downloader.impls.ig.dq(isNeedIndependentProcess);
    }

    public static p dq() {
        if (dq == null) {
            synchronized (p.class) {
                dq = new p();
            }
        }
        return dq;
    }

    private List<DownloadInfo> dq(List<DownloadInfo> list, List<DownloadInfo> list2, SparseArray<DownloadInfo> sparseArray) {
        ArrayList arrayList = new ArrayList();
        if (list != null) {
            for (DownloadInfo downloadInfo : list) {
                if (downloadInfo != null && sparseArray.get(downloadInfo.getId()) == null) {
                    sparseArray.put(downloadInfo.getId(), downloadInfo);
                }
            }
        }
        if (list2 != null) {
            for (DownloadInfo downloadInfo2 : list2) {
                if (downloadInfo2 != null && sparseArray.get(downloadInfo2.getId()) == null) {
                    sparseArray.put(downloadInfo2.getId(), downloadInfo2);
                }
            }
        }
        for (int i = 0; i < sparseArray.size(); i++) {
            arrayList.add(sparseArray.get(sparseArray.keyAt(i)));
        }
        return arrayList;
    }

    public IDownloadFileUriProvider cd(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return null;
        }
        return ox.gh(i);
    }

    public synchronized int d(int i) {
        if (this.f9363d.get(i) == null) {
            return -1;
        }
        return this.f9363d.get(i).booleanValue() ? 1 : 0;
    }

    public DownloadInfo d(String str, String str2) {
        int dq2 = dq(str, str2);
        mp ox = ox(dq2);
        if (ox == null) {
            return null;
        }
        return ox.ia(dq2);
    }

    public List<DownloadInfo> d(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        List<DownloadInfo> d2 = dq2 != null ? dq2.d(str) : null;
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        return dq(d2, dq3 != null ? dq3.d(str) : null, sparseArray);
    }

    public void d() {
        synchronized (this.p) {
            try {
                Iterator<ji> it = this.p.iterator();
                while (it.hasNext()) {
                    it.next();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(int i, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.dq(i, iDownloadListener.hashCode(), iDownloadListener, iwVar, z);
    }

    public synchronized void d(int i, boolean z) {
        try {
            this.f9363d.put(i, z ? Boolean.TRUE : Boolean.FALSE);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void d(ji jiVar) {
        if (jiVar == null) {
            return;
        }
        synchronized (this.p) {
            try {
                if (this.p.contains(jiVar)) {
                    this.p.remove(jiVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void d(com.ss.android.socialbase.downloader.depend.no noVar) {
        ox.d(noVar);
    }

    public void d(List<String> list) {
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        if (dq2 != null) {
            dq2.d(list);
        }
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        if (dq3 != null) {
            dq3.d(list);
        }
    }

    public int dq(int i) {
        if (ox.uh()) {
            return (com.ss.android.socialbase.downloader.kk.iw.ox() || !com.ss.android.socialbase.downloader.impls.ig.dq(true).mn()) ? d(i) : com.ss.android.socialbase.downloader.impls.ig.dq(true).mp(i);
        }
        return -1;
    }

    public int dq(String str, String str2) {
        return ox.dq(str, str2);
    }

    public List<DownloadInfo> dq(String str) {
        List<DownloadInfo> dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false).dq(str);
        List<DownloadInfo> dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true).dq(str);
        if (dq2 == null && dq3 == null) {
            return null;
        }
        if (dq2 == null || dq3 == null) {
            return dq2 != null ? dq2 : dq3;
        }
        ArrayList arrayList = new ArrayList(dq2);
        arrayList.addAll(dq3);
        return arrayList;
    }

    public void dq(int i, long j) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.dq(i, j);
    }

    public void dq(int i, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z) {
        int hashCode;
        IDownloadListener iDownloadListener2;
        com.ss.android.socialbase.downloader.constants.iw iwVar2;
        boolean z2;
        int i2;
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        if (iDownloadListener == null) {
            hashCode = 0;
            i2 = i;
            iDownloadListener2 = iDownloadListener;
            iwVar2 = iwVar;
            z2 = z;
        } else {
            hashCode = iDownloadListener.hashCode();
            iDownloadListener2 = iDownloadListener;
            iwVar2 = iwVar;
            z2 = z;
            i2 = i;
        }
        ox.d(i2, hashCode, iDownloadListener2, iwVar2, z2);
    }

    public void dq(int i, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z, boolean z2) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.dq(i, iDownloadListener.hashCode(), iDownloadListener, iwVar, z, z2);
    }

    public void dq(int i, kx kxVar) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.dq(i, kxVar);
    }

    public void dq(int i, boolean z) {
        d(i, z);
        if (ox.uh() && !com.ss.android.socialbase.downloader.kk.iw.ox() && com.ss.android.socialbase.downloader.impls.ig.dq(true).mn()) {
            com.ss.android.socialbase.downloader.impls.ig.dq(true).ox(i, z);
        }
        if (ox.ox() || com.ss.android.socialbase.downloader.kk.iw.ox() || com.ss.android.socialbase.downloader.kk.iw.dq()) {
            return;
        }
        try {
            Intent intent = new Intent(ox.ob(), (Class<?>) DownloadHandleService.class);
            intent.setAction("com.ss.android.downloader.action.PROCESS_NOTIFY");
            intent.putExtra("extra_download_id", i);
            ox.ob().startService(intent);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void dq(ji jiVar) {
        if (jiVar == null || com.ss.android.socialbase.downloader.kk.iw.ox()) {
            return;
        }
        com.ss.android.socialbase.downloader.impls.ig.dq(true);
        synchronized (this.p) {
            try {
                if (!this.p.contains(jiVar)) {
                    this.p.add(jiVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(com.ss.android.socialbase.downloader.depend.no noVar) {
        ox.dq(noVar);
    }

    public void dq(final DownloadTask downloadTask) {
        final mp d2 = d(downloadTask);
        if (d2 == null) {
            if (downloadTask != null) {
                com.ss.android.socialbase.downloader.p.dq.dq(downloadTask.getMonitorDepend(), downloadTask.getDownloadInfo(), new BaseException(1003, "tryDownload but getDownloadHandler failed"), downloadTask.getDownloadInfo() != null ? downloadTask.getDownloadInfo().getStatus() : 0);
            }
        } else if (downloadTask.isNeedDelayForCacheSync()) {
            this.ox.postDelayed(new Runnable() { // from class: com.ss.android.socialbase.downloader.downloader.p.1
                @Override // java.lang.Runnable
                public void run() {
                    d2.dq(downloadTask);
                }
            }, 500L);
        } else {
            d2.dq(downloadTask);
        }
    }

    public void dq(List<String> list) {
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        if (dq2 != null) {
            dq2.dq(list);
        }
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        if (dq3 != null) {
            dq3.dq(list);
        }
    }

    public boolean dq(DownloadInfo downloadInfo) {
        mp ox;
        if (downloadInfo == null || (ox = ox(downloadInfo.getId())) == null) {
            return false;
        }
        return ox.dq(downloadInfo);
    }

    public void f(int i) {
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        if (dq2 != null) {
            dq2.no(i);
        }
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        if (dq3 != null) {
            dq3.no(i);
        }
    }

    public void fw(int i) {
        if (i == 0) {
            return;
        }
        d(i, true);
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        if (dq2 == null) {
            return;
        }
        dq2.startService();
    }

    public long ia(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return 0L;
        }
        return ox.s(i);
    }

    public kx ig(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return null;
        }
        return ox.fw(i);
    }

    public void iw(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.ox(i);
    }

    public boolean iw() {
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        if (dq2 != null) {
            return dq2.s();
        }
        return false;
    }

    public boolean jy(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return false;
        }
        return ox.ig(i);
    }

    public int kk(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return 0;
        }
        return ox.iw(i);
    }

    public void mn(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.p(i);
    }

    public op mp(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return null;
        }
        return ox.cd(i);
    }

    public DownloadInfo no(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return null;
        }
        return ox.ia(i);
    }

    public boolean o(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return false;
        }
        return ox.mn(i);
    }

    public mp ox(int i) {
        return com.ss.android.socialbase.downloader.impls.ig.dq(dq(i) == 1 && !com.ss.android.socialbase.downloader.kk.iw.ox());
    }

    public List<DownloadInfo> ox(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        List<DownloadInfo> ox = dq2 != null ? dq2.ox(str) : null;
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        return dq(ox, dq3 != null ? dq3.ox(str) : null, sparseArray);
    }

    public void ox() {
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        if (dq2 != null) {
            dq2.dq();
        }
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        if (dq3 != null) {
            dq3.dq();
        }
    }

    public void ox(int i, boolean z) {
        if (!com.ss.android.socialbase.downloader.kk.iw.dq()) {
            mp ox = ox(i);
            if (ox != null) {
                ox.dq(i, z);
            }
            com.ss.android.socialbase.downloader.impls.ig.dq(true).dq(2, i);
            return;
        }
        if (com.ss.android.socialbase.downloader.kk.dq.dq(8388608)) {
            mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
            if (dq2 != null) {
                dq2.dq(i, z);
            }
            mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
            if (dq3 != null) {
                dq3.dq(i, z);
                return;
            }
            return;
        }
        mp dq4 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        if (dq4 != null) {
            dq4.dq(i, z);
        }
        mp dq5 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        if (dq5 != null) {
            dq5.dq(i, z);
        }
    }

    public List<DownloadInfo> p(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        List<DownloadInfo> p = dq2 != null ? dq2.p(str) : null;
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        return dq(p, dq3 != null ? dq3.p(str) : null, sparseArray);
    }

    public void p(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.dq(i);
    }

    public void p(int i, boolean z) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.d(i, z);
    }

    public boolean p() {
        return ox.l();
    }

    public void q(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return;
        }
        ox.o(i);
    }

    public List<DownloadInfo> s() {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        List<DownloadInfo> p = dq2 != null ? dq2.p() : null;
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        return dq(p, dq3 != null ? dq3.p() : null, sparseArray);
    }

    public List<DownloadInfo> s(String str) {
        SparseArray<DownloadInfo> sparseArray = new SparseArray<>();
        mp dq2 = com.ss.android.socialbase.downloader.impls.ig.dq(false);
        List<DownloadInfo> s = dq2 != null ? dq2.s(str) : null;
        mp dq3 = com.ss.android.socialbase.downloader.impls.ig.dq(true);
        return dq(s, dq3 != null ? dq3.s(str) : null, sparseArray);
    }

    public boolean s(int i) {
        mp ox = ox(i);
        if (ox == null) {
            return false;
        }
        return ox.d(i);
    }
}
