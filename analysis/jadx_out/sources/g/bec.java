package g;

/* loaded from: classes.dex */
public final class bec extends js {
    public final /* synthetic */ int h = 1;
    public fqk i;

    public /* synthetic */ bec() {
    }

    public bec(fqk fqkVar) {
        this.i = fqkVar;
    }

    @Override // g.js, g.to
    public void f(fqk fqkVar) {
        switch (this.h) {
            case 1:
                h hVar = (h) this.i;
                if (!hVar.f19091d) {
                    hVar.bg();
                    hVar.f19091d = true;
                    break;
                }
                break;
        }
    }

    @Override // g.to
    public final void g(fqk fqkVar) {
        switch (this.h) {
            case 0:
                this.i.x();
                fqkVar.k(this);
                break;
            default:
                h hVar = (h) this.i;
                int i = hVar.f19088a - 1;
                hVar.f19088a = i;
                if (i == 0) {
                    hVar.f19091d = false;
                    hVar.bm();
                }
                fqkVar.k(this);
                break;
        }
    }
}
