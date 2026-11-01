package g;

/* loaded from: classes3.dex */
public abstract class dtx implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public final fsu f14802c;

    /* renamed from: d, reason: collision with root package name */
    public fsu f14803d;

    public dtx(fsu fsuVar) {
        this.f14802c = fsuVar;
        if (fsuVar.v()) {
            throw new IllegalArgumentException("Default instance must be immutable.");
        }
        this.f14803d = (fsu) fsuVar.i(4);
    }

    public final Object clone() {
        dtx dtxVar = (dtx) this.f14802c.i(5);
        dtxVar.f14803d = e();
        return dtxVar;
    }

    public final fsu e() {
        if (!this.f14803d.v()) {
            return this.f14803d;
        }
        fsu fsuVar = this.f14803d;
        fsuVar.getClass();
        fjo.f16893a.d(fsuVar.getClass()).aa(fsuVar);
        fsuVar.w();
        return this.f14803d;
    }

    public final void f() {
        if (this.f14803d.v()) {
            return;
        }
        fsu fsuVar = (fsu) this.f14802c.i(4);
        fjo.f16893a.d(fsuVar.getClass()).al(fsuVar, this.f14803d);
        this.f14803d = fsuVar;
    }

    public final fsu g() {
        fsu e2 = e();
        e2.getClass();
        if (fsu.r(e2, true)) {
            return e2;
        }
        throw new egc();
    }
}
