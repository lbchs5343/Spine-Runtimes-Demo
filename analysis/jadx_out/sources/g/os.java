package g;

/* loaded from: classes3.dex */
public abstract class os extends acn {

    /* renamed from: a, reason: collision with root package name */
    public boolean f19772a;

    public os(cyg cygVar) {
        super(cygVar);
        ((cyg) this.z).s++;
    }

    public abstract boolean b();

    public final void c() {
        if (this.f19772a) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (b()) {
            return;
        }
        ((cyg) this.z).aq();
        this.f19772a = true;
    }

    @Override // g.bgf
    public final void zza() {
        if (!this.f19772a) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
