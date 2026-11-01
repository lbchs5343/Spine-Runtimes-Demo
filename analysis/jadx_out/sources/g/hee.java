package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class hee implements gey {
    @Override // g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        throw new IllegalStateException("null has no function ".concat(str));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof hee;
    }

    public final int hashCode() {
        return 1;
    }

    @Override // g.gey
    public final gey zzd() {
        return gey.i;
    }

    @Override // g.gey
    public final Boolean zzg() {
        return Boolean.FALSE;
    }

    @Override // g.gey
    public final Double zzh() {
        return Double.valueOf(0.0d);
    }

    @Override // g.gey
    public final String zzi() {
        return "null";
    }

    @Override // g.gey
    public final Iterator zzl() {
        return null;
    }
}
