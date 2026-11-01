package g;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class dik implements eue {

    /* renamed from: a, reason: collision with root package name */
    public static final dik f14227a = new dik(Collections.EMPTY_SET);

    /* renamed from: b, reason: collision with root package name */
    public final Set f14228b;

    public dik(Set set) {
        this.f14228b = set;
    }

    @Override // g.eue
    public final String c() {
        return toString();
    }

    @Override // g.eue
    public final /* bridge */ /* synthetic */ fky d() {
        return acq.z;
    }

    @Override // g.eue
    public final /* synthetic */ boolean e() {
        return false;
    }

    public final String toString() {
        if (this == f14227a) {
            return "TYPE_VARS: EMPTY";
        }
        return "TYPE_VARS: " + this.f14228b;
    }
}
