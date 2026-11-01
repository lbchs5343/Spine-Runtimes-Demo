package g;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class amo extends bxh implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public static final Object[] f10474a;

    /* renamed from: b, reason: collision with root package name */
    public static final amo f10475b;

    /* renamed from: c, reason: collision with root package name */
    public int f10476c;

    /* renamed from: d, reason: collision with root package name */
    public Object[] f10477d;

    static {
        Object[] objArr = new Object[0];
        f10474a = objArr;
        f10475b = new amo(objArr, 0, false);
    }

    public amo(Object[] objArr, int i, boolean z) {
        super(z);
        this.f10477d = objArr;
        this.f10476c = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        f();
        if (i < 0 || i > (i2 = this.f10476c)) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f10476c, "Index:", ", Size:"));
        }
        int i3 = i + 1;
        Object[] objArr = this.f10477d;
        int length = objArr.length;
        if (i2 < length) {
            System.arraycopy(objArr, i, objArr, i3, i2 - i);
        } else {
            Object[] objArr2 = new Object[Math.max(((length * 3) / 2) + 1, 10)];
            System.arraycopy(this.f10477d, 0, objArr2, 0, i);
            System.arraycopy(this.f10477d, i, objArr2, i3, this.f10476c - i);
            this.f10477d = objArr2;
        }
        this.f10477d[i] = obj;
        this.f10476c++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        f();
        int i = this.f10476c;
        int length = this.f10477d.length;
        if (i == length) {
            this.f10477d = Arrays.copyOf(this.f10477d, Math.max(((length * 3) / 2) + 1, 10));
        }
        Object[] objArr = this.f10477d;
        int i2 = this.f10476c;
        this.f10476c = i2 + 1;
        objArr[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        zzi(i);
        return this.f10477d[i];
    }

    @Override // g.bxh, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        f();
        zzi(i);
        Object[] objArr = this.f10477d;
        Object obj = objArr[i];
        if (i < this.f10476c - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.f10476c--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        f();
        zzi(i);
        Object[] objArr = this.f10477d;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10476c;
    }

    @Override // g.gmb
    public final /* bridge */ /* synthetic */ gmb zzd(int i) {
        if (i >= this.f10476c) {
            return new amo(i == 0 ? f10474a : Arrays.copyOf(this.f10477d, i), this.f10476c, true);
        }
        throw new IllegalArgumentException();
    }

    public final void zzi(int i) {
        if (i < 0 || i >= this.f10476c) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f10476c, "Index:", ", Size:"));
        }
    }
}
