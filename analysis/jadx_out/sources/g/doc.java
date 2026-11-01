package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class doc {

    /* renamed from: a, reason: collision with root package name */
    public final double f14508a;

    /* renamed from: b, reason: collision with root package name */
    public final int f14509b;

    /* renamed from: c, reason: collision with root package name */
    public final String f14510c;

    /* renamed from: d, reason: collision with root package name */
    public final double f14511d;

    /* renamed from: e, reason: collision with root package name */
    public final double f14512e;

    public doc(String str, double d2, double d3, double d4, int i) {
        this.f14510c = str;
        this.f14512e = d2;
        this.f14511d = d3;
        this.f14508a = d4;
        this.f14509b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof doc)) {
            return false;
        }
        doc docVar = (doc) obj;
        return ffb.w(this.f14510c, docVar.f14510c) && this.f14511d == docVar.f14511d && this.f14512e == docVar.f14512e && this.f14509b == docVar.f14509b && Double.compare(this.f14508a, docVar.f14508a) == 0;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f14510c, Double.valueOf(this.f14511d), Double.valueOf(this.f14512e), Double.valueOf(this.f14508a), Integer.valueOf(this.f14509b)});
    }

    public final String toString() {
        ffr ffrVar = new ffr(this);
        ffrVar.x(this.f14510c, abn.EXTRA_UA_APP_NAME);
        ffrVar.x(Double.valueOf(this.f14512e), "minBound");
        ffrVar.x(Double.valueOf(this.f14511d), "maxBound");
        ffrVar.x(Double.valueOf(this.f14508a), "percent");
        ffrVar.x(Integer.valueOf(this.f14509b), "count");
        return ffrVar.toString();
    }
}
