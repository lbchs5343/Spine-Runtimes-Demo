package g;

/* loaded from: classes.dex */
public final class gqt implements bdu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f18595a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18596b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ fts f18597c;

    public gqt(fts ftsVar, int i, int i2) {
        this.f18597c = ftsVar;
        this.f18595a = i;
        this.f18596b = i2;
    }

    @Override // g.bdu
    public final void dq() {
        fts ftsVar = this.f18597c;
        cgf cgfVar = ftsVar.x;
        int i = this.f18595a;
        int i2 = this.f18596b;
        if (cgfVar == null) {
            ftsVar.al.add(new gqt(ftsVar, i, i2));
        } else {
            ftsVar.ad.q(i, i2 + 0.99f);
        }
    }
}
