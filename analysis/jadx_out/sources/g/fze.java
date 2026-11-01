package g;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public abstract class fze {

    /* renamed from: e, reason: collision with root package name */
    public final gac f17693e;

    /* renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f17694f;

    /* renamed from: g, reason: collision with root package name */
    public final esn f17695g;

    public fze(gac gacVar) {
        bff.p(gacVar, "database");
        this.f17693e = gacVar;
        this.f17694f = new AtomicBoolean(false);
        this.f17695g = new esn(new ccn(this));
    }

    public abstract String d();

    public final void h(cap capVar) {
        bff.p(capVar, "statement");
        if (capVar == ((cap) this.f17695g.a())) {
            this.f17694f.set(false);
        }
    }

    public final cap i() {
        this.f17693e.aj();
        return this.f17694f.compareAndSet(false, true) ? (cap) this.f17695g.a() : j();
    }

    public final cap j() {
        String d2 = d();
        gac gacVar = this.f17693e;
        gacVar.getClass();
        gacVar.aj();
        gacVar.al();
        return gacVar.ao().i().f(d2);
    }
}
