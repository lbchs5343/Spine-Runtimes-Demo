package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class bbk implements gey {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f11225a;

    public bbk(Boolean bool) {
        this.f11225a = bool == null ? false : bool.booleanValue();
    }

    @Override // g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        boolean equals = "toString".equals(str);
        boolean z = this.f11225a;
        if (equals) {
            return new bsa(Boolean.toString(z));
        }
        throw new IllegalArgumentException(Boolean.toString(z) + "." + str + " is not a function.");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof bbk) && this.f11225a == ((bbk) obj).f11225a;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f11225a).hashCode();
    }

    public final String toString() {
        return String.valueOf(this.f11225a);
    }

    @Override // g.gey
    public final gey zzd() {
        return new bbk(Boolean.valueOf(this.f11225a));
    }

    @Override // g.gey
    public final Boolean zzg() {
        return Boolean.valueOf(this.f11225a);
    }

    @Override // g.gey
    public final Double zzh() {
        return Double.valueOf(true != this.f11225a ? 0.0d : 1.0d);
    }

    @Override // g.gey
    public final String zzi() {
        return Boolean.toString(this.f11225a);
    }

    @Override // g.gey
    public final Iterator zzl() {
        return null;
    }
}
