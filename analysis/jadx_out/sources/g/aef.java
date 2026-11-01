package g;

/* loaded from: classes.dex */
public final class aef {

    /* renamed from: a, reason: collision with root package name */
    public final int f10088a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10089b;

    public aef(int i, int i2) {
        this.f10088a = i;
        this.f10089b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || aef.class != obj.getClass()) {
            return false;
        }
        aef aefVar = (aef) obj;
        return this.f10089b == aefVar.f10089b && this.f10088a == aefVar.f10088a;
    }

    public final int hashCode() {
        return (this.f10089b * 31) + this.f10088a;
    }

    public final String toString() {
        return "JUMP: " + ack.d(this.f10088a) + " -> " + ack.d(this.f10089b);
    }
}
