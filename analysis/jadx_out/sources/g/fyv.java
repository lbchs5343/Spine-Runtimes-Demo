package g;

/* loaded from: classes3.dex */
public final class fyv implements abx {

    /* renamed from: c, reason: collision with root package name */
    public final dtc f17672c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f17673d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17674e = false;

    /* renamed from: f, reason: collision with root package name */
    public cec f17675f;

    public fyv(dtc dtcVar) {
        this.f17672c = dtcVar;
    }

    @Override // g.abx
    public final abx a(String str) {
        if (this.f17673d) {
            throw new fgn("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f17673d = true;
        this.f17672c.n(this.f17675f, str, this.f17674e);
        return this;
    }

    @Override // g.abx
    public final abx b(boolean z) {
        if (this.f17673d) {
            throw new fgn("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f17673d = true;
        this.f17672c.o(this.f17675f, z ? 1 : 0, this.f17674e);
        return this;
    }
}
