package g;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class fdk implements gey, fb {

    /* renamed from: g, reason: collision with root package name */
    public final String f16608g;
    public final HashMap h = new HashMap();

    public fdk(String str) {
        this.f16608g = str;
    }

    @Override // g.gey
    public final gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        return "toString".equals(str) ? new bsa(this.f16608g) : bfc.j(this, new bsa(str), dpaVar, arrayList);
    }

    @Override // g.fb
    public final void a(String str, gey geyVar) {
        HashMap hashMap = this.h;
        if (geyVar == null) {
            hashMap.remove(str);
        } else {
            hashMap.put(str, geyVar);
        }
    }

    public abstract gey e(dpa dpaVar, List list);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof fdk)) {
            return false;
        }
        fdk fdkVar = (fdk) obj;
        String str = this.f16608g;
        if (str != null) {
            return str.equals(fdkVar.f16608g);
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f16608g;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // g.gey
    public gey zzd() {
        return this;
    }

    @Override // g.fb
    public final gey zzf(String str) {
        HashMap hashMap = this.h;
        return hashMap.containsKey(str) ? (gey) hashMap.get(str) : gey.o;
    }

    @Override // g.gey
    public final Boolean zzg() {
        return Boolean.TRUE;
    }

    @Override // g.gey
    public final Double zzh() {
        return Double.valueOf(Double.NaN);
    }

    @Override // g.gey
    public final String zzi() {
        return this.f16608g;
    }

    @Override // g.gey
    public final Iterator zzl() {
        return new nw(this.h.keySet().iterator(), 0);
    }

    @Override // g.fb
    public final boolean zzt(String str) {
        return this.h.containsKey(str);
    }
}
