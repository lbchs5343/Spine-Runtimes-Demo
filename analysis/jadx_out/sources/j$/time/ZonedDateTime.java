package j$.time;

import j$.time.chrono.InterfaceC0264e;
import j$.time.chrono.InterfaceC0269j;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public final class ZonedDateTime implements j$.time.temporal.m, InterfaceC0269j, Serializable {
    private static final long serialVersionUID = -6260982410461394882L;

    /* renamed from: a, reason: collision with root package name */
    public final LocalDateTime f20453a;

    /* renamed from: b, reason: collision with root package name */
    public final ZoneOffset f20454b;

    /* renamed from: c, reason: collision with root package name */
    public final ZoneId f20455c;

    public ZonedDateTime(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        this.f20453a = localDateTime;
        this.f20454b = zoneOffset;
        this.f20455c = zoneId;
    }

    public static ZonedDateTime C(LocalDateTime localDateTime, ZoneId zoneId, ZoneOffset zoneOffset) {
        Objects.requireNonNull(localDateTime, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new ZonedDateTime(localDateTime, zoneId, (ZoneOffset) zoneId);
        }
        j$.time.zone.f C = zoneId.C();
        List f2 = C.f(localDateTime);
        if (f2.size() == 1) {
            zoneOffset = (ZoneOffset) f2.get(0);
        } else if (f2.size() == 0) {
            Object e2 = C.e(localDateTime);
            j$.time.zone.b bVar = e2 instanceof j$.time.zone.b ? (j$.time.zone.b) e2 : null;
            localDateTime = localDateTime.I(d.i(bVar.f20641d.f20451b - bVar.f20640c.f20451b, 0).f20513a);
            zoneOffset = bVar.f20641d;
        } else if (zoneOffset == null || !f2.contains(zoneOffset)) {
            zoneOffset = (ZoneOffset) Objects.requireNonNull((ZoneOffset) f2.get(0), "offset");
        }
        return new ZonedDateTime(localDateTime, zoneId, zoneOffset);
    }

    public static ZonedDateTime o(long j, int i, ZoneId zoneId) {
        ZoneOffset d2 = zoneId.C().d(Instant.D(j, i));
        return new ZonedDateTime(LocalDateTime.G(j, i, d2), zoneId, d2);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 6, this);
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final /* synthetic */ long B() {
        return j$.com.android.tools.r8.a.w(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final ZonedDateTime d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return (ZonedDateTime) sVar.i(this, j);
        }
        j$.time.temporal.b bVar = (j$.time.temporal.b) sVar;
        if (bVar.compareTo(j$.time.temporal.b.DAYS) >= 0 && bVar != j$.time.temporal.b.FOREVER) {
            return C(this.f20453a.d(j, sVar), this.f20455c, this.f20454b);
        }
        LocalDateTime d2 = this.f20453a.d(j, sVar);
        ZoneOffset zoneOffset = this.f20454b;
        ZoneId zoneId = this.f20455c;
        Objects.requireNonNull(d2, "localDateTime");
        Objects.requireNonNull(zoneOffset, "offset");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId.C().f(d2).contains(zoneOffset)) {
            return new ZonedDateTime(d2, zoneId, zoneOffset);
        }
        d2.getClass();
        return o(j$.com.android.tools.r8.a.v(d2, zoneOffset), d2.f20438b.f20577d, zoneId);
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final j$.time.chrono.m a() {
        return ((LocalDate) f()).a();
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final i b() {
        return this.f20453a.f20438b;
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (ZonedDateTime) qVar.o(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        int i = v.f20634a[aVar.ordinal()];
        if (i == 1) {
            return o(j, this.f20453a.f20438b.f20577d, this.f20455c);
        }
        if (i != 2) {
            return C(this.f20453a.c(j, qVar), this.f20455c, this.f20454b);
        }
        ZoneOffset J = ZoneOffset.J(aVar.f20602b.a(j, aVar));
        return (J.equals(this.f20454b) || !this.f20455c.C().f(this.f20453a).contains(J)) ? this : new ZonedDateTime(this.f20453a, this.f20455c, J);
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return j$.com.android.tools.r8.a.f(this, (InterfaceC0269j) obj);
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        if (qVar instanceof j$.time.temporal.a) {
            return true;
        }
        return qVar != null && qVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZonedDateTime) {
            ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
            if (this.f20453a.equals(zonedDateTime.f20453a) && this.f20454b.equals(zonedDateTime.f20454b) && this.f20455c.equals(zonedDateTime.f20455c)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final ZoneOffset g() {
        return this.f20454b;
    }

    public final int hashCode() {
        return (this.f20453a.hashCode() ^ this.f20454b.f20451b) ^ Integer.rotateLeft(this.f20455c.hashCode(), 3);
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return j$.com.android.tools.r8.a.k(this, qVar);
        }
        int i = v.f20634a[((j$.time.temporal.a) qVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f20453a.i(qVar) : this.f20454b.f20451b;
        }
        throw new j$.time.temporal.t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return C(LocalDateTime.F(localDate, this.f20453a.f20438b), this.f20455c, this.f20454b);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? (qVar == j$.time.temporal.a.INSTANT_SECONDS || qVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) qVar).f20602b : this.f20453a.k(qVar) : qVar.j(this);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        return aVar == j$.time.temporal.r.f20625f ? f() : j$.com.android.tools.r8.a.t(this, aVar);
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final InterfaceC0264e p() {
        return this.f20453a;
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final InterfaceC0269j r(ZoneId zoneId) {
        Objects.requireNonNull(zoneId, "zone");
        return this.f20455c.equals(zoneId) ? this : C(this.f20453a, zoneId, this.f20454b);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    @Override // j$.time.chrono.InterfaceC0269j
    /* renamed from: toLocalDate, reason: merged with bridge method [inline-methods] */
    public LocalDate f() {
        return this.f20453a.f20437a;
    }

    public final String toString() {
        String str = this.f20453a.toString() + this.f20454b.f20452c;
        ZoneOffset zoneOffset = this.f20454b;
        ZoneId zoneId = this.f20455c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final ZoneId v() {
        return this.f20455c;
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i = v.f20634a[((j$.time.temporal.a) qVar).ordinal()];
        return i != 1 ? i != 2 ? this.f20453a.w(qVar) : this.f20454b.f20451b : j$.com.android.tools.r8.a.w(this);
    }
}
