package g;

/* loaded from: classes3.dex */
public final class evi {

    /* renamed from: a, reason: collision with root package name */
    public final int f16227a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f16228b;

    public evi(int i, boolean z) {
        this.f16227a = i;
        this.f16228b = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || evi.class != obj.getClass()) {
            return false;
        }
        evi eviVar = (evi) obj;
        return this.f16227a == eviVar.f16227a && this.f16228b == eviVar.f16228b;
    }

    public final int hashCode() {
        return (this.f16227a * 31) + (this.f16228b ? 1 : 0);
    }
}
