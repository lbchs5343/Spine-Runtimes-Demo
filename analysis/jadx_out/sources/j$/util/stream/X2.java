package j$.util.stream;

import j$.lang.Iterable;
import j$.util.Spliterator;
import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class X2 extends AbstractC0299c implements Iterable, Iterable {

    /* renamed from: e, reason: collision with root package name */
    public Object f20970e;

    /* renamed from: f, reason: collision with root package name */
    public Object[] f20971f;

    public X2() {
        this.f20970e = newArray(16);
    }

    public X2(int i) {
        super(i);
        this.f20970e = newArray(1 << this.f20995a);
    }

    public Object b() {
        long count = count();
        if (count >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        Object newArray = newArray((int) count);
        f(newArray, 0);
        return newArray;
    }

    @Override // j$.util.stream.AbstractC0299c
    public final void clear() {
        Object[] objArr = this.f20971f;
        if (objArr != null) {
            this.f20970e = objArr[0];
            this.f20971f = null;
            this.f20998d = null;
        }
        this.f20996b = 0;
        this.f20997c = 0;
    }

    public void f(Object obj, int i) {
        long j = i;
        long count = count() + j;
        if (count > q(obj) || count < j) {
            throw new IndexOutOfBoundsException("does not fit");
        }
        if (this.f20997c == 0) {
            System.arraycopy(this.f20970e, 0, obj, i, this.f20996b);
            return;
        }
        for (int i2 = 0; i2 < this.f20997c; i2++) {
            Object obj2 = this.f20971f[i2];
            System.arraycopy(obj2, 0, obj, i, q(obj2));
            i += q(this.f20971f[i2]);
        }
        int i3 = this.f20996b;
        if (i3 > 0) {
            System.arraycopy(this.f20970e, 0, obj, i, i3);
        }
    }

    public void g(Object obj) {
        for (int i = 0; i < this.f20997c; i++) {
            Object obj2 = this.f20971f[i];
            p(obj2, 0, q(obj2), obj);
        }
        p(this.f20970e, 0, this.f20996b, obj);
    }

    public abstract Object newArray(int i);

    public abstract void p(Object obj, int i, int i2, Object obj2);

    public abstract int q(Object obj);

    public final int r(long j) {
        if (this.f20997c == 0) {
            if (j < this.f20996b) {
                return 0;
            }
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        if (j >= count()) {
            throw new IndexOutOfBoundsException(Long.toString(j));
        }
        for (int i = 0; i <= this.f20997c; i++) {
            if (j < this.f20998d[i] + q(this.f20971f[i])) {
                return i;
            }
        }
        throw new IndexOutOfBoundsException(Long.toString(j));
    }

    public final void s(long j) {
        long q;
        int i = this.f20997c;
        if (i == 0) {
            q = q(this.f20970e);
        } else {
            q = q(this.f20971f[i]) + this.f20998d[i];
        }
        if (j > q) {
            if (this.f20971f == null) {
                Object[] t = t();
                this.f20971f = t;
                this.f20998d = new long[8];
                t[0] = this.f20970e;
            }
            int i2 = this.f20997c + 1;
            while (j > q) {
                Object[] objArr = this.f20971f;
                if (i2 >= objArr.length) {
                    int length = objArr.length * 2;
                    this.f20971f = Arrays.copyOf(objArr, length);
                    this.f20998d = Arrays.copyOf(this.f20998d, length);
                }
                int i3 = this.f20995a;
                if (i2 != 0 && i2 != 1) {
                    i3 = Math.min((i3 + i2) - 1, 30);
                }
                int i4 = 1 << i3;
                this.f20971f[i2] = newArray(i4);
                long[] jArr = this.f20998d;
                jArr[i2] = jArr[i2 - 1] + q(this.f20971f[r6]);
                q += i4;
                i2++;
            }
        }
    }

    public abstract Spliterator spliterator();

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public abstract Object[] t();

    public final void u() {
        long q;
        if (this.f20996b == q(this.f20970e)) {
            if (this.f20971f == null) {
                Object[] t = t();
                this.f20971f = t;
                this.f20998d = new long[8];
                t[0] = this.f20970e;
            }
            int i = this.f20997c;
            int i2 = i + 1;
            Object[] objArr = this.f20971f;
            if (i2 >= objArr.length || objArr[i2] == null) {
                if (i == 0) {
                    q = q(this.f20970e);
                } else {
                    q = q(objArr[i]) + this.f20998d[i];
                }
                s(q + 1);
            }
            this.f20996b = 0;
            int i3 = this.f20997c + 1;
            this.f20997c = i3;
            this.f20970e = this.f20971f[i3];
        }
    }
}
