package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.math.BigInteger;

/* loaded from: classes2.dex */
public final class d implements Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final d f20512c = new d(0, 0);
    private static final long serialVersionUID = 3078945930695997490L;

    /* renamed from: a, reason: collision with root package name */
    public final long f20513a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20514b;

    static {
        BigInteger.valueOf(C.NANOS_PER_SECOND);
    }

    public d(long j, int i) {
        this.f20513a = j;
        this.f20514b = i;
    }

    public static d i(long j, int i) {
        return (((long) i) | j) == 0 ? f20512c : new d(j, i);
    }

    public static d j(long j) {
        long j2 = j / C.NANOS_PER_SECOND;
        int i = (int) (j % C.NANOS_PER_SECOND);
        if (i < 0) {
            i = (int) (i + C.NANOS_PER_SECOND);
            j2--;
        }
        return i(j2, i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 1, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        d dVar = (d) obj;
        int compare = Long.compare(this.f20513a, dVar.f20513a);
        return compare != 0 ? compare : this.f20514b - dVar.f20514b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d) {
            d dVar = (d) obj;
            if (this.f20513a == dVar.f20513a && this.f20514b == dVar.f20514b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f20513a;
        return (this.f20514b * 51) + ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        if (this == f20512c) {
            return "PT0S";
        }
        long j = this.f20513a;
        if (j < 0 && this.f20514b > 0) {
            j++;
        }
        long j2 = j / 3600;
        int i = (int) ((j % 3600) / 60);
        int i2 = (int) (j % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j2 != 0) {
            sb.append(j2);
            sb.append('H');
        }
        if (i != 0) {
            sb.append(i);
            sb.append('M');
        }
        if (i2 == 0 && this.f20514b == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (this.f20513a >= 0 || this.f20514b <= 0) {
            sb.append(i2);
        } else if (i2 == 0) {
            sb.append("-0");
        } else {
            sb.append(i2);
        }
        if (this.f20514b > 0) {
            int length = sb.length();
            if (this.f20513a < 0) {
                sb.append(2000000000 - this.f20514b);
            } else {
                sb.append(this.f20514b + C.NANOS_PER_SECOND);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, '.');
        }
        sb.append('S');
        return sb.toString();
    }
}
