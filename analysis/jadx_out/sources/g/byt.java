package g;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class byt implements gey, fb {

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f12467c = new HashMap();

    @Override // g.gey
    public gey _ag(String str, dpa dpaVar, ArrayList arrayList) {
        return "toString".equals(str) ? new bsa(toString()) : bfc.j(this, new bsa(str), dpaVar, arrayList);
    }

    @Override // g.fb
    public final void a(String str, gey geyVar) {
        HashMap hashMap = this.f12467c;
        if (geyVar == null) {
            hashMap.remove(str);
        } else {
            hashMap.put(str, geyVar);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof byt) {
            return this.f12467c.equals(((byt) obj).f12467c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12467c.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("{");
        HashMap hashMap = this.f12467c;
        if (!hashMap.isEmpty()) {
            for (String str : hashMap.keySet()) {
                sb.append(String.format("%s: %s,", str, hashMap.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // g.gey
    public final gey zzd() {
        byt bytVar = new byt();
        for (Map.Entry entry : this.f12467c.entrySet()) {
            boolean z = entry.getValue() instanceof fb;
            HashMap hashMap = bytVar.f12467c;
            if (z) {
                hashMap.put((String) entry.getKey(), (gey) entry.getValue());
            } else {
                hashMap.put((String) entry.getKey(), ((gey) entry.getValue()).zzd());
            }
        }
        return bytVar;
    }

    @Override // g.fb
    public final gey zzf(String str) {
        HashMap hashMap = this.f12467c;
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
        return "[object Object]";
    }

    @Override // g.gey
    public final Iterator zzl() {
        return new nw(this.f12467c.keySet().iterator(), 0);
    }

    @Override // g.fb
    public final boolean zzt(String str) {
        return this.f12467c.containsKey(str);
    }
}
