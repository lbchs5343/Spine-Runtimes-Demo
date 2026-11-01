package g;

/* loaded from: classes.dex */
public final class dwc implements eoo {

    /* renamed from: a, reason: collision with root package name */
    public final int f14917a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14918b;

    /* renamed from: c, reason: collision with root package name */
    public final avx f14919c;

    public dwc(int i, int i2, avx avxVar) {
        this.f14917a = i;
        this.f14918b = i2;
        this.f14919c = avxVar;
    }

    @Override // g.eoo
    public final int d() {
        return this.f14918b;
    }

    @Override // g.eoo
    public final int e() {
        return this.f14917a;
    }

    @Override // g.eoo
    public final avx f() {
        return this.f14919c;
    }

    public final String toString() {
        return "Try{" + String.format("0x%04x", Integer.valueOf(this.f14917a)) + " - " + String.format("0x%04x", Integer.valueOf(this.f14918b)) + ": " + this.f14919c + '}';
    }
}
