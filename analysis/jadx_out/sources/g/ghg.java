package g;

/* loaded from: classes3.dex */
public final class ghg {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18154a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f18155b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f18156c;

    /* renamed from: d, reason: collision with root package name */
    public ghg f18157d;

    /* renamed from: e, reason: collision with root package name */
    public int f18158e;

    /* renamed from: f, reason: collision with root package name */
    public int f18159f;

    /* renamed from: g, reason: collision with root package name */
    public ghg f18160g;

    public ghg() {
        this.f18156c = new byte[8192];
        this.f18155b = true;
        this.f18154a = false;
    }

    public ghg(byte[] bArr, int i, int i2, boolean z) {
        bff.p(bArr, "data");
        this.f18156c = bArr;
        this.f18158e = i;
        this.f18159f = i2;
        this.f18154a = z;
        this.f18155b = false;
    }

    public final void h(ghg ghgVar, int i) {
        bff.p(ghgVar, "sink");
        byte[] bArr = ghgVar.f18156c;
        if (!ghgVar.f18155b) {
            throw new IllegalStateException("only owner can write");
        }
        int i2 = ghgVar.f18159f;
        int i3 = i2 + i;
        if (i3 > 8192) {
            if (ghgVar.f18154a) {
                throw new IllegalArgumentException();
            }
            int i4 = ghgVar.f18158e;
            if (i3 - i4 > 8192) {
                throw new IllegalArgumentException();
            }
            fuv.m(bArr, 0, bArr, i4, i2);
            ghgVar.f18159f -= ghgVar.f18158e;
            ghgVar.f18158e = 0;
        }
        int i5 = ghgVar.f18159f;
        int i6 = this.f18158e;
        fuv.m(this.f18156c, i5, bArr, i6, i6 + i);
        ghgVar.f18159f += i;
        this.f18158e += i;
    }

    public final ghg i() {
        ghg ghgVar = this.f18157d;
        if (ghgVar == this) {
            ghgVar = null;
        }
        ghg ghgVar2 = this.f18160g;
        bff.d(ghgVar2);
        ghgVar2.f18157d = this.f18157d;
        ghg ghgVar3 = this.f18157d;
        bff.d(ghgVar3);
        ghgVar3.f18160g = this.f18160g;
        this.f18157d = null;
        this.f18160g = null;
        return ghgVar;
    }

    public final void j(ghg ghgVar) {
        bff.p(ghgVar, "segment");
        ghgVar.f18160g = this;
        ghgVar.f18157d = this.f18157d;
        ghg ghgVar2 = this.f18157d;
        bff.d(ghgVar2);
        ghgVar2.f18160g = ghgVar;
        this.f18157d = ghgVar;
    }

    public final ghg k() {
        this.f18154a = true;
        return new ghg(this.f18156c, this.f18158e, this.f18159f, true);
    }
}
