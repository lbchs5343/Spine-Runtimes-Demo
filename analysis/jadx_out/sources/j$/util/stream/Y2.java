package j$.util.stream;

import j$.lang.Iterable;
import j$.util.Objects;
import j$.util.Spliterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.function.Consumer;

/* loaded from: classes2.dex */
public class Y2 extends AbstractC0299c implements Consumer, Iterable, Iterable {

    /* renamed from: e, reason: collision with root package name */
    public Object[] f20976e = new Object[1 << 4];

    /* renamed from: f, reason: collision with root package name */
    public Object[][] f20977f;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public void n(Object obj) {
        long length;
        int i = this.f20996b;
        Object[] objArr = this.f20976e;
        if (i == objArr.length) {
            if (this.f20977f == null) {
                Object[][] objArr2 = new Object[8][];
                this.f20977f = objArr2;
                this.f20998d = new long[8];
                objArr2[0] = objArr;
            }
            int i2 = this.f20997c;
            int i3 = i2 + 1;
            Object[][] objArr3 = this.f20977f;
            if (i3 >= objArr3.length || objArr3[i3] == null) {
                if (i2 == 0) {
                    length = objArr.length;
                } else {
                    length = objArr3[i2].length + this.f20998d[i2];
                }
                p(length + 1);
            }
            this.f20996b = 0;
            int i4 = this.f20997c + 1;
            this.f20997c = i4;
            this.f20976e = this.f20977f[i4];
        }
        Object[] objArr4 = this.f20976e;
        int i5 = this.f20996b;
        this.f20996b = i5 + 1;
        objArr4[i5] = obj;
    }

    public final /* synthetic */ Consumer andThen(Consumer consumer) {
        return j$.util.function.j.$default$andThen(this, consumer);
    }

    @Override // j$.util.stream.AbstractC0299c
    public final void clear() {
        Object[][] objArr = this.f20977f;
        if (objArr != null) {
            this.f20976e = objArr[0];
            int i = 0;
            while (true) {
                Object[] objArr2 = this.f20976e;
                if (i >= objArr2.length) {
                    break;
                }
                objArr2[i] = null;
                i++;
            }
            this.f20977f = null;
            this.f20998d = null;
        } else {
            for (int i2 = 0; i2 < this.f20996b; i2++) {
                this.f20976e[i2] = null;
            }
        }
        this.f20996b = 0;
        this.f20997c = 0;
    }

    @Override // java.lang.Iterable, j$.lang.Iterable
    public void forEach(Consumer consumer) {
        for (int i = 0; i < this.f20997c; i++) {
            for (Object obj : this.f20977f[i]) {
                consumer.n(obj);
            }
        }
        for (int i2 = 0; i2 < this.f20996b; i2++) {
            consumer.n(this.f20976e[i2]);
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        Spliterator spliterator = spliterator();
        Objects.requireNonNull(spliterator);
        return new j$.util.O(spliterator);
    }

    public final void p(long j) {
        int i = this.f20997c;
        long length = i == 0 ? this.f20976e.length : this.f20998d[i] + this.f20977f[i].length;
        if (j > length) {
            if (this.f20977f == null) {
                Object[][] objArr = new Object[8][];
                this.f20977f = objArr;
                this.f20998d = new long[8];
                objArr[0] = this.f20976e;
            }
            int i2 = i + 1;
            while (j > length) {
                Object[][] objArr2 = this.f20977f;
                if (i2 >= objArr2.length) {
                    int length2 = objArr2.length * 2;
                    this.f20977f = (Object[][]) Arrays.copyOf(objArr2, length2);
                    this.f20998d = Arrays.copyOf(this.f20998d, length2);
                }
                int i3 = this.f20995a;
                if (i2 != 0 && i2 != 1) {
                    i3 = Math.min((i3 + i2) - 1, 30);
                }
                int i4 = 1 << i3;
                this.f20977f[i2] = new Object[i4];
                long[] jArr = this.f20998d;
                jArr[i2] = jArr[i2 - 1] + r5[r7].length;
                length += i4;
                i2++;
            }
        }
    }

    @Override // java.lang.Iterable, j$.lang.Iterable, j$.util.Collection
    public Spliterator spliterator() {
        return new P2(this, 0, this.f20997c, 0, this.f20996b);
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ java.util.Spliterator spliterator() {
        return Spliterator.Wrapper.convert(spliterator());
    }

    public final String toString() {
        ArrayList arrayList = new ArrayList();
        Objects.requireNonNull(arrayList);
        forEach(new j$.util.function.g(arrayList, 8));
        return "SpinedBuffer:" + arrayList.toString();
    }
}
