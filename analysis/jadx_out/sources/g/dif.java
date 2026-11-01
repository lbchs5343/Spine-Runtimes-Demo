package g;

import android.os.Build;
import android.view.View;
import j$.util.Objects;

/* loaded from: classes.dex */
public class dif {
    public static final anp l;
    public final anp m;

    static {
        int i = Build.VERSION.SDK_INT;
        l = (i >= 34 ? new bru() : i >= 31 ? new ghh() : i >= 30 ? new yd() : i >= 29 ? new bbb() : new gjd()).g().f10526b.k().f10526b.d().f10526b.e();
    }

    public dif(anp anpVar) {
        this.m = anpVar;
    }

    public oi b() {
        return oi.f19757a;
    }

    public boolean c() {
        return false;
    }

    public anp d() {
        return this.m;
    }

    public anp e() {
        return this.m;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof dif)) {
            return false;
        }
        dif difVar = (dif) obj;
        return o() == difVar.o() && c() == difVar.c() && Objects.equals(u(), difVar.u()) && Objects.equals(b(), difVar.b()) && Objects.equals(j(), difVar.j());
    }

    public void f(oi oiVar) {
    }

    public boolean h(int i) {
        return true;
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(o()), Boolean.valueOf(c()), u(), b(), j());
    }

    public oi i(int i) {
        return oi.f19757a;
    }

    public fve j() {
        return null;
    }

    public anp k() {
        return this.m;
    }

    public oi n() {
        return u();
    }

    public boolean o() {
        return false;
    }

    public void p(View view) {
    }

    public anp q(int i, int i2, int i3, int i4) {
        return l;
    }

    public void r(int i) {
    }

    public void s(oi[] oiVarArr) {
    }

    public oi t() {
        return u();
    }

    public oi u() {
        return oi.f19757a;
    }

    public void v(anp anpVar) {
    }

    public oi w() {
        return u();
    }
}
