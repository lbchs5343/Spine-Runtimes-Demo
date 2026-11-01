package com.bytedance.sdk.component.widget.recycler.dq.d;

/* loaded from: classes.dex */
public class ox<E> implements Cloneable {
    private static final Object dq = new Object();

    /* renamed from: d, reason: collision with root package name */
    private boolean f2267d;
    private long[] ox;
    private Object[] p;
    private int s;

    public ox() {
        this(10);
    }

    public ox(int i) {
        this.f2267d = false;
        if (i == 0) {
            this.ox = d.f2266d;
            this.p = d.ox;
        } else {
            int dq2 = d.dq(i);
            this.ox = new long[dq2];
            this.p = new Object[dq2];
        }
        this.s = 0;
    }

    private void p() {
        int i = this.s;
        long[] jArr = this.ox;
        Object[] objArr = this.p;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (obj != dq) {
                if (i3 != i2) {
                    jArr[i2] = jArr[i3];
                    objArr[i2] = obj;
                    objArr[i3] = null;
                }
                i2++;
            }
        }
        this.f2267d = false;
        this.s = i2;
    }

    public int d() {
        if (this.f2267d) {
            p();
        }
        return this.s;
    }

    public long d(int i) {
        if (this.f2267d) {
            p();
        }
        return this.ox[i];
    }

    public void d(long j, E e2) {
        int dq2 = d.dq(this.ox, this.s, j);
        if (dq2 >= 0) {
            this.p[dq2] = e2;
            return;
        }
        int i = ~dq2;
        int i2 = this.s;
        if (i < i2) {
            Object[] objArr = this.p;
            if (objArr[i] == dq) {
                this.ox[i] = j;
                objArr[i] = e2;
                return;
            }
        }
        if (this.f2267d && i2 >= this.ox.length) {
            p();
            i = ~d.dq(this.ox, this.s, j);
        }
        int i3 = this.s;
        if (i3 >= this.ox.length) {
            int dq3 = d.dq(i3 + 1);
            long[] jArr = new long[dq3];
            Object[] objArr2 = new Object[dq3];
            long[] jArr2 = this.ox;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.p;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.ox = jArr;
            this.p = objArr2;
        }
        int i4 = this.s;
        if (i4 - i != 0) {
            long[] jArr3 = this.ox;
            int i5 = i + 1;
            System.arraycopy(jArr3, i, jArr3, i5, i4 - i);
            Object[] objArr4 = this.p;
            System.arraycopy(objArr4, i, objArr4, i5, this.s - i);
        }
        this.ox[i] = j;
        this.p[i] = e2;
        this.s++;
    }

    public void delete(long j) {
        int dq2 = d.dq(this.ox, this.s, j);
        if (dq2 >= 0) {
            Object[] objArr = this.p;
            Object obj = objArr[dq2];
            Object obj2 = dq;
            if (obj != obj2) {
                objArr[dq2] = obj2;
                this.f2267d = true;
            }
        }
    }

    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public ox<E> clone() {
        try {
            ox<E> oxVar = (ox) super.clone();
            oxVar.ox = (long[]) this.ox.clone();
            oxVar.p = (Object[]) this.p.clone();
            return oxVar;
        } catch (CloneNotSupportedException e2) {
            throw new AssertionError(e2);
        }
    }

    public E dq(long j) {
        return dq(j, null);
    }

    public E dq(long j, E e2) {
        E e3;
        int dq2 = d.dq(this.ox, this.s, j);
        return (dq2 < 0 || (e3 = (E) this.p[dq2]) == dq) ? e2 : e3;
    }

    public void dq(int i) {
        Object[] objArr = this.p;
        Object obj = objArr[i];
        Object obj2 = dq;
        if (obj != obj2) {
            objArr[i] = obj2;
            this.f2267d = true;
        }
    }

    public E ox(int i) {
        if (this.f2267d) {
            p();
        }
        return (E) this.p[i];
    }

    public void ox() {
        int i = this.s;
        Object[] objArr = this.p;
        for (int i2 = 0; i2 < i; i2++) {
            objArr[i2] = null;
        }
        this.s = 0;
        this.f2267d = false;
    }

    public String toString() {
        if (d() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.s * 28);
        sb.append('{');
        for (int i = 0; i < this.s; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            sb.append(d(i));
            sb.append('=');
            E ox = ox(i);
            if (ox != this) {
                sb.append(ox);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
