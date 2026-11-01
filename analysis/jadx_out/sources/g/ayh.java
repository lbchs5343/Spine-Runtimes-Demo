package g;

import com.google.android.gms.internal.ads.zzgzi;
import com.google.android.gms.internal.ads.zzgzk;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class ayh extends cs implements RandomAccess, zzgzi, csi {

    /* renamed from: c, reason: collision with root package name */
    public static final ayh f11054c = new ayh(new long[0], 0, false);

    /* renamed from: d, reason: collision with root package name */
    public int f11055d;

    /* renamed from: e, reason: collision with root package name */
    public long[] f11056e;

    public ayh(long[] jArr, int i, boolean z) {
        super(z);
        this.f11056e = jArr;
        this.f11055d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        b();
        if (i < 0 || i > (i2 = this.f11055d)) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f11055d, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        long[] jArr = this.f11056e;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i3, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f11056e, i, jArr2, i3, this.f11055d - i);
            this.f11056e = jArr2;
        }
        this.f11056e[i] = longValue;
        this.f11055d++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzg(((Long) obj).longValue());
        return true;
    }

    @Override // g.cs, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = zzgzk.f8688a;
        collection.getClass();
        if (!(collection instanceof ayh)) {
            return super.addAll(collection);
        }
        ayh ayhVar = (ayh) collection;
        int i = ayhVar.f11055d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f11055d;
        if (he.UNDEFINED_ITEM_ID - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f11056e;
        if (i3 > jArr.length) {
            this.f11056e = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(ayhVar.f11056e, 0, this.f11056e, this.f11055d, ayhVar.f11055d);
        this.f11055d = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // g.cs, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ayh)) {
            return super.equals(obj);
        }
        ayh ayhVar = (ayh) obj;
        if (this.f11055d != ayhVar.f11055d) {
            return false;
        }
        long[] jArr = ayhVar.f11056e;
        for (int i = 0; i < this.f11055d; i++) {
            if (this.f11056e[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final void f(int i) {
        if (i < 0 || i >= this.f11055d) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f11055d, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        f(i);
        return Long.valueOf(this.f11056e[i]);
    }

    @Override // g.cs, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f11055d; i2++) {
            long j = this.f11056e[i2];
            Charset charset = zzgzk.f8688a;
            i = (i * 31) + ((int) (j ^ (j >>> 32)));
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f11055d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f11056e[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // g.cs, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        b();
        f(i);
        long[] jArr = this.f11056e;
        long j = jArr[i];
        if (i < this.f11055d - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.f11055d--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        b();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f11056e;
        System.arraycopy(jArr, i2, jArr, i, this.f11055d - i2);
        this.f11055d -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        return Long.valueOf(zzd(i, ((Long) obj).longValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f11055d;
    }

    @Override // com.google.android.gms.internal.ads.zzgzi
    public final long zza(int i) {
        f(i);
        return this.f11056e[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgzi
    public final long zzd(int i, long j) {
        b();
        f(i);
        long[] jArr = this.f11056e;
        long j2 = jArr[i];
        jArr[i] = j;
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzgzj
    /* renamed from: zze, reason: merged with bridge method [inline-methods] */
    public final zzgzi zzf(int i) {
        if (i >= this.f11055d) {
            return new ayh(Arrays.copyOf(this.f11056e, i), this.f11055d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzgzi
    public final void zzg(long j) {
        b();
        int i = this.f11055d;
        long[] jArr = this.f11056e;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f11056e = jArr2;
        }
        long[] jArr3 = this.f11056e;
        int i2 = this.f11055d;
        this.f11055d = i2 + 1;
        jArr3[i2] = j;
    }
}
