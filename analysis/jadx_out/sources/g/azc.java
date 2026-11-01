package g;

/* loaded from: classes.dex */
public class azc extends coh implements qz {
    public final w l;

    public azc(w wVar, boj bojVar) {
        super(bojVar, true);
        this.l = wVar;
    }

    @Override // g.qz
    public final qz f() {
        w wVar = this.l;
        if (awf.n(wVar)) {
            return wVar;
        }
        return null;
    }

    @Override // g.fyw
    public void j(Object obj) {
        this.l._z(cux.aa(obj));
    }

    @Override // g.fyw
    public void m(Object obj) {
        baf.ad(cux.aa(obj), awt.ab(this.l));
    }

    @Override // g.fyw
    public final boolean n() {
        return true;
    }
}
