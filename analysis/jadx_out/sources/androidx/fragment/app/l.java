package androidx.fragment.app;

import g.bli;
import g.blj;
import g.wg;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class l extends blj {

    /* renamed from: a, reason: collision with root package name */
    public static final bli f194a = new bli(2);

    /* renamed from: g, reason: collision with root package name */
    public final boolean f200g;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f196c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f197d = new HashMap();

    /* renamed from: e, reason: collision with root package name */
    public final HashMap f198e = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public boolean f195b = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f199f = false;

    public l(boolean z) {
        this.f200g = z;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && l.class == obj.getClass()) {
            l lVar = (l) obj;
            if (this.f196c.equals(lVar.f196c) && this.f197d.equals(lVar.f197d) && this.f198e.equals(lVar.f198e)) {
                return true;
            }
        }
        return false;
    }

    public final void h(String str) {
        HashMap hashMap = this.f197d;
        l lVar = (l) hashMap.get(str);
        if (lVar != null) {
            lVar.j();
            hashMap.remove(str);
        }
        HashMap hashMap2 = this.f198e;
        wg wgVar = (wg) hashMap2.get(str);
        if (wgVar != null) {
            wgVar.b();
            hashMap2.remove(str);
        }
    }

    public final int hashCode() {
        return this.f198e.hashCode() + ((this.f197d.hashCode() + (this.f196c.hashCode() * 31)) * 31);
    }

    public final void i(Fragment fragment) {
        if (this.f199f || this.f196c.remove(fragment.mWho) == null || !v.ao(2)) {
            return;
        }
        fragment.toString();
    }

    @Override // g.blj
    public final void j() {
        if (v.ao(3)) {
            toString();
        }
        this.f195b = true;
    }

    public final void k(Fragment fragment) {
        if (this.f199f) {
            return;
        }
        String str = fragment.mWho;
        HashMap hashMap = this.f196c;
        if (hashMap.containsKey(str)) {
            return;
        }
        hashMap.put(fragment.mWho, fragment);
        if (v.ao(2)) {
            fragment.toString();
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("FragmentManagerViewModel{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} Fragments (");
        Iterator it = this.f196c.values().iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            if (it.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") Child Non Config (");
        Iterator it2 = this.f197d.keySet().iterator();
        while (it2.hasNext()) {
            sb.append((String) it2.next());
            if (it2.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(") ViewModelStores (");
        Iterator it3 = this.f198e.keySet().iterator();
        while (it3.hasNext()) {
            sb.append((String) it3.next());
            if (it3.hasNext()) {
                sb.append(", ");
            }
        }
        sb.append(')');
        return sb.toString();
    }
}
