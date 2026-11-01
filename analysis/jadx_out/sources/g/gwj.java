package g;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class gwj extends bxh implements RandomAccess, cks {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f18878a;

    /* renamed from: b, reason: collision with root package name */
    public static final gwj f18879b;

    /* renamed from: c, reason: collision with root package name */
    public int f18880c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f18881d;

    static {
        int[] iArr = new int[0];
        f18878a = iArr;
        f18879b = new gwj(iArr, 0, false);
    }

    public gwj(int[] iArr, int i, boolean z) {
        super(z);
        this.f18881d = iArr;
        this.f18880c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        int intValue = ((Integer) obj).intValue();
        f();
        if (i < 0 || i > (i2 = this.f18880c)) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f18880c, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        int[] iArr = this.f18881d;
        int length = iArr.length;
        if (i2 < length) {
            System.arraycopy(iArr, i, iArr, i3, i2 - i);
        } else {
            int[] iArr2 = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f18881d, 0, iArr2, 0, i);
            System.arraycopy(this.f18881d, i, iArr2, i3, this.f18880c - i);
            this.f18881d = iArr2;
        }
        this.f18881d[i] = intValue;
        this.f18880c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        i(((Integer) obj).intValue());
        return true;
    }

    @Override // g.bxh, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        f();
        Charset charset = cua.f13515a;
        collection.getClass();
        if (!(collection instanceof gwj)) {
            return super.addAll(collection);
        }
        gwj gwjVar = (gwj) collection;
        int i = gwjVar.f18880c;
        if (i == 0) {
            return false;
        }
        int i2 = this.f18880c;
        if (he.UNDEFINED_ITEM_ID - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.f18881d;
        if (i3 > iArr.length) {
            this.f18881d = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(gwjVar.f18881d, 0, this.f18881d, this.f18880c, gwjVar.f18880c);
        this.f18880c = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // g.bxh, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gwj)) {
            return super.equals(obj);
        }
        gwj gwjVar = (gwj) obj;
        if (this.f18880c != gwjVar.f18880c) {
            return false;
        }
        int[] iArr = gwjVar.f18881d;
        for (int i = 0; i < this.f18880c; i++) {
            if (this.f18881d[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    public final void g(int i) {
        if (i < 0 || i >= this.f18880c) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f18880c, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        g(i);
        return Integer.valueOf(this.f18881d[i]);
    }

    public final int h(int i) {
        g(i);
        return this.f18881d[i];
    }

    @Override // g.bxh, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f18880c; i2++) {
            i = (i * 31) + this.f18881d[i2];
        }
        return i;
    }

    public final void i(int i) {
        f();
        int i2 = this.f18880c;
        int length = this.f18881d.length;
        if (i2 == length) {
            int[] iArr = new int[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f18881d, 0, iArr, 0, this.f18880c);
            this.f18881d = iArr;
        }
        int[] iArr2 = this.f18881d;
        int i3 = this.f18880c;
        this.f18880c = i3 + 1;
        iArr2[i3] = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f18880c;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f18881d[i2] == intValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // g.bxh, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        f();
        g(i);
        int[] iArr = this.f18881d;
        int i2 = iArr[i];
        if (i < this.f18880c - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.f18880c--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        f();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f18881d;
        System.arraycopy(iArr, i2, iArr, i, this.f18880c - i2);
        this.f18880c -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        int intValue = ((Integer) obj).intValue();
        f();
        g(i);
        int[] iArr = this.f18881d;
        int i2 = iArr[i];
        iArr[i] = intValue;
        return Integer.valueOf(i2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18880c;
    }

    @Override // g.gmb
    public final /* bridge */ /* synthetic */ gmb zzd(int i) {
        if (i >= this.f18880c) {
            return new gwj(i == 0 ? f18878a : Arrays.copyOf(this.f18881d, i), this.f18880c, true);
        }
        throw new IllegalArgumentException();
    }
}
