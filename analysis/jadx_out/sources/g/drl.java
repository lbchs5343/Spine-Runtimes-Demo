package g;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;

/* loaded from: classes.dex */
public final class drl extends cpk implements fjt {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f14671a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f14672b;
    public final drl h;

    public drl(Handler handler, boolean z) {
        this.f14671a = handler;
        this.f14672b = z;
        this.h = z ? this : new drl(handler, true);
    }

    @Override // g.fjt
    public final void d(long j, gsn gsnVar) {
        gfh gfhVar = new gfh(gsnVar, 16, this);
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.f14671a.postDelayed(gfhVar, j)) {
            gsnVar.y(new ggn(this, gfhVar));
        } else {
            j(gsnVar.o, gfhVar);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof drl)) {
            return false;
        }
        drl drlVar = (drl) obj;
        return drlVar.f14671a == this.f14671a && drlVar.f14672b == this.f14672b;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f14671a) ^ (this.f14672b ? 1231 : 1237);
    }

    @Override // g.cpk
    public final void i(boj bojVar, Runnable runnable) {
        if (this.f14671a.post(runnable)) {
            return;
        }
        j(bojVar, runnable);
    }

    public final void j(boj bojVar, Runnable runnable) {
        kj.aa(bojVar, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        uj.f20096b.i(bojVar, runnable);
    }

    @Override // g.cpk
    public final String toString() {
        drl drlVar;
        String str;
        nt ntVar = uj.f20095a;
        drl drlVar2 = hcw.f19238a;
        if (this == drlVar2) {
            str = "Dispatchers.Main";
        } else {
            try {
                drlVar = drlVar2.h;
            } catch (UnsupportedOperationException unused) {
                drlVar = null;
            }
            str = this == drlVar ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String handler = this.f14671a.toString();
        return this.f14672b ? awf.c(handler, ".immediate") : handler;
    }

    @Override // g.cpk
    public final boolean w(boj bojVar) {
        return (this.f14672b && bff.n(Looper.myLooper(), this.f14671a.getLooper())) ? false : true;
    }
}
