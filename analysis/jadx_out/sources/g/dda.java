package g;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class dda implements Map {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13999a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f14000b;

    public dda(int i) {
        this.f13999a = i;
        switch (i) {
            case 1:
                this.f14000b = new HashMap();
                break;
            default:
                this.f14000b = new HashMap();
                break;
        }
    }

    public static dda c(dda ddaVar) {
        ddaVar.getClass();
        dda ddaVar2 = new dda(0);
        HashMap hashMap = ddaVar.f14000b;
        for (fza fzaVar : hashMap.keySet()) {
            ap apVar = (ap) hashMap.get(fzaVar);
            ap apVar2 = new ap(apVar.f10600a);
            apVar2.f10601b.retainAll(apVar.f10601b);
        }
        return ddaVar2;
    }

    public static void d(dda ddaVar, dda ddaVar2) {
        ddaVar.getClass();
        HashMap hashMap = ddaVar.f14000b;
        for (ap apVar : ddaVar2.f14000b.values()) {
            fza fzaVar = apVar.f10600a;
            HashSet hashSet = apVar.f10601b;
            fza fzaVar2 = apVar.f10600a;
            if (hashMap.containsKey(fzaVar)) {
                ap apVar2 = (ap) hashMap.get(fzaVar);
                apVar2.getClass();
                if (fzaVar2 == apVar2.f10600a) {
                    apVar2.f10601b.retainAll(hashSet);
                }
            } else {
                ap apVar3 = new ap(fzaVar2);
                apVar3.f10601b.retainAll(hashSet);
            }
        }
    }

    @Override // java.util.Map
    public final void clear() {
        switch (this.f13999a) {
            case 0:
                this.f14000b.clear();
                break;
            default:
                this.f14000b.clear();
                break;
        }
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        switch (this.f13999a) {
        }
        return this.f14000b.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        switch (this.f13999a) {
            case 0:
                if (!(obj instanceof fza)) {
                    return false;
                }
                return this.f14000b.containsKey((fza) obj);
            default:
                if (!(obj instanceof elt)) {
                    return false;
                }
                return this.f14000b.containsKey((elt) obj);
        }
    }

    public List e(aea aeaVar) {
        elt eltVar;
        HashMap hashMap = this.f14000b;
        Iterator it = hashMap.keySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                eltVar = null;
                break;
            }
            eltVar = (elt) it.next();
            if (!eltVar.g() && eltVar.e().equals(aeaVar)) {
                break;
            }
        }
        if (eltVar == null) {
            return null;
        }
        return (List) hashMap.get(eltVar);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        switch (this.f13999a) {
        }
        return this.f14000b.entrySet();
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        switch (this.f13999a) {
            case 0:
                return (ap) this.f14000b.get(obj);
            default:
                return (List) this.f14000b.get(obj);
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        switch (this.f13999a) {
        }
        return this.f14000b.isEmpty();
    }

    @Override // java.util.Map
    public final Set keySet() {
        switch (this.f13999a) {
        }
        return this.f14000b.keySet();
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        switch (this.f13999a) {
            case 0:
                return (ap) this.f14000b.put((fza) obj, (ap) obj2);
            default:
                return (List) this.f14000b.put((elt) obj, (List) obj2);
        }
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        switch (this.f13999a) {
            case 0:
                this.f14000b.putAll(map);
                break;
            default:
                this.f14000b.putAll(map);
                break;
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        switch (this.f13999a) {
            case 0:
                return (ap) this.f14000b.remove(obj);
            default:
                return (List) this.f14000b.remove(obj);
        }
    }

    @Override // java.util.Map
    public final int size() {
        switch (this.f13999a) {
        }
        return this.f14000b.size();
    }

    @Override // java.util.Map
    public final Collection values() {
        switch (this.f13999a) {
        }
        return this.f14000b.values();
    }
}
