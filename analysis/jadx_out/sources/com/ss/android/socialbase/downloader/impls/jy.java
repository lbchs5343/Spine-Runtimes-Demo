package com.ss.android.socialbase.downloader.impls;

import android.app.Notification;
import android.os.IBinder;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.IDownloadFileUriProvider;
import com.ss.android.socialbase.downloader.depend.IDownloadListener;
import com.ss.android.socialbase.downloader.depend.er;
import com.ss.android.socialbase.downloader.depend.kx;
import com.ss.android.socialbase.downloader.depend.op;
import com.ss.android.socialbase.downloader.downloader.Downloader;
import com.ss.android.socialbase.downloader.downloader.IndependentProcessDownloadService;
import com.ss.android.socialbase.downloader.downloader.kk;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import com.ss.android.socialbase.downloader.model.DownloadTask;
import java.util.List;

/* loaded from: classes.dex */
public class jy implements com.ss.android.socialbase.downloader.downloader.mp, com.ss.android.socialbase.downloader.downloader.q {
    private static final String dq = "jy";

    /* renamed from: d, reason: collision with root package name */
    private volatile com.ss.android.socialbase.downloader.downloader.kk f9396d;
    private com.ss.android.socialbase.downloader.downloader.jy<IndependentProcessDownloadService> ox;
    private com.ss.android.socialbase.downloader.downloader.mp p = new f();

    public jy() {
        com.ss.android.socialbase.downloader.downloader.jy<IndependentProcessDownloadService> h = com.ss.android.socialbase.downloader.downloader.ox.h();
        this.ox = h;
        h.dq(this);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public op cd(int i) {
        if (this.f9396d == null) {
            return null;
        }
        try {
            return com.ss.android.socialbase.downloader.kk.mn.dq(this.f9396d.cd(i));
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public DownloadInfo d(String str, String str2) {
        return ia(dq(str, str2));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> d(String str) {
        if (this.f9396d == null) {
            return this.p.d(str);
        }
        try {
            return this.f9396d.d(str);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.dq(i, i2, com.ss.android.socialbase.downloader.kk.mn.dq(iDownloadListener, iwVar != com.ss.android.socialbase.downloader.constants.iw.SUB), iwVar.ordinal(), z);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        if (this.f9396d == null) {
            this.p.d(i, list);
            return;
        }
        try {
            this.f9396d.dq(i, list);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(int i, boolean z) {
        if (this.f9396d == null) {
            this.p.d(i, z);
            return;
        }
        try {
            this.f9396d.d(i, z);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(DownloadInfo downloadInfo) {
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(DownloadTask downloadTask) {
        com.ss.android.socialbase.downloader.downloader.jy<IndependentProcessDownloadService> jyVar;
        if (downloadTask == null || (jyVar = this.ox) == null) {
            return;
        }
        jyVar.ox(downloadTask);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void d(List<String> list) {
        if (this.f9396d == null) {
            this.p.d(list);
            return;
        }
        try {
            this.f9396d.d(list);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean d() {
        if (this.f9396d == null) {
            com.ss.android.socialbase.downloader.ox.dq.p(dq, "isServiceForeground, aidlService is null");
            return false;
        }
        com.ss.android.socialbase.downloader.ox.dq.ox(dq, "aidlService.isServiceForeground");
        try {
            return this.f9396d.iw();
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean d(int i) {
        if (this.f9396d == null) {
            return false;
        }
        try {
            return this.f9396d.d(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public int dq(String str, String str2) {
        return com.ss.android.socialbase.downloader.downloader.ox.dq(str, str2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> dq(String str) {
        if (this.f9396d == null) {
            return this.p.dq(str);
        }
        try {
            return this.f9396d.dq(str);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq() {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.dq();
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.dq(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2) {
        if (this.f9396d != null) {
            try {
                this.f9396d.dq(i, i2);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, int i3, int i4) {
        if (this.f9396d == null) {
            this.p.dq(i, i2, i3, i4);
            return;
        }
        try {
            this.f9396d.dq(i, i2, i3, i4);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, int i3, long j) {
        if (this.f9396d == null) {
            this.p.dq(i, i2, i3, j);
            return;
        }
        try {
            this.f9396d.dq(i, i2, i3, j);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, long j) {
        if (this.f9396d == null) {
            this.p.dq(i, i2, j);
            return;
        }
        try {
            this.f9396d.dq(i, i2, j);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.d(i, i2, com.ss.android.socialbase.downloader.kk.mn.dq(iDownloadListener, iwVar != com.ss.android.socialbase.downloader.constants.iw.SUB), iwVar.ordinal(), z);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, int i2, IDownloadListener iDownloadListener, com.ss.android.socialbase.downloader.constants.iw iwVar, boolean z, boolean z2) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.dq(i, i2, com.ss.android.socialbase.downloader.kk.mn.dq(iDownloadListener, iwVar != com.ss.android.socialbase.downloader.constants.iw.SUB), iwVar.ordinal(), z, z2);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, long j) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.dq(i, j);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, Notification notification) {
        if (this.f9396d == null) {
            com.ss.android.socialbase.downloader.ox.dq.p(dq, "startForeground, aidlService is null");
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.ox(dq, "aidlService.startForeground, id = ".concat(String.valueOf(i)));
        try {
            this.f9396d.dq(i, notification);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, kx kxVar) {
        if (this.f9396d != null) {
            try {
                this.f9396d.dq(i, com.ss.android.socialbase.downloader.kk.mn.dq(kxVar));
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.d(i, list);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(int i, boolean z) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.dq(i, z);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.q
    public void dq(IBinder iBinder) {
        this.f9396d = kk.dq.dq(iBinder);
        if (com.ss.android.socialbase.downloader.kk.iw.dq()) {
            dq(new er() { // from class: com.ss.android.socialbase.downloader.impls.jy.1
                @Override // com.ss.android.socialbase.downloader.depend.er
                public void dq(int i, int i2) {
                    if (i2 != 1) {
                        if (i2 == 2) {
                            Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).cancel(i);
                        }
                    } else {
                        Downloader.getInstance(com.ss.android.socialbase.downloader.downloader.ox.ob()).pause(i);
                        List<com.ss.android.socialbase.downloader.model.d> kk = ig.dq(false).kk(i);
                        if (kk != null) {
                            ig.dq(true).dq(i, com.ss.android.socialbase.downloader.kk.iw.dq(kk));
                        }
                    }
                }
            });
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(er erVar) {
        if (this.f9396d != null) {
            try {
                this.f9396d.dq(com.ss.android.socialbase.downloader.kk.mn.dq(erVar));
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(DownloadTask downloadTask) {
        com.ss.android.socialbase.downloader.downloader.jy<IndependentProcessDownloadService> jyVar;
        if (downloadTask == null || (jyVar = this.ox) == null) {
            return;
        }
        jyVar.d(downloadTask);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(com.ss.android.socialbase.downloader.model.d dVar) {
        if (this.f9396d == null) {
            this.p.dq(dVar);
            return;
        }
        try {
            this.f9396d.dq(dVar);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(List<String> list) {
        if (this.f9396d == null) {
            this.p.dq(list);
            return;
        }
        try {
            this.f9396d.dq(list);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void dq(boolean z, boolean z2) {
        if (this.f9396d == null) {
            com.ss.android.socialbase.downloader.ox.dq.p(dq, "stopForeground, aidlService is null");
            return;
        }
        com.ss.android.socialbase.downloader.ox.dq.ox(dq, "aidlService.stopForeground");
        try {
            this.f9396d.dq(z2);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean dq(DownloadInfo downloadInfo) {
        if (this.f9396d == null) {
            return this.p.dq(downloadInfo);
        }
        try {
            this.f9396d.dq(downloadInfo);
            return false;
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean f(int i) {
        if (this.f9396d == null) {
            return this.p.f(i);
        }
        try {
            return this.f9396d.f(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public kx fw(int i) {
        if (this.f9396d == null) {
            return null;
        }
        try {
            return com.ss.android.socialbase.downloader.kk.mn.dq(this.f9396d.fw(i));
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public IDownloadFileUriProvider gh(int i) {
        if (this.f9396d == null) {
            return null;
        }
        try {
            return com.ss.android.socialbase.downloader.kk.mn.dq(this.f9396d.gh(i));
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public DownloadInfo ia(int i) {
        if (this.f9396d == null) {
            return this.p.ia(i);
        }
        try {
            return this.f9396d.ia(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.q
    public void ia() {
        this.f9396d = null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean ig(int i) {
        if (this.f9396d == null) {
            return false;
        }
        try {
            return this.f9396d.no(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public int iw(int i) {
        if (this.f9396d == null) {
            return 0;
        }
        try {
            return this.f9396d.iw(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return 0;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void iw() {
        if (this.f9396d == null) {
            this.p.iw();
            return;
        }
        try {
            this.f9396d.s();
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void jy(int i) {
        if (this.f9396d == null) {
            this.p.jy(i);
            return;
        }
        try {
            this.f9396d.jy(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<com.ss.android.socialbase.downloader.model.d> kk(int i) {
        if (this.f9396d == null) {
            return this.p.kk(i);
        }
        try {
            return this.f9396d.kk(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean mn() {
        return this.f9396d != null;
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean mn(int i) {
        if (this.f9396d == null) {
            return false;
        }
        try {
            return this.f9396d.mn(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public int mp(int i) {
        if (this.f9396d == null) {
            return com.ss.android.socialbase.downloader.downloader.p.dq().d(i);
        }
        try {
            return this.f9396d.mp(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void no(int i) {
        com.ss.android.socialbase.downloader.downloader.jy<IndependentProcessDownloadService> jyVar = this.ox;
        if (jyVar != null) {
            jyVar.dq(i);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void o(int i) {
        if (this.f9396d == null) {
            this.p.o(i);
            return;
        }
        try {
            this.f9396d.o(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> ox(String str) {
        if (this.f9396d == null) {
            return this.p.ox(str);
        }
        try {
            return this.f9396d.ox(str);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void ox(int i) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.ox(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void ox(int i, boolean z) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.p(i, z);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean ox() {
        return com.ss.android.socialbase.downloader.downloader.ox.l();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean ox(DownloadInfo downloadInfo) {
        if (this.f9396d == null) {
            return this.p.ox(downloadInfo);
        }
        try {
            return this.f9396d.d(downloadInfo);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> p() {
        if (this.f9396d == null) {
            return this.p.p();
        }
        try {
            return this.f9396d.d();
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> p(String str) {
        if (this.f9396d == null) {
            return this.p.p(str);
        }
        try {
            return this.f9396d.s(str);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void p(int i) {
        if (this.f9396d == null) {
            return;
        }
        try {
            this.f9396d.p(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean q(int i) {
        if (this.f9396d == null) {
            return this.p.q(i);
        }
        try {
            return this.f9396d.q(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public long s(int i) {
        if (this.f9396d == null) {
            return 0L;
        }
        try {
            return this.f9396d.s(i);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return 0L;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public List<DownloadInfo> s(String str) {
        if (this.f9396d == null) {
            return null;
        }
        try {
            return this.f9396d.p(str);
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public boolean s() {
        if (this.f9396d == null) {
            return this.p.s();
        }
        try {
            return this.f9396d.p();
        } catch (RemoteException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.mp
    public void startService() {
        com.ss.android.socialbase.downloader.downloader.jy<IndependentProcessDownloadService> jyVar = this.ox;
        if (jyVar != null) {
            jyVar.startService();
        }
    }
}
