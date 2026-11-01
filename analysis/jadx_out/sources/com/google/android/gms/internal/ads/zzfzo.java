package com.google.android.gms.internal.ads;

import g.bfc;
import g.etj;
import g.fnb;
import j$.util.List;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import java.util.function.UnaryOperator;

/* loaded from: classes3.dex */
public abstract class zzfzo<E> extends zzfzj<E> implements List<E>, RandomAccess, j$.util.List {
    public static final fnb i = new fnb(0, l.f3966a);
    public static final /* synthetic */ int zzd = 0;

    public static l j(int i2, Object[] objArr) {
        return i2 == 0 ? l.f3966a : new l(i2, objArr);
    }

    public static zzfzl zzi(int i2) {
        bfc.g(i2, "expectedSize");
        return new zzfzl(i2);
    }

    public static zzfzo zzk(Iterable iterable) {
        iterable.getClass();
        return zzl((Collection) iterable);
    }

    public static zzfzo zzl(Collection collection) {
        if (!(collection instanceof zzfzj)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzgay.a(length, array);
            return j(length, array);
        }
        zzfzo zzd2 = ((zzfzj) collection).zzd();
        if (!zzd2.d()) {
            return zzd2;
        }
        Object[] array2 = zzd2.toArray();
        return j(array2.length, array2);
    }

    public static zzfzo zzm(Object[] objArr) {
        if (objArr.length == 0) {
            return l.f3966a;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        zzgay.a(length, objArr2);
        return j(length, objArr2);
    }

    public static zzfzo zzn() {
        return l.f3966a;
    }

    public static zzfzo zzo(Object obj) {
        Object[] objArr = {obj};
        zzgay.a(1, objArr);
        return j(1, objArr);
    }

    public static zzfzo zzp(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        zzgay.a(2, objArr);
        return j(2, objArr);
    }

    public static zzfzo zzq(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {obj, obj2, obj3};
        zzgay.a(3, objArr);
        return j(3, objArr);
    }

    public static zzfzo zzr(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        zzgay.a(5, objArr);
        return j(5, objArr);
    }

    public static zzfzo zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Object[] objArr = {"3010", "3008", "1005", "1009", "2011", "2007"};
        zzgay.a(6, objArr);
        return j(6, objArr);
    }

    @SafeVarargs
    public static zzfzo zzt(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object obj7, Object obj8, Object obj9, Object obj10, Object obj11, Object obj12, Object... objArr) {
        int length = objArr.length;
        int i2 = length + 12;
        Object[] objArr2 = new Object[i2];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        objArr2[6] = obj7;
        objArr2[7] = obj8;
        objArr2[8] = obj9;
        objArr2[9] = obj10;
        objArr2[10] = obj11;
        objArr2[11] = obj12;
        System.arraycopy(objArr, 0, objArr2, 12, length);
        zzgay.a(i2, objArr2);
        return j(i2, objArr2);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i2, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i2, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public int e(int i2, Object[] objArr) {
        int size = size();
        for (int i3 = 0; i3 < size; i3++) {
            objArr[i2 + i3] = get(i3);
        }
        return i2 + size;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        if (list instanceof RandomAccess) {
            for (int i2 = 0; i2 < size; i2++) {
                if (!zzfwn.zza(get(i2), list.get(i2))) {
                    return false;
                }
            }
            return true;
        }
        Iterator<E> it = iterator();
        Iterator<E> it2 = list.iterator();
        while (it.hasNext()) {
            if (!it2.hasNext() || !zzfwn.zza(it.next(), it2.next())) {
                return false;
            }
        }
        return !it2.hasNext();
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int i2 = 1;
        for (int i3 = 0; i3 < size; i3++) {
            i2 = (i2 * 31) + get(i3).hashCode();
        }
        return i2;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (obj.equals(get(i2))) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final /* synthetic */ void replaceAll(UnaryOperator unaryOperator) {
        List.a.$default$replaceAll(this, unaryOperator);
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i2, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List, j$.util.List
    public final /* synthetic */ void sort(Comparator comparator) {
        List.a.$default$sort(this, comparator);
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    @Deprecated
    public final zzfzo zzd() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    /* renamed from: zze */
    public final zzgbu iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public zzfzo subList(int i2, int i3) {
        zzfwq.zzj(i2, i3, size());
        int i4 = i3 - i2;
        return i4 == size() ? this : i4 == 0 ? l.f3966a : new etj(this, i2, i4);
    }

    @Override // java.util.List
    /* renamed from: zzu, reason: merged with bridge method [inline-methods] */
    public final zzgbv listIterator(int i2) {
        zzfwq.zzb(i2, size(), "index");
        return isEmpty() ? i : new fnb(i2, this);
    }
}
