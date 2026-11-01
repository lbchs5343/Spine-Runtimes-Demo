package g;

import java.nio.charset.Charset;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class ajv extends gzj implements RandomAccess, boh, fqj {

    /* renamed from: a, reason: collision with root package name */
    public static final ajv f10348a;

    /* renamed from: b, reason: collision with root package name */
    public int f10349b;

    /* renamed from: c, reason: collision with root package name */
    public long[] f10350c;

    static {
        ajv ajvVar = new ajv(new long[0], 0);
        f10348a = ajvVar;
        ajvVar.f19052f = false;
    }

    public ajv(long[] jArr, int i) {
        this.f10350c = jArr;
        this.f10349b = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        long longValue = ((Long) obj).longValue();
        g();
        if (i < 0 || i > (i2 = this.f10349b)) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f10349b, "Index:", ", Size:"));
        }
        long[] jArr = this.f10350c;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.f10350c, i, jArr2, i + 1, this.f10349b - i);
            this.f10350c = jArr2;
        }
        this.f10350c[i] = longValue;
        this.f10349b++;
        ((AbstractList) this).modCount++;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        zzg(((Long) obj).longValue());
        return true;
    }

    @Override // g.gzj, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        g();
        Charset charset = dhz.f14209a;
        collection.getClass();
        if (!(collection instanceof ajv)) {
            return super.addAll(collection);
        }
        ajv ajvVar = (ajv) collection;
        int i = ajvVar.f10349b;
        if (i == 0) {
            return false;
        }
        int i2 = this.f10349b;
        if (he.UNDEFINED_ITEM_ID - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.f10350c;
        if (i3 > jArr.length) {
            this.f10350c = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(ajvVar.f10350c, 0, this.f10350c, this.f10349b, ajvVar.f10349b);
        this.f10349b = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ajv)) {
            return super.equals(obj);
        }
        ajv ajvVar = (ajv) obj;
        if (this.f10349b != ajvVar.f10349b) {
            return false;
        }
        long[] jArr = ajvVar.f10350c;
        for (int i = 0; i < this.f10349b; i++) {
            if (this.f10350c[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzi(i);
        return Long.valueOf(this.f10350c[i]);
    }

    @Override // g.gzj, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f10349b; i2++) {
            i = (i * 31) + dhz.c(this.f10350c[i2]);
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long longValue = ((Long) obj).longValue();
        int i = this.f10349b;
        for (int i2 = 0; i2 < i; i2++) {
            if (this.f10350c[i2] == longValue) {
                return i2;
            }
        }
        return -1;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i) {
        g();
        zzi(i);
        long[] jArr = this.f10350c;
        long j = jArr[i];
        if (i < this.f10349b - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.f10349b--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        g();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f10350c;
        System.arraycopy(jArr, i2, jArr, i, this.f10349b - i2);
        this.f10349b -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i, Object obj) {
        long longValue = ((Long) obj).longValue();
        g();
        zzi(i);
        long[] jArr = this.f10350c;
        long j = jArr[i];
        jArr[i] = longValue;
        return Long.valueOf(j);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10349b;
    }

    @Override // g.cwe
    public final cwe zzd(int i) {
        if (i >= this.f10349b) {
            return new ajv(Arrays.copyOf(this.f10350c, i), this.f10349b);
        }
        throw new IllegalArgumentException();
    }

    public final void zzg(long j) {
        g();
        int i = this.f10349b;
        long[] jArr = this.f10350c;
        if (i == jArr.length) {
            long[] jArr2 = new long[((i * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            this.f10350c = jArr2;
        }
        long[] jArr3 = this.f10350c;
        int i2 = this.f10349b;
        this.f10349b = i2 + 1;
        jArr3[i2] = j;
    }

    public final void zzi(int i) {
        if (i < 0 || i >= this.f10349b) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f10349b, "Index:", ", Size:"));
        }
    }
}
