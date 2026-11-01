package g;

import java.util.Arrays;

/* loaded from: classes3.dex */
public final class dzu {

    /* renamed from: a, reason: collision with root package name */
    public final String f15150a;

    /* renamed from: b, reason: collision with root package name */
    public final int f15151b;

    /* renamed from: c, reason: collision with root package name */
    public final akj f15152c;

    /* renamed from: d, reason: collision with root package name */
    public final ama f15153d;

    public dzu(akj akjVar, ama amaVar, String str) {
        this.f15152c = akjVar;
        this.f15153d = amaVar;
        this.f15150a = str;
        this.f15151b = Arrays.hashCode(new Object[]{akjVar, amaVar, str});
    }

    public final boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof dzu)) {
            return false;
        }
        dzu dzuVar = (dzu) obj;
        return ffb.w(this.f15152c, dzuVar.f15152c) && ffb.w(this.f15153d, dzuVar.f15153d) && ffb.w(this.f15150a, dzuVar.f15150a);
    }

    public final int hashCode() {
        return this.f15151b;
    }
}
