package g;

/* loaded from: classes3.dex */
public abstract class bkw extends bgf {
    public boolean am;

    public bkw(cyg cygVar) {
        super(cygVar);
        ((cyg) this.z).s++;
    }

    public final void an() {
        if (!this.am) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void ao() {
        if (this.am) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (n()) {
            return;
        }
        ((cyg) this.z).aq();
        this.am = true;
    }

    public abstract boolean n();
}
