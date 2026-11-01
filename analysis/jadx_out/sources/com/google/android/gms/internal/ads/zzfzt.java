package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import g.awf;
import g.cqp;
import g.fnb;
import g.gs;
import j$.util.Objects;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import java.util.SortedSet;

/* loaded from: classes3.dex */
public abstract class zzfzt<E> extends zzfzj<E> implements Set<E>, j$.util.Set {
    public transient zzfzo o;

    public static zzfzt p(int i, Object... objArr) {
        if (i == 0) {
            return r.f3974b;
        }
        if (i == 1) {
            Object obj = objArr[0];
            Objects.requireNonNull(obj);
            return new cqp(obj);
        }
        int q = q(i);
        Object[] objArr2 = new Object[q];
        int i2 = q - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            Object obj2 = objArr[i5];
            if (obj2 == null) {
                throw new NullPointerException(awf.ac(i5, "at index "));
            }
            int hashCode = obj2.hashCode();
            int aa = gs.aa(hashCode);
            while (true) {
                int i6 = aa & i2;
                Object obj3 = objArr2[i6];
                if (obj3 == null) {
                    objArr[i4] = obj2;
                    objArr2[i6] = obj2;
                    i3 += hashCode;
                    i4++;
                    break;
                }
                if (!obj3.equals(obj2)) {
                    aa++;
                }
            }
        }
        Arrays.fill(objArr, i4, i, (Object) null);
        if (i4 == 1) {
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new cqp(obj4);
        }
        if (q(i4) < q / 2) {
            return p(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = Arrays.copyOf(objArr, i4);
        }
        return new r(i3, i2, i4, objArr, objArr2);
    }

    public static int q(int i) {
        int max = Math.max(i, 2);
        if (max >= 751619276) {
            zzfwq.zzf(max < 1073741824, "collection too large");
            return C.ENCODING_PCM_32BIT;
        }
        int highestOneBit = Integer.highestOneBit(max - 1);
        do {
            highestOneBit += highestOneBit;
        } while (highestOneBit * 0.7d < max);
        return highestOneBit;
    }

    public static zzfzs zzj(int i) {
        zzfzs zzfzsVar = new zzfzs(i);
        zzfzsVar.f8238b = new Object[q(i)];
        return zzfzsVar;
    }

    public static zzfzt zzl(Collection collection) {
        if ((collection instanceof zzfzt) && !(collection instanceof SortedSet)) {
            zzfzt zzfztVar = (zzfzt) collection;
            if (!zzfztVar.d()) {
                return zzfztVar;
            }
        }
        Object[] array = collection.toArray();
        return p(array.length, array);
    }

    public static zzfzt zzm(Object[] objArr) {
        int length = objArr.length;
        return length != 0 ? length != 1 ? p(length, (Object[]) objArr.clone()) : new cqp(objArr[0]) : r.f3974b;
    }

    public static zzfzt zzn() {
        return r.f3974b;
    }

    public static zzfzt zzo(Object obj) {
        return new cqp(obj);
    }

    public static zzfzt zzp(Object obj, Object obj2) {
        return p(2, obj, obj2);
    }

    public static zzfzt zzq(Object obj, Object obj2, Object obj3) {
        return p(3, obj, obj2, obj3);
    }

    public static zzfzt zzr(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return p(5, obj, obj2, obj3, obj4, obj5);
    }

    @SafeVarargs
    public static zzfzt zzs(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        Object[] objArr2 = new Object[10];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, 4);
        return p(10, objArr2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzfzt) && (this instanceof r)) {
            zzfzt zzfztVar = (zzfzt) obj;
            zzfztVar.getClass();
            if ((zzfztVar instanceof r) && hashCode() != obj.hashCode()) {
                return false;
            }
        }
        return zzgbq.b(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzgbq.a(this);
    }

    public zzfzo m() {
        Object[] array = toArray();
        fnb fnbVar = zzfzo.i;
        return zzfzo.j(array.length, array);
    }

    @Override // com.google.android.gms.internal.ads.zzfzj
    public zzfzo zzd() {
        zzfzo zzfzoVar = this.o;
        if (zzfzoVar != null) {
            return zzfzoVar;
        }
        zzfzo m = m();
        this.o = m;
        return m;
    }

    @Override // com.google.android.gms.internal.ads.zzfzj, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public abstract zzgbu iterator();
}
