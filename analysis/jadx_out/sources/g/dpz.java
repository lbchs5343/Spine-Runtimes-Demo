package g;

import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class dpz {

    /* renamed from: a, reason: collision with root package name */
    public final String f14619a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f14620b;

    public dpz(ArrayList arrayList, String str) {
        if (str == null) {
            throw new NullPointerException("Null userAgent");
        }
        this.f14619a = str;
        this.f14620b = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dpz)) {
            return false;
        }
        dpz dpzVar = (dpz) obj;
        return this.f14619a.equals(dpzVar.f14619a) && this.f14620b.equals(dpzVar.f14620b);
    }

    public final int hashCode() {
        return ((this.f14619a.hashCode() ^ 1000003) * 1000003) ^ this.f14620b.hashCode();
    }

    public final String toString() {
        return "HeartBeatResult{userAgent=" + this.f14619a + ", usedDates=" + this.f14620b + "}";
    }
}
