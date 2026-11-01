package com.ss.android.socialbase.downloader.impls;

import android.app.Notification;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.er;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.exception.BaseException;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.List;

/* loaded from: classes.dex */
public class f implements com.ss.android.socialbase.downloader.downloader.mp {

    /* renamed from: d, reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.o f9393d;
    private final dq dq;
    private final com.ss.android.socialbase.downloader.downloader.jy ox;
    private final boolean p;

    public f() {
        this(false);
    }

    public f(boolean z) {
        this.dq = com.ss.android.socialbase.downloader.downloader.ox.n();
        this.f9393d = com.ss.android.socialbase.downloader.downloader.ox.e();
        if (z) {
            this.ox = com.ss.android.socialbase.downloader.downloader.ox.h();
        } else {
            this.ox = com.ss.android.socialbase.downloader.downloader.ox.kx();
        }
        this.p = com.ss.android.socialbase.downloader.mn.dq.ox().d("service_alive", false);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public op cd(int i) {
        dq dqVar = this.dq;
        op ia = dqVar != null ? dqVar.ia(i) : null;
        return ia == null ? com.ss.android.socialbase.downloader.downloader.ox.wn() : ia;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public DownloadInfo d(String str, String str2) {
        return ia(com.ss.android.socialbase.downloader.downloader.ox.dq(str, str2));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> d(String str) {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f9393d;
        if (oVar != null) {
            return oVar.d(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(i, i2, iDownloadListener, iwVar, z);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        this.f9393d.d(i, list);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(int i, boolean z) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d(i, z);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(DownloadInfo downloadInfo) {
        this.f9393d.d(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(DownloadTask downloadTask) {
        com.ss.android.socialbase.downloader.downloader.jy jyVar = this.ox;
        if (jyVar != null) {
            jyVar.ox(downloadTask);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(List<String> list) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d(list);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean d() {
        com.ss.android.socialbase.downloader.downloader.jy jyVar = this.ox;
        if (jyVar != null) {
            return jyVar.d();
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean d(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.q(i);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public int dq(String str, String str2) {
        return com.ss.android.socialbase.downloader.downloader.ox.dq(str, str2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> dq(String str) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.dq(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq() {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.s(i);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2) {
        if (com.ss.android.socialbase.downloader.downloader.ox.s() != null) {
            for (er erVar : com.ss.android.socialbase.downloader.downloader.ox.s()) {
                if (erVar != null) {
                    erVar.dq(i2, i);
                }
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, int i3, int i4) {
        this.f9393d.dq(i, i2, i3, i4);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, int i3, long j) {
        this.f9393d.dq(i, i2, i3, j);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, long j) {
        this.f9393d.dq(i, i2, j);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d(i, i2, iDownloadListener, iwVar, z);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z, boolean z2) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(i, i2, iDownloadListener, iwVar, z, z2);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, long j) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.d(i, j);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, Notification notification) {
        com.ss.android.socialbase.downloader.downloader.jy jyVar = this.ox;
        if (jyVar != null) {
            jyVar.dq(i, notification);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, kx kxVar) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(i, kxVar);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        this.f9393d.dq(i, list);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, boolean z) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(i, z);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(er erVar) {
        com.ss.android.socialbase.downloader.downloader.ox.dq(erVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(DownloadTask downloadTask) {
        com.ss.android.socialbase.downloader.downloader.jy jyVar = this.ox;
        if (jyVar != null) {
            jyVar.d(downloadTask);
        } else if (downloadTask != null) {
            com.ss.android.socialbase.downloader.p.dq.dq(downloadTask.getMonitorDepend(), downloadTask.getDownloadInfo(), new BaseException(1003, "downloadServiceHandler is null"), downloadTask.getDownloadInfo() != null ? downloadTask.getDownloadInfo().getStatus() : 0);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(com.ss.android.socialbase.downloader.model.d dVar) {
        this.f9393d.dq(dVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(List<String> list) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.dq(list);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(boolean z, boolean z2) {
        com.ss.android.socialbase.downloader.downloader.jy jyVar = this.ox;
        if (jyVar != null) {
            jyVar.dq(z2);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean dq(DownloadInfo downloadInfo) {
        if (downloadInfo == null) {
            return false;
        }
        boolean dq = com.ss.android.socialbase.downloader.kk.iw.dq(downloadInfo.getStatus(), downloadInfo.getSavePath(), downloadInfo.getName());
        if (dq) {
            if (com.ss.android.socialbase.downloader.kk.dq.dq(33554432)) {
                d(downloadInfo.getId(), true);
                return dq;
            }
            p(downloadInfo.getId(), true);
        }
        return dq;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean f(int i) {
        return this.f9393d.iw(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public kx fw(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.kk(i);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public IDownloadFileUriProvider gh(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.o(i);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public DownloadInfo ia(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.p(i);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean ig(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.no(i);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public int iw(int i) {
        DownloadInfo p;
        dq dqVar = this.dq;
        if (dqVar == null || (p = dqVar.p(i)) == null) {
            return 0;
        }
        return p.getStatus();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void iw() {
        this.f9393d.ox();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void jy(int i) {
        this.f9393d.p(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<com.ss.android.socialbase.downloader.model.d> kk(int i) {
        return this.f9393d.ox(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean mn() {
        com.ss.android.socialbase.downloader.downloader.jy jyVar;
        return this.p && (jyVar = this.ox) != null && jyVar.dq();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean mn(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.dq(i);
        }
        return false;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public int mp(int i) {
        return com.ss.android.socialbase.downloader.downloader.p.dq().dq(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void no(int i) {
        com.ss.android.socialbase.downloader.ox.dq.dq(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void o(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.mp(i);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> ox(String str) {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f9393d;
        if (oVar != null) {
            return oVar.ox(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void ox(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.iw(i);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void ox(int i, boolean z) {
        com.ss.android.socialbase.downloader.downloader.p.dq().dq(i, z);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean ox() {
        return com.ss.android.socialbase.downloader.downloader.ox.l();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean ox(DownloadInfo downloadInfo) {
        return this.f9393d.dq(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> p() {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f9393d;
        if (oVar != null) {
            return oVar.d();
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> p(String str) {
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f9393d;
        if (oVar != null) {
            return oVar.p(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void p(int i) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.mn(i);
        }
    }

    public void p(int i, boolean z) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            dqVar.ox(i, z);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean q(int i) {
        return this.f9393d.s(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public long s(int i) {
        DownloadInfo d2;
        com.ss.android.socialbase.downloader.downloader.o oVar = this.f9393d;
        if (oVar == null || (d2 = oVar.d(i)) == null) {
            return 0L;
        }
        int chunkCount = d2.getChunkCount();
        if (chunkCount <= 1) {
            return d2.getCurBytes();
        }
        List<com.ss.android.socialbase.downloader.model.d> ox = this.f9393d.ox(i);
        if (ox == null || ox.size() != chunkCount) {
            return 0L;
        }
        return com.ss.android.socialbase.downloader.kk.iw.d(ox);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> s(String str) {
        dq dqVar = this.dq;
        if (dqVar != null) {
            return dqVar.d(str);
        }
        return null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean s() {
        return this.f9393d.p();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void startService() {
    }
}
