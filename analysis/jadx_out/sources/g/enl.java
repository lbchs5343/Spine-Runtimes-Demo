package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class enl implements gey {

    /* renamed from: a, reason: collision with root package name */
    public final gey f15863a;

    /* renamed from: c, reason: collision with root package name */
    public final String f15864c;

    public enl(String str) {
        this.f15863a = gey.o;
        this.f15864c = str;
    }

    public enl(String str, gey geyVar) {
        this.f15863a = geyVar;
        this.f15864c = str;
    }

    @Override // g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        throw new IllegalStateException("Control does not have functions");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof enl)) {
            return false;
        }
        enl enlVar = (enl) obj;
        return this.f15864c.equals(enlVar.f15864c) && this.f15863a.equals(enlVar.f15863a);
    }

    public final int hashCode() {
        return this.f15863a.hashCode() + (this.f15864c.hashCode() * 31);
    }

    @Override // g.gey
    public final gey zzd() {
        return new enl(this.f15864c, this.f15863a.zzd());
    }

    @Override // g.gey
    public final Boolean zzg() {
        throw new IllegalStateException("Control is not a boolean");
    }

    @Override // g.gey
    public final Double zzh() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // g.gey
    public final String zzi() {
        throw new IllegalStateException("Control is not a String");
    }

    @Override // g.gey
    public final Iterator zzl() {
        return null;
    }
}
