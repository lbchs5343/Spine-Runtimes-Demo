package g;

/* loaded from: classes3.dex */
public final class bsp extends cij {

    /* renamed from: a, reason: collision with root package name */
    public final bkh f12135a;

    /* renamed from: b, reason: collision with root package name */
    public final ewl f12136b;

    public bsp(bkh bkhVar, ewl ewlVar) {
        this.f12135a = bkhVar;
        this.f12136b = ewlVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof cij)) {
            return false;
        }
        cij cijVar = (cij) obj;
        bkh bkhVar = this.f12135a;
        if (bkhVar == null) {
            if (((bsp) cijVar).f12135a != null) {
                return false;
            }
        } else if (!bkhVar.equals(((bsp) cijVar).f12135a)) {
            return false;
        }
        return this.f12136b.equals(((bsp) cijVar).f12136b);
    }

    public final int hashCode() {
        bkh bkhVar = this.f12135a;
        return (((bkhVar == null ? 0 : bkhVar.hashCode()) ^ 1000003) * 1000003) ^ this.f12136b.hashCode();
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f12135a + ", androidClientInfo=" + this.f12136b + "}";
    }
}
