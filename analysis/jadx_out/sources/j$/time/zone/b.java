package j$.time.zone;

import j$.time.LocalDateTime;
import j$.time.ZoneOffset;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class b implements Comparable, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f20637e = 0;
    private static final long serialVersionUID = -6946044323557704546L;

    /* renamed from: a, reason: collision with root package name */
    public final long f20638a;

    /* renamed from: b, reason: collision with root package name */
    public final LocalDateTime f20639b;

    /* renamed from: c, reason: collision with root package name */
    public final ZoneOffset f20640c;

    /* renamed from: d, reason: collision with root package name */
    public final ZoneOffset f20641d;

    public b(long j, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        this.f20638a = j;
        this.f20639b = LocalDateTime.G(j, 0, zoneOffset);
        this.f20640c = zoneOffset;
        this.f20641d = zoneOffset2;
    }

    public b(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
        localDateTime.getClass();
        this.f20638a = j$.com.android.tools.r8.a.v(localDateTime, zoneOffset);
        this.f20639b = localDateTime;
        this.f20640c = zoneOffset;
        this.f20641d = zoneOffset2;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 2, this);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return Long.compare(this.f20638a, ((b) obj).f20638a);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof b) {
            b bVar = (b) obj;
            if (this.f20638a == bVar.f20638a && this.f20640c.equals(bVar.f20640c) && this.f20641d.equals(bVar.f20641d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.f20639b.hashCode() ^ this.f20640c.f20451b) ^ Integer.rotateLeft(this.f20641d.f20451b, 16);
    }

    public final boolean i() {
        return this.f20641d.f20451b > this.f20640c.f20451b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Transition[");
        sb.append(i() ? "Gap" : "Overlap");
        sb.append(" at ");
        sb.append(this.f20639b);
        sb.append(this.f20640c);
        sb.append(" to ");
        sb.append(this.f20641d);
        sb.append(']');
        return sb.toString();
    }
}
