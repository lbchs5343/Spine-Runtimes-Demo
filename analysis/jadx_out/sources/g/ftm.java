package g;

import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class ftm {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayDeque f17388a = new ArrayDeque();

    /* renamed from: b, reason: collision with root package name */
    public bnp f17389b = new bnp();

    static {
        dsr.k(ftm.class);
    }

    public final void c(fza fzaVar) {
        if (fzaVar != null) {
            this.f17389b.f11877a.add(fzaVar);
        }
    }

    public final void d() {
        this.f17389b = (bnp) this.f17388a.pop();
    }

    public final void e(bjk bjkVar) {
        bnp bnpVar = this.f17389b;
        ArrayDeque arrayDeque = this.f17388a;
        arrayDeque.push(bnpVar);
        if (arrayDeque.size() > 1000) {
            throw new blf("Regions stack size limit reached");
        }
        bnp bnpVar2 = this.f17389b;
        bnpVar2.getClass();
        this.f17389b = new bnp(bnpVar2, bjkVar);
    }

    public final String toString() {
        return "Region stack size: " + this.f17388a.size() + ", last: " + this.f17389b;
    }
}
