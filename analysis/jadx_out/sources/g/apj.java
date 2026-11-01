package g;

/* loaded from: classes.dex */
public final class apj extends dqc {

    /* renamed from: a, reason: collision with root package name */
    public final Object f10627a;

    public apj() {
        super(12);
        this.f10627a = new Object();
    }

    @Override // g.dqc
    public final Object b() {
        Object b2;
        synchronized (this.f10627a) {
            b2 = super.b();
        }
        return b2;
    }

    @Override // g.dqc
    public final boolean c(Object obj) {
        boolean c2;
        synchronized (this.f10627a) {
            c2 = super.c(obj);
        }
        return c2;
    }
}
