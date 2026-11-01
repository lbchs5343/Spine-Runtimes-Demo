package j$.time;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class OffsetDateTime implements j$.time.temporal.m, j$.time.temporal.o, Comparable<OffsetDateTime>, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f20439c = 0;
    private static final long serialVersionUID = 2287754244819255394L;

    /* renamed from: a, reason: collision with root package name */
    public final LocalDateTime f20440a;

    /* renamed from: b, reason: collision with root package name */
    public final ZoneOffset f20441b;

    static {
        LocalDateTime localDateTime = LocalDateTime.f20435c;
        ZoneOffset zoneOffset = ZoneOffset.f20450g;
        localDateTime.getClass();
        new OffsetDateTime(localDateTime, zoneOffset);
        LocalDateTime localDateTime2 = LocalDateTime.f20436d;
        ZoneOffset zoneOffset2 = ZoneOffset.f20449f;
        localDateTime2.getClass();
        new OffsetDateTime(localDateTime2, zoneOffset2);
    }

    public OffsetDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        this.f20440a = (LocalDateTime) Objects.requireNonNull(localDateTime, "dateTime");
        this.f20441b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    public static OffsetDateTime C(Instant instant, ZoneId zoneId) {
        Objects.requireNonNull(instant, "instant");
        Objects.requireNonNull(zoneId, "zone");
        ZoneOffset d2 = zoneId.C().d(instant);
        return new OffsetDateTime(LocalDateTime.G(instant.f20428a, instant.f20429b, d2), d2);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 10, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final OffsetDateTime d(long j, j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.b ? E(this.f20440a.d(j, sVar), this.f20441b) : (OffsetDateTime) sVar.i(this, j);
    }

    public final OffsetDateTime E(LocalDateTime localDateTime, ZoneOffset zoneOffset) {
        return (this.f20440a == localDateTime && this.f20441b.equals(zoneOffset)) ? this : new OffsetDateTime(localDateTime, zoneOffset);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (OffsetDateTime) qVar.o(this, j);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        int i = n.f20585a[aVar.ordinal()];
        return i != 1 ? i != 2 ? E(this.f20440a.c(j, qVar), this.f20441b) : E(this.f20440a, ZoneOffset.J(aVar.f20602b.a(j, aVar))) : C(Instant.D(j, this.f20440a.f20438b.f20577d), this.f20441b);
    }

    @Override // java.lang.Comparable
    public final int compareTo(OffsetDateTime offsetDateTime) {
        int compare;
        OffsetDateTime offsetDateTime2 = offsetDateTime;
        if (this.f20441b.equals(offsetDateTime2.f20441b)) {
            compare = toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime());
        } else {
            LocalDateTime localDateTime = this.f20440a;
            ZoneOffset zoneOffset = this.f20441b;
            localDateTime.getClass();
            long v = j$.com.android.tools.r8.a.v(localDateTime, zoneOffset);
            LocalDateTime localDateTime2 = offsetDateTime2.f20440a;
            ZoneOffset zoneOffset2 = offsetDateTime2.f20441b;
            localDateTime2.getClass();
            compare = Long.compare(v, j$.com.android.tools.r8.a.v(localDateTime2, zoneOffset2));
            if (compare == 0) {
                compare = this.f20440a.f20438b.f20577d - offsetDateTime2.f20440a.f20438b.f20577d;
            }
        }
        return compare == 0 ? toLocalDateTime().compareTo(offsetDateTime2.toLocalDateTime()) : compare;
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
        if (obj instanceof OffsetDateTime) {
            OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
            if (this.f20440a.equals(offsetDateTime.f20440a) && this.f20441b.equals(offsetDateTime.f20441b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f20440a.hashCode() ^ this.f20441b.f20451b;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return j$.time.temporal.r.a(this, qVar);
        }
        int i = n.f20585a[((j$.time.temporal.a) qVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f20440a.i(qVar) : this.f20441b.f20451b;
        }
        throw new j$.time.temporal.t("Invalid field 'InstantSeconds' for get() method, use getLong() instead");
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        LocalDateTime localDateTime = this.f20440a;
        return E(localDateTime.L(localDate, localDateTime.f20438b), this.f20441b);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? (qVar == j$.time.temporal.a.INSTANT_SECONDS || qVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) qVar).f20602b : this.f20440a.k(qVar) : qVar.j(this);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        if (aVar == j$.time.temporal.r.f20623d || aVar == j$.time.temporal.r.f20624e) {
            return this.f20441b;
        }
        if (aVar == j$.time.temporal.r.f20620a) {
            return null;
        }
        return aVar == j$.time.temporal.r.f20625f ? this.f20440a.f20437a : aVar == j$.time.temporal.r.f20626g ? this.f20440a.f20438b : aVar == j$.time.temporal.r.f20621b ? j$.time.chrono.t.f20498c : aVar == j$.time.temporal.r.f20622c ? j$.time.temporal.b.NANOS : aVar.a(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return mVar.c(this.f20440a.f20437a.x(), j$.time.temporal.a.EPOCH_DAY).c(this.f20440a.f20438b.N(), j$.time.temporal.a.NANO_OF_DAY).c(this.f20441b.f20451b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public LocalDateTime toLocalDateTime() {
        return this.f20440a;
    }

    public final String toString() {
        return this.f20440a.toString() + this.f20441b.f20452c;
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i = n.f20585a[((j$.time.temporal.a) qVar).ordinal()];
        if (i != 1) {
            return i != 2 ? this.f20440a.w(qVar) : this.f20441b.f20451b;
        }
        LocalDateTime localDateTime = this.f20440a;
        ZoneOffset zoneOffset = this.f20441b;
        localDateTime.getClass();
        return j$.com.android.tools.r8.a.v(localDateTime, zoneOffset);
    }
}
