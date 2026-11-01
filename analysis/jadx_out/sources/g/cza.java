package g;

import android.os.RemoteException;

/* loaded from: classes3.dex */
public final class cza extends nl {

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ctl f13798f;

    /* renamed from: g, reason: collision with root package name */
    public final Object f13799g = new Object();
    public nl h;

    public cza(ctl ctlVar) {
        this.f13798f = ctlVar;
    }

    @Override // g.nl
    public final void a() {
        ctl ctlVar = this.f13798f;
        hl hlVar = (hl) ctlVar.f13468c;
        deq deqVar = (deq) ctlVar.k;
        cbz cbzVar = null;
        if (deqVar != null) {
            try {
                cbzVar = deqVar.zzl();
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
        hlVar.c(cbzVar);
        synchronized (this.f13799g) {
            try {
                nl nlVar = this.h;
                if (nlVar != null) {
                    nlVar.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.nl
    public final void b() {
        synchronized (this.f13799g) {
            try {
                nl nlVar = this.h;
                if (nlVar != null) {
                    nlVar.b();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.nl
    public final void c() {
        synchronized (this.f13799g) {
            try {
                nl nlVar = this.h;
                if (nlVar != null) {
                    nlVar.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.nl
    public final void d(bfi bfiVar) {
        ctl ctlVar = this.f13798f;
        hl hlVar = (hl) ctlVar.f13468c;
        deq deqVar = (deq) ctlVar.k;
        cbz cbzVar = null;
        if (deqVar != null) {
            try {
                cbzVar = deqVar.zzl();
            } catch (RemoteException e2) {
                agd.g("#007 Could not call remote method.", e2);
            }
        }
        hlVar.c(cbzVar);
        synchronized (this.f13799g) {
            try {
                nl nlVar = this.h;
                if (nlVar != null) {
                    nlVar.d(bfiVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.nl
    public final void e() {
        synchronized (this.f13799g) {
            try {
                nl nlVar = this.h;
                if (nlVar != null) {
                    nlVar.e();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // g.nl
    public final void onAdClicked() {
        synchronized (this.f13799g) {
            try {
                nl nlVar = this.h;
                if (nlVar != null) {
                    nlVar.onAdClicked();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
