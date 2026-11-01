package g;

import com.google.android.gms.internal.ads.zzgzf;
import com.google.android.gms.internal.ads.zzgzk;
import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class uo extends cs implements RandomAccess, zzgzf, csi {

    /* renamed from: c, reason: collision with root package name */
    public static final uo f20109c = new uo(new int[0], 0, false);

    /* renamed from: d, reason: collision with root package name */
    public int f20110d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f20111e;

    public uo(int[] iArr, int i, boolean z) {
        super(z);
        this.f20111e = iArr;
        this.f20110d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        b();
        if (i < 0 || i > (i2 = this.f20110d)) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f20110d, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        int[] iArr = this.f20111e;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i3, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f20111e, i, iArr2, i3, this.f20110d - i);
            this.f20111e = iArr2;
        }
        this.f20111e[i] = intValue;
        this.f20110d++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzi(((Integer) obj).intValue());
        return true;
    }

    @Override // g.cs, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        b();
        Charset charset = zzgzk.f8688a;
        collection.getClass();
        if (!(collection instanceof uo)) {
            return super.addAll(collection);
        }
        uo uoVar = (uo) collection;
        int i = uoVar.f20110d;
        if (i == 0) {
            return false;
        }
        int i2 = this.f20110d;
        if (he.UNDEFINED_ITEM_ID - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f20111e;
        if (i3 > iArr.length) {
            this.f20111e = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(uoVar.f20111e, 0, this.f20111e, this.f20110d, uoVar.f20110d);
        this.f20110d = i3;
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
        if (!(obj instanceof uo)) {
            return super.equals(obj);
        }
        uo uoVar = (uo) obj;
        if (this.f20110d != uoVar.f20110d) {
            return false;
        }
        int[] iArr = uoVar.f20111e;
        for (int i = 0; i < this.f20110d; i++) {
            if (this.f20111e[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final void f(int i) {
        if (i < 0 || i >= this.f20110d) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f20110d, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        f(i);
        return Integer.valueOf(this.f20111e[i]);
    }

    @Override // g.cs, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f20110d; i2++) {
            i = (i * 31) + this.f20111e[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f20110d;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f20111e[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // g.cs, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        b();
        f(i);
        int[] iArr = this.f20111e;
        int i2 = iArr[i];
        if (i < this.f20110d - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f20110d--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        b();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f20111e;
        System.arraycopy(iArr, i2, iArr, i, this.f20110d - i2);
        this.f20110d -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        return Integer.valueOf(zze(i, ((Integer) obj).intValue()));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f20110d;
    }

    @Override // com.google.android.gms.internal.ads.zzgzf
    public final int zzd(int i) {
        f(i);
        return this.f20111e[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgzf
    public final int zze(int i, int i2) {
        b();
        f(i);
        int[] iArr = this.f20111e;
        int i3 = iArr[i];
        iArr[i] = i2;
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzgzj
    /* renamed from: zzh, reason: merged with bridge method [inline-methods] */
    public final zzgzf zzf(int i) {
        if (i >= this.f20110d) {
            return new uo(Arrays.copyOf(this.f20111e, i), this.f20110d, true);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzgzf
    public final void zzi(int i) {
        b();
        int i2 = this.f20110d;
        int[] iArr = this.f20111e;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f20111e = iArr2;
        }
        int[] iArr3 = this.f20111e;
        int i3 = this.f20110d;
        this.f20110d = i3 + 1;
        iArr3[i3] = i;
    }
}
