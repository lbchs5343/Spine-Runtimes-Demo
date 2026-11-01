package g;

/* loaded from: classes.dex */
public final class efh extends dnp implements ful {

    /* renamed from: f, reason: collision with root package name */
    public int f15437f;

    /* renamed from: g, reason: collision with root package name */
    public String f15438g;
    public String h;
    public String i;

    @Override // g.ful
    public final String getName() {
        return this.h;
    }

    @Override // g.ful
    public final int j() {
        return this.f15437f;
    }

    public final void k(bpt bptVar, int i, boolean z) {
        int i2 = bptVar.f11975a;
        if (i2 > 65535 || i > 32767) {
            this.f15437f = 0;
        } else {
            this.f15437f = ((i2 & 65535) << 16) | (z ? 0 : 32768) | (i & 32767);
        }
    }

    @Override // g.ful
    public final String l() {
        return this.f15438g;
    }

    @Override // g.ful
    public final void m() {
        if (this.f14484d == null) {
            new erd(this.i, 0).c(this);
        }
    }

    @Override // g.dnp
    public final String toString() {
        return this.f15438g + "->" + this.h + this.i;
    }
}
