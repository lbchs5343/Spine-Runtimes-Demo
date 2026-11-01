package g;

/* loaded from: classes.dex */
public final class eph {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f15933a;

    public eph(boolean z) {
        this.f15933a = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eph)) {
            return false;
        }
        eph ephVar = (eph) obj;
        ephVar.getClass();
        return this.f15933a == ephVar.f15933a;
    }

    public final int hashCode() {
        return 1169068184 + (this.f15933a ? 1231 : 1237);
    }

    public final String toString() {
        return "GetTopicsRequest: adsSdkName=com.google.android.gms.ads, shouldRecordObservation=" + this.f15933a;
    }
}
