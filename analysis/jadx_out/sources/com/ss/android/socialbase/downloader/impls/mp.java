package com.ss.android.socialbase.downloader.impls;

import android.app.Notification;
import android.os.RemoteException;
import com.ss.android.socialbase.downloader.depend.ce;
import com.ss.android.socialbase.downloader.depend.e;
import com.ss.android.socialbase.downloader.depend.n;
import com.ss.android.socialbase.downloader.downloader.kk;
import com.ss.android.socialbase.downloader.model.DownloadInfo;
import java.util.List;

/* loaded from: classes.dex */
public class mp extends kk.dq {
    private static final String dq = "mp";

    /* renamed from: d, reason: collision with root package name */
    private final com.ss.android.socialbase.downloader.downloader.mp f9399d = new f(true);

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public n cd(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return com.ss.android.socialbase.downloader.kk.mn.dq(mpVar.cd(i));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public DownloadInfo d(String str, String str2) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.d(str, str2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public List<DownloadInfo> d() throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.p();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public List<DownloadInfo> d(String str) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.d(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void d(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, i2, com.ss.android.socialbase.downloader.kk.mn.dq(kkVar), com.ss.android.socialbase.downloader.kk.iw.s(i3), z);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void d(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, list);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void d(int i, boolean z) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.d(i, z);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void d(List<String> list) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar != null) {
            mpVar.d(list);
        }
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean d(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.d(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean d(DownloadInfo downloadInfo) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.ox(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public int dq(String str, String str2) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return 0;
        }
        return mpVar.dq(str, str2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public List<DownloadInfo> dq(String str) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.dq(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq() throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, int i2) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, i2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, int i2, int i3, int i4) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, i2, i3, i4);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, int i2, int i3, long j) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, i2, i3, j);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, int i2, long j) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, i2, j);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.d(i, i2, com.ss.android.socialbase.downloader.kk.mn.dq(kkVar), com.ss.android.socialbase.downloader.kk.iw.s(i3), z);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, int i2, com.ss.android.socialbase.downloader.depend.kk kkVar, int i3, boolean z, boolean z2) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, i2, com.ss.android.socialbase.downloader.kk.mn.dq(kkVar), com.ss.android.socialbase.downloader.kk.iw.s(i3), z, z2);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, long j) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, j);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, Notification notification) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, notification);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, e eVar) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, com.ss.android.socialbase.downloader.kk.mn.dq(eVar));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, List<com.ss.android.socialbase.downloader.model.d> list) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.d(i, list);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(int i, boolean z) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(i, z);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(ce ceVar) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(com.ss.android.socialbase.downloader.kk.mn.dq(ceVar));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(com.ss.android.socialbase.downloader.model.d dVar) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(dVar);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(com.ss.android.socialbase.downloader.model.dq dqVar) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.d(com.ss.android.socialbase.downloader.kk.mn.dq(dqVar));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(List<String> list) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(list);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void dq(boolean z) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.dq(true, z);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean dq(DownloadInfo downloadInfo) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.dq(downloadInfo);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean f(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.f(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public e fw(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return com.ss.android.socialbase.downloader.kk.mn.dq(mpVar.fw(i));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public com.ss.android.socialbase.downloader.depend.mn gh(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return com.ss.android.socialbase.downloader.kk.mn.dq(mpVar.gh(i));
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public DownloadInfo ia(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.ia(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void ig(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.no(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public int iw(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return 0;
        }
        return mpVar.iw(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean iw() throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.d();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void jy(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.jy(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public List<com.ss.android.socialbase.downloader.model.d> kk(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.kk(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean mn(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.mn(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public int mp(int i) throws RemoteException {
        return com.ss.android.socialbase.downloader.downloader.p.dq().d(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean no(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.ig(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void o(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.o(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public List<DownloadInfo> ox(String str) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.ox(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void ox(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.ox(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void ox(int i, boolean z) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.d(i, z);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean ox() throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.ox();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public List<DownloadInfo> p(String str) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.s(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void p(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.p(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void p(int i, boolean z) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.p.dq().d(i, z);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean p() throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.s();
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public boolean q(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return false;
        }
        return mpVar.q(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public long s(int i) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return 0L;
        }
        return mpVar.s(i);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public List<DownloadInfo> s(String str) throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return null;
        }
        return mpVar.p(str);
    }

    @Override // com.ss.android.socialbase.downloader.downloader.kk
    public void s() throws RemoteException {
        com.ss.android.socialbase.downloader.downloader.mp mpVar = this.f9399d;
        if (mpVar == null) {
            return;
        }
        mpVar.iw();
    }
}
