package g;

import com.google.android.gms.internal.ads.zzgzj;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class ahn extends cs implements RandomAccess {

    /* renamed from: c, reason: collision with root package name */
    public static final ahn f10232c = new ahn(new Object[0], 0, false);

    /* renamed from: d, reason: collision with root package name */
    public int f10233d;

    /* renamed from: e, reason: collision with root package name */
    public Object[] f10234e;

    public ahn(Object[] objArr, int i, boolean z) {
        super(z);
        this.f10234e = objArr;
        this.f10233d = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        b();
        if (i < 0 || i > (i2 = this.f10233d)) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f10233d, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        Object[] objArr = this.f10234e;
        if (i2 < objArr.length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.f10234e, i, objArr2, i3, this.f10233d - i);
            this.f10234e = objArr2;
        }
        this.f10234e[i] = obj;
        this.f10233d++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        b();
        int i = this.f10233d;
        Object[] objArr = this.f10234e;
        if (i == objArr.length) {
            this.f10234e = Arrays.copyOf(objArr, ((i * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f10234e;
        int i2 = this.f10233d;
        this.f10233d = i2 + 1;
        objArr2[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void f(int i) {
        if (i < 0 || i >= this.f10233d) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f10233d, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        f(i);
        return this.f10234e[i];
    }

    @Override // g.cs, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        b();
        f(i);
        Object[] objArr = this.f10234e;
        Object obj = objArr[i];
        if (i < this.f10233d - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.f10233d--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        b();
        f(i);
        Object[] objArr = this.f10234e;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10233d;
    }

    @Override // com.google.android.gms.internal.ads.zzgzj
    public final /* bridge */ /* synthetic */ zzgzj zzf(int i) {
        if (i >= this.f10233d) {
            return new ahn(Arrays.copyOf(this.f10234e, i), this.f10233d, true);
        }
        throw new IllegalArgumentException();
    }
}
