package j$.time.temporal;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class u implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;

    /* renamed from: a, reason: collision with root package name */
    public final long f20627a;

    /* renamed from: b, reason: collision with root package name */
    public final long f20628b;

    /* renamed from: c, reason: collision with root package name */
    public final long f20629c;

    /* renamed from: d, reason: collision with root package name */
    public final long f20630d;

    public u(long j, long j2, long j3, long j4) {
        this.f20627a = j;
        this.f20628b = j2;
        this.f20629c = j3;
        this.f20630d = j4;
    }

    public static u e(long j, long j2) {
        if (j <= j2) {
            return new u(j, j, j2, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public static u f(long j, long j2) {
        if (j > j2) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (1 <= j2) {
            return new u(1L, 1L, j, j2);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        long j = this.f20627a;
        long j2 = this.f20628b;
        if (j > j2) {
            throw new InvalidObjectException("Smallest minimum value must be less than largest minimum value");
        }
        long j3 = this.f20629c;
        long j4 = this.f20630d;
        if (j3 > j4) {
            throw new InvalidObjectException("Smallest maximum value must be less than largest maximum value");
        }
        if (j2 > j4) {
            throw new InvalidObjectException("Minimum value must be less than maximum value");
        }
    }

    public final int a(long j, q qVar) {
        if (this.f20627a < -2147483648L || this.f20630d > 2147483647L || !d(j)) {
            throw new j$.time.a(c(j, qVar));
        }
        return (int) j;
    }

    public final void b(long j, q qVar) {
        if (!d(j)) {
            throw new j$.time.a(c(j, qVar));
        }
    }

    public final String c(long j, q qVar) {
        if (qVar == null) {
            return "Invalid value (valid values " + this + "): " + j;
        }
        return "Invalid value for " + qVar + " (valid values " + this + "): " + j;
    }

    public final boolean d(long j) {
        return j >= this.f20627a && j <= this.f20630d;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof u) {
            u uVar = (u) obj;
            if (this.f20627a == uVar.f20627a && this.f20628b == uVar.f20628b && this.f20629c == uVar.f20629c && this.f20630d == uVar.f20630d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f20627a;
        long j2 = this.f20628b;
        long j3 = j + (j2 << 16) + (j2 >> 48);
        long j4 = this.f20629c;
        long j5 = j3 + (j4 << 32) + (j4 >> 32);
        long j6 = this.f20630d;
        long j7 = j5 + (j6 << 48) + (j6 >> 16);
        return (int) (j7 ^ (j7 >>> 32));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f20627a);
        if (this.f20627a != this.f20628b) {
            sb.append('/');
            sb.append(this.f20628b);
        }
        sb.append(" - ");
        sb.append(this.f20629c);
        if (this.f20629c != this.f20630d) {
            sb.append('/');
            sb.append(this.f20630d);
        }
        return sb.toString();
    }
}
