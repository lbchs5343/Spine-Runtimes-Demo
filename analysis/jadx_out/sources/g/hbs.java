package g;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* loaded from: classes3.dex */
public final class hbs extends gzj implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public static final hbs f19192a;

    /* renamed from: b, reason: collision with root package name */
    public int f19193b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f19194c;

    static {
        hbs hbsVar = new hbs(0, new Object[0]);
        f19192a = hbsVar;
        hbsVar.f19052f = false;
    }

    public hbs(int i, Object[] objArr) {
        this.f19194c = objArr;
        this.f19193b = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        g();
        if (i < 0 || i > (i2 = this.f19193b)) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f19193b, "Index:", ", Size:"));
        }
        Object[] objArr = this.f19194c;
        if (i2 < objArr.length) {
            System.arraycopy(objArr, i, objArr, i + 1, i2 - i);
        } else {
            Object[] objArr2 = new Object[((i2 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i);
            System.arraycopy(this.f19194c, i, objArr2, i + 1, this.f19193b - i);
            this.f19194c = objArr2;
        }
        this.f19194c[i] = obj;
        this.f19193b++;
        ((AbstractList) this).modCount++;
    }

    @Override // g.gzj, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        g();
        int i = this.f19193b;
        Object[] objArr = this.f19194c;
        if (i == objArr.length) {
            this.f19194c = Arrays.copyOf(objArr, ((i * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f19194c;
        int i2 = this.f19193b;
        this.f19193b = i2 + 1;
        objArr2[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }

    public final void d(int i) {
        if (i < 0 || i >= this.f19193b) {
            throw new IndexOutOfBoundsException(tn.t(i, this.f19193b, "Index:", ", Size:"));
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        d(i);
        return this.f19194c[i];
    }

    @Override // g.gzj, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        g();
        d(i);
        Object[] objArr = this.f19194c;
        Object obj = objArr[i];
        if (i < this.f19193b - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.f19193b--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        g();
        d(i);
        Object[] objArr = this.f19194c;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19193b;
    }

    @Override // g.cwe
    public final /* bridge */ /* synthetic */ cwe zzd(int i) {
        if (i < this.f19193b) {
            throw new IllegalArgumentException();
        }
        return new hbs(this.f19193b, Arrays.copyOf(this.f19194c, i));
    }
}
