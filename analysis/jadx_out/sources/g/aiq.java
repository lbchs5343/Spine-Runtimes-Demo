package g;

/* loaded from: classes3.dex */
public abstract class aiq extends af {
    public boolean l;

    public aiq(bsz bszVar) {
        super(bszVar);
        this.f10133a.ad++;
    }

    public abstract void i();

    public final void m() {
        if (this.l) {
            throw new IllegalStateException("Can't initialize twice");
        }
        i();
        this.f10133a.t++;
        this.l = true;
    }

    public final void n() {
        if (!this.l) {
            throw new IllegalStateException("Not initialized");
        }
    }
}
