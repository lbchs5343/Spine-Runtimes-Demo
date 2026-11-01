package com.google.android.gms.internal.ads;

import g.fiu;
import g.gho;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class zzfzu {
    public static void a(List list, zzfwr zzfwrVar, int i, int i2) {
        int size = list.size();
        while (true) {
            size--;
            if (size <= i2) {
                break;
            } else if (zzfwrVar.zza(list.get(size))) {
                list.remove(size);
            }
        }
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            } else {
                list.remove(i2);
            }
        }
    }

    public static Object zza(Iterable iterable, Object obj) {
        fiu fiuVar = new fiu((gho) iterable);
        return fiuVar.hasNext() ? fiuVar.next() : obj;
    }

    public static boolean zzb(Iterable iterable, zzfwr zzfwrVar) {
        boolean z = false;
        if (!(iterable instanceof RandomAccess) || !(iterable instanceof List)) {
            Iterator it = iterable.iterator();
            zzfwrVar.getClass();
            while (it.hasNext()) {
                if (zzfwrVar.zza(it.next())) {
                    it.remove();
                    z = true;
                }
            }
            return z;
        }
        List list = (List) iterable;
        zzfwrVar.getClass();
        int i = 0;
        int i2 = 0;
        while (i < list.size()) {
            Object obj = list.get(i);
            if (!zzfwrVar.zza(obj)) {
                if (i > i2) {
                    try {
                        list.set(i2, obj);
                    } catch (IllegalArgumentException unused) {
                        a(list, zzfwrVar, i2, i);
                    } catch (UnsupportedOperationException unused2) {
                        a(list, zzfwrVar, i2, i);
                    }
                }
                i2++;
            }
            i++;
        }
        list.subList(i2, list.size()).clear();
        return i != i2;
    }
}
