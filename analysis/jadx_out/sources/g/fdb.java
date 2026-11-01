package g;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import java.util.Map;

/* loaded from: classes3.dex */
public final class fdb extends alm {
    public final ao i;
    public final cpq j;
    public final eeo k;

    public fdb(int i, cpq cpqVar, eeo eeoVar, ao aoVar) {
        super(i);
        this.k = eeoVar;
        this.j = cpqVar;
        this.i = aoVar;
        if (i == 2 && cpqVar.f13287e) {
            throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
        }
    }

    @Override // g.alm
    public final void c(Exception exc) {
        this.k.b(exc);
    }

    @Override // g.alm
    public final void d(fbd fbdVar) {
        eeo eeoVar = this.k;
        try {
            cpq cpqVar = this.j;
            ((asz) ((cpq) cpqVar.f13284b).f13283a).accept(fbdVar.l, eeoVar);
        } catch (DeadObjectException e2) {
            throw e2;
        } catch (RemoteException e3) {
            h(alm.b(e3));
        } catch (RuntimeException e4) {
            eeoVar.b(e4);
        }
    }

    @Override // g.alm
    public final boolean e(fbd fbdVar) {
        return this.j.f13287e;
    }

    @Override // g.alm
    public final void f(clx clxVar, boolean z) {
        Boolean valueOf = Boolean.valueOf(z);
        Map map = (Map) clxVar.f13101c;
        eeo eeoVar = this.k;
        map.put(eeoVar, valueOf);
        chw chwVar = eeoVar.f15402a;
        akj akjVar = new akj(18, clxVar, eeoVar, false);
        chwVar.getClass();
        chwVar.i.f(new err(fot.f17159a, akjVar));
        chwVar.n();
    }

    @Override // g.alm
    public final cqg[] g(fbd fbdVar) {
        return (cqg[]) this.j.f13283a;
    }

    @Override // g.alm
    public final void h(Status status) {
        this.i.getClass();
        this.k.b(status.hasResolution() ? new dsh(status) : new dmw(status));
    }
}
