package g;

/* loaded from: classes.dex */
public abstract class bvw implements pe {

    /* renamed from: d, reason: collision with root package name */
    public final cmh f12291d;

    public bvw(cmh cmhVar) {
        bff.p(cmhVar, "tracker");
        this.f12291d = cmhVar;
    }

    @Override // g.pe
    public final dqm a(bho bhoVar) {
        bff.p(bhoVar, "constraints");
        return new dqm(new acm(this, null), cgq.f12850a, -2, bqt.SUSPEND);
    }

    @Override // g.pe
    public final boolean c(fkj fkjVar) {
        return b(fkjVar) && f(this.f12291d.d());
    }

    public abstract int e();

    public abstract boolean f(Object obj);
}
