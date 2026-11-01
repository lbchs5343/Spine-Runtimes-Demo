package g;

/* loaded from: classes.dex */
public final class gih implements eoo {

    /* renamed from: a, reason: collision with root package name */
    public final int f18196a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18197b;

    /* renamed from: c, reason: collision with root package name */
    public avx f18198c;

    public gih(int i, int i2) {
        this.f18196a = i;
        this.f18197b = i2;
    }

    @Override // g.eoo
    public final int d() {
        return this.f18197b;
    }

    @Override // g.eoo
    public final int e() {
        return this.f18196a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gih)) {
            return false;
        }
        gih gihVar = (gih) obj;
        return this.f18196a == gihVar.f18196a && this.f18197b == gihVar.f18197b;
    }

    @Override // g.eoo
    public final avx f() {
        return this.f18198c;
    }

    public final int hashCode() {
        return (this.f18197b * 31) + this.f18196a;
    }

    public final String toString() {
        return "Try{" + String.format("0x%04x", Integer.valueOf(this.f18196a)) + " - " + String.format("0x%04x", Integer.valueOf(this.f18197b)) + ": " + this.f18198c + '}';
    }
}
