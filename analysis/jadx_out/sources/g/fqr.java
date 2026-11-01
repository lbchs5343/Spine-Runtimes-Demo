package g;

import java.util.Iterator;

/* loaded from: classes.dex */
public class fqr implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final int f17255a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17256b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17257c;

    public fqr(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.f17256b = i;
        this.f17257c = ffb.bf(i, i2, i3);
        this.f17255a = i3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof fqr)) {
            return false;
        }
        if (isEmpty() && ((fqr) obj).isEmpty()) {
            return true;
        }
        fqr fqrVar = (fqr) obj;
        return this.f17256b == fqrVar.f17256b && this.f17257c == fqrVar.f17257c && this.f17255a == fqrVar.f17255a;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.f17256b * 31) + this.f17257c) * 31) + this.f17255a;
    }

    public boolean isEmpty() {
        int i = this.f17255a;
        int i2 = this.f17257c;
        int i3 = this.f17256b;
        return i > 0 ? i3 > i2 : i3 < i2;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new acc(this.f17256b, this.f17257c, this.f17255a);
    }

    public String toString() {
        StringBuilder sb;
        int i = this.f17257c;
        int i2 = this.f17256b;
        int i3 = this.f17255a;
        if (i3 > 0) {
            sb = new StringBuilder();
            sb.append(i2);
            sb.append("..");
            sb.append(i);
            sb.append(" step ");
            sb.append(i3);
        } else {
            sb = new StringBuilder();
            sb.append(i2);
            sb.append(" downTo ");
            sb.append(i);
            sb.append(" step ");
            sb.append(-i3);
        }
        return sb.toString();
    }
}
