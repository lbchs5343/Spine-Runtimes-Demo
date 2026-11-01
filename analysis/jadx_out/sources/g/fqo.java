package g;

/* loaded from: classes.dex */
public final class fqo extends atw {

    /* renamed from: a, reason: collision with root package name */
    public int f17250a;

    /* renamed from: c, reason: collision with root package name */
    public r f17251c;
    public int s;

    @Override // g.atw
    public final void b(brh brhVar, boolean z) {
        int i = this.f17250a;
        this.s = i;
        if (z) {
            if (i == 5) {
                this.s = 1;
            } else if (i == 6) {
                this.s = 0;
            }
        } else if (i == 5) {
            this.s = 0;
        } else if (i == 6) {
            this.s = 1;
        }
        if (brhVar instanceof r) {
            ((r) brhVar).f19886b = this.s;
        }
    }

    public boolean getAllowsGoneWidget() {
        return this.f17251c.f19885a;
    }

    public int getMargin() {
        return this.f17251c.f19887c;
    }

    public int getType() {
        return this.f17250a;
    }

    public void setAllowsGoneWidget(boolean z) {
        this.f17251c.f19885a = z;
    }

    public void setDpMargin(int i) {
        this.f17251c.f19887c = (int) ((i * getResources().getDisplayMetrics().density) + 0.5f);
    }

    public void setMargin(int i) {
        this.f17251c.f19887c = i;
    }

    public void setType(int i) {
        this.f17250a = i;
    }
}
