package g;

/* loaded from: classes.dex */
public final class ezf extends byh {
    public int bn;
    public boolean bo;
    public final /* synthetic */ Object bq;
    public final /* synthetic */ int br;

    public ezf(fxu fxuVar, int i) {
        this.br = 0;
        this.bq = fxuVar;
        this.bn = i;
        this.bo = false;
    }

    public ezf(wj wjVar) {
        this.br = 1;
        this.bq = wjVar;
        this.bo = false;
        this.bn = 0;
    }

    @Override // g.byh, g.gig
    public void bh() {
        switch (this.br) {
            case 0:
                this.bo = true;
                break;
        }
    }

    @Override // g.byh, g.gig
    public final void bk() {
        switch (this.br) {
            case 0:
                ((fxu) this.bq).h.setVisibility(0);
                break;
            default:
                if (!this.bo) {
                    this.bo = true;
                    gig gigVar = ((wj) this.bq).f20213a;
                    if (gigVar != null) {
                        gigVar.bk();
                        break;
                    }
                }
                break;
        }
    }

    @Override // g.gig
    public final void bp() {
        switch (this.br) {
            case 0:
                if (!this.bo) {
                    ((fxu) this.bq).h.setVisibility(this.bn);
                    break;
                }
                break;
            default:
                int i = this.bn + 1;
                this.bn = i;
                wj wjVar = (wj) this.bq;
                if (i == wjVar.f20215c.size()) {
                    gig gigVar = wjVar.f20213a;
                    if (gigVar != null) {
                        gigVar.bp();
                    }
                    this.bn = 0;
                    this.bo = false;
                    wjVar.f20214b = false;
                    break;
                }
                break;
        }
    }
}
