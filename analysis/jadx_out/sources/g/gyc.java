package g;

import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class gyc extends js {
    public boolean h = false;
    public final ViewGroup i;

    public gyc(ViewGroup viewGroup) {
        this.i = viewGroup;
    }

    @Override // g.js, g.to
    public final void a(fqk fqkVar) {
        egh.m(this.i, false);
        this.h = true;
    }

    @Override // g.js, g.to
    public final void b() {
        egh.m(this.i, false);
    }

    @Override // g.js, g.to
    public final void c() {
        egh.m(this.i, true);
    }

    @Override // g.to
    public final void g(fqk fqkVar) {
        if (!this.h) {
            egh.m(this.i, false);
        }
        fqkVar.k(this);
    }
}
