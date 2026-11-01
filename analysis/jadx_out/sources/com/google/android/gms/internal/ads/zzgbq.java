package com.google.android.gms.internal.ads;

import g.bct;
import g.gho;
import g.goo;
import g.kn;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes3.dex */
public final class zzgbq {
    public static int a(Set set) {
        Iterator it = set.iterator();
        int i = 0;
        while (it.hasNext()) {
            Object next = it.next();
            i += next != null ? next.hashCode() : 0;
        }
        return i;
    }

    public static boolean b(Set set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (!(obj instanceof Set)) {
            return false;
        }
        Set set2 = (Set) obj;
        try {
            if (set.size() == set2.size()) {
                return set.containsAll(set2);
            }
            return false;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    public static boolean c(bct bctVar, Collection collection) {
        collection.getClass();
        if (collection instanceof zzgaw) {
            collection = ((zzgaw) collection).zza();
        }
        boolean z = false;
        if (!(collection instanceof Set) || collection.size() <= bctVar.size()) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                z |= bctVar.remove(it.next());
            }
            return z;
        }
        Iterator<E> it2 = bctVar.iterator();
        collection.getClass();
        while (it2.hasNext()) {
            if (collection.contains(it2.next())) {
                it2.remove();
                z = true;
            }
        }
        return z;
    }

    public static zzgbo zzb(Set set, Set set2) {
        zzfwq.zzc(set, "set1");
        zzfwq.zzc(set2, "set2");
        return new gho(set, set2);
    }

    public static Set zzc(Set set, zzfwr zzfwrVar) {
        if (!(set instanceof SortedSet)) {
            if (!(set instanceof kn)) {
                set.getClass();
                return new kn(set, zzfwrVar);
            }
            kn knVar = (kn) set;
            return new kn(knVar.f19555a, zzfwu.zza(knVar.f19556b, zzfwrVar));
        }
        Set set2 = (SortedSet) set;
        if (!(set2 instanceof kn)) {
            set2.getClass();
            return new goo(set2, zzfwrVar);
        }
        kn knVar2 = (kn) set2;
        return new goo((SortedSet) knVar2.f19555a, zzfwu.zza(knVar2.f19556b, zzfwrVar));
    }
}
