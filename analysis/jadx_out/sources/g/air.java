package g;

import com.google.android.gms.internal.ads.zzgwu;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class air {

    /* renamed from: a, reason: collision with root package name */
    public final Class f10277a;

    /* renamed from: b, reason: collision with root package name */
    public final zzgwu f10278b;

    public /* synthetic */ air(zzgwu zzgwuVar, Class cls) {
        this.f10277a = cls;
        this.f10278b = zzgwuVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof air)) {
            return false;
        }
        air airVar = (air) obj;
        return airVar.f10277a.equals(this.f10277a) && airVar.f10278b.equals(this.f10278b);
    }

    public final int hashCode() {
        return Objects.hash(this.f10277a, this.f10278b);
    }

    public final String toString() {
        return awf.i(this.f10277a.getSimpleName(), ", object identifier: ", String.valueOf(this.f10278b));
    }
}
