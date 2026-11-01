package g;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class fud implements gey {

    /* renamed from: a, reason: collision with root package name */
    public final String f17427a;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f17428c;

    public fud(ArrayList arrayList, String str) {
        this.f17427a = str;
        ArrayList arrayList2 = new ArrayList();
        this.f17428c = arrayList2;
        arrayList2.addAll(arrayList);
    }

    @Override // g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fud)) {
            return false;
        }
        fud fudVar = (fud) obj;
        String str = this.f17427a;
        if (str == null ? fudVar.f17427a == null : str.equals(fudVar.f17427a)) {
            return this.f17428c.equals(fudVar.f17428c);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f17427a;
        return this.f17428c.hashCode() + ((str != null ? str.hashCode() : 0) * 31);
    }

    @Override // g.gey
    public final gey zzd() {
        return this;
    }

    @Override // g.gey
    public final Boolean zzg() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // g.gey
    public final Double zzh() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // g.gey
    public final String zzi() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    @Override // g.gey
    public final Iterator zzl() {
        return null;
    }
}
