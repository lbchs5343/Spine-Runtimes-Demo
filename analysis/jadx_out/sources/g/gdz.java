package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class gdz implements gey {
    @Override // g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        throw new IllegalStateException("Undefined has no function ".concat(str));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof gdz;
    }

    @Override // g.gey
    public final gey zzd() {
        return gey.o;
    }

    @Override // g.gey
    public final Boolean zzg() {
        return Boolean.FALSE;
    }

    @Override // g.gey
    public final Double zzh() {
        return Double.valueOf(Double.NaN);
    }

    @Override // g.gey
    public final String zzi() {
        return "undefined";
    }

    @Override // g.gey
    public final Iterator zzl() {
        return null;
    }
}
