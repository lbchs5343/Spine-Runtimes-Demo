package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class ccg {

    /* renamed from: a, reason: collision with root package name */
    public final dzu f12628a;

    /* renamed from: b, reason: collision with root package name */
    public final cqg f12629b;

    public /* synthetic */ ccg(dzu dzuVar, cqg cqgVar) {
        this.f12628a = dzuVar;
        this.f12629b = cqgVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof ccg)) {
            ccg ccgVar = (ccg) obj;
            if (ffb.w(this.f12628a, ccgVar.f12628a) && ffb.w(this.f12629b, ccgVar.f12629b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f12628a, this.f12629b});
    }

    public final String toString() {
        ffr ffrVar = new ffr(this);
        ffrVar.x(this.f12628a, "key");
        ffrVar.x(this.f12629b, "feature");
        return ffrVar.toString();
    }
}
