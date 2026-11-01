package g;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class eaa extends gzj implements RandomAccess, agy, fqj {

    /* renamed from: a, reason: collision with root package name */
    public static final eaa f15166a;

    /* renamed from: b, reason: collision with root package name */
    public int f15167b;

    /* renamed from: c, reason: collision with root package name */
    public int[] f15168c;

    static {
        eaa eaaVar = new eaa(0, new int[0]);
        f15166a = eaaVar;
        eaaVar.f19052f = false;
    }

    public eaa(int i, int[] iArr) {
        this.f15168c = iArr;
        this.f15167b = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        g();
        if (i < 0 || i > (i2 = this.f15167b)) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f15167b, "Index:", ", Size:"));
        }
        int[] iArr = this.f15168c;
        if (i2 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i2 - i);
        } else {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.f15168c, i, iArr2, i + 1, this.f15167b - i);
            this.f15168c = iArr2;
        }
        this.f15168c[i] = intValue;
        this.f15167b++;
        ((AbstractList) this).modCount++;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        d(((Integer) obj).intValue());
        return true;
    }

    @Override // g.gzj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        g();
        Charset charset = dhz.f14209a;
        collection.getClass();
        if (!(collection instanceof eaa)) {
            return super.addAll(collection);
        }
        eaa eaaVar = (eaa) collection;
        int i = eaaVar.f15167b;
        if (i == 0) {
            return false;
        }
        int i2 = this.f15167b;
        if (he.UNDEFINED_ITEM_ID - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f15168c;
        if (i3 > iArr.length) {
            this.f15168c = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(eaaVar.f15168c, 0, this.f15168c, this.f15167b, eaaVar.f15167b);
        this.f15167b = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    public final void d(int i) {
        g();
        int i2 = this.f15167b;
        int[] iArr = this.f15168c;
        if (i2 == iArr.length) {
            int[] iArr2 = new int[((i2 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i2);
            this.f15168c = iArr2;
        }
        int[] iArr3 = this.f15168c;
        int i3 = this.f15167b;
        this.f15167b = i3 + 1;
        iArr3[i3] = i;
    }

    public final void e(int i) {
        if (i < 0 || i >= this.f15167b) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f15167b, "Index:", ", Size:"));
        }
    }

    @Override // g.gzj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof eaa)) {
            return super.equals(obj);
        }
        eaa eaaVar = (eaa) obj;
        if (this.f15167b != eaaVar.f15167b) {
            return false;
        }
        int[] iArr = eaaVar.f15168c;
        for (int i = 0; i < this.f15167b; i++) {
            if (this.f15168c[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        e(i);
        return Integer.valueOf(this.f15168c[i]);
    }

    @Override // g.gzj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15167b; i2++) {
            i = (i * 31) + this.f15168c[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f15167b;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f15168c[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        g();
        e(i);
        int[] iArr = this.f15168c;
        int i2 = iArr[i];
        if (i < this.f15167b - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f15167b--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        g();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f15168c;
        System.arraycopy(iArr, i2, iArr, i, this.f15167b - i2);
        this.f15167b -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        g();
        e(i);
        int[] iArr = this.f15168c;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15167b;
    }

    @Override // g.cwe
    public final cwe zzd(int i) {
        if (i < this.f15167b) {
            throw new IllegalArgumentException();
        }
        return new eaa(this.f15167b, Arrays.copyOf(this.f15168c, i));
    }
}
