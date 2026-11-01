package g;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public final class azs extends alm {
    public final eeo i;

    public azs(eeo eeoVar) {
        super(4);
        this.i = eeoVar;
    }

    @Override // g.alm
    public final void c(Exception exc) {
        this.i.b(exc);
    }

    @Override // g.alm
    public final void d(fbd fbdVar) {
        try {
            j(fbdVar);
        } catch (DeadObjectException e2) {
            h(alm.b(e2));
            throw e2;
        } catch (RemoteException e3) {
            h(alm.b(e3));
        } catch (RuntimeException e4) {
            this.i.b(e4);
        }
    }

    @Override // g.alm
    public final boolean e(fbd fbdVar) {
        if (fbdVar.n.get(null) == null) {
            return false;
        }
        throw new ClassCastException();
    }

    @Override // g.alm
    public final /* bridge */ /* synthetic */ void f(clx clxVar, boolean z) {
    }

    @Override // g.alm
    public final cqg[] g(fbd fbdVar) {
        if (fbdVar.n.get(null) == null) {
            return null;
        }
        throw new ClassCastException();
    }

    @Override // g.alm
    public final void h(Status status) {
        this.i.b(new dmw(status));
    }

    public final void j(fbd fbdVar) {
        if (fbdVar.n.remove(null) != null) {
            throw new ClassCastException();
        }
        this.i.c(Boolean.FALSE);
    }
}
