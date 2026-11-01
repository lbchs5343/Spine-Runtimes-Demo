package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import com.ss.android.downloadad.api.constant.AdBaseConstants;
import j$.time.chrono.InterfaceC0261b;
import j$.time.chrono.InterfaceC0264e;
import j$.time.chrono.InterfaceC0269j;
import j$.time.format.DateTimeFormatter;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class LocalDateTime implements j$.time.temporal.m, j$.time.temporal.o, InterfaceC0264e, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final LocalDateTime f20435c = F(LocalDate.f20430d, i.f20571e);

    /* renamed from: d, reason: collision with root package name */
    public static final LocalDateTime f20436d = F(LocalDate.f20431e, i.f20572f);
    private static final long serialVersionUID = 6207766400415563566L;

    /* renamed from: a, reason: collision with root package name */
    public final LocalDate f20437a;

    /* renamed from: b, reason: collision with root package name */
    public final i f20438b;

    public LocalDateTime(LocalDate localDate, i iVar) {
        this.f20437a = localDate;
        this.f20438b = iVar;
    }

    public static LocalDateTime D(j$.time.temporal.n nVar) {
        if (nVar instanceof LocalDateTime) {
            return (LocalDateTime) nVar;
        }
        if (nVar instanceof ZonedDateTime) {
            return ((ZonedDateTime) nVar).f20453a;
        }
        if (nVar instanceof OffsetDateTime) {
            return ((OffsetDateTime) nVar).toLocalDateTime();
        }
        try {
            return new LocalDateTime(LocalDate.E(nVar), i.E(nVar));
        } catch (a e2) {
            throw new a("Unable to obtain LocalDateTime from TemporalAccessor: " + nVar + " of type " + nVar.getClass().getName(), e2);
        }
    }

    public static LocalDateTime F(LocalDate localDate, i iVar) {
        Objects.requireNonNull(localDate, "date");
        Objects.requireNonNull(iVar, "time");
        return new LocalDateTime(localDate, iVar);
    }

    public static LocalDateTime G(long j, int i, ZoneOffset zoneOffset) {
        Objects.requireNonNull(zoneOffset, "offset");
        long j2 = i;
        j$.time.temporal.a.NANO_OF_SECOND.s(j2);
        return new LocalDateTime(LocalDate.M(j$.com.android.tools.r8.a.O(j + zoneOffset.f20451b, 86400)), i.G((((int) j$.com.android.tools.r8.a.N(r5, r7)) * C.NANOS_PER_SECOND) + j2));
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 5, this);
    }

    public final int C(LocalDateTime localDateTime) {
        int C = this.f20437a.C(localDateTime.f20437a);
        return C == 0 ? this.f20438b.compareTo(localDateTime.f20438b) : C;
    }

    public final boolean E(InterfaceC0264e interfaceC0264e) {
        if (interfaceC0264e instanceof LocalDateTime) {
            return C((LocalDateTime) interfaceC0264e) < 0;
        }
        long x = this.f20437a.x();
        long x2 = interfaceC0264e.f().x();
        if (x >= x2) {
            return x == x2 && this.f20438b.N() < interfaceC0264e.b().N();
        }
        return true;
    }

    @Override // j$.time.temporal.m
    /* renamed from: H, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return (LocalDateTime) sVar.i(this, j);
        }
        switch (g.f20568a[((j$.time.temporal.b) sVar).ordinal()]) {
            case 1:
                return J(this.f20437a, 0L, 0L, 0L, j);
            case 2:
                LocalDateTime L = L(this.f20437a.O(j / 86400000000L), this.f20438b);
                return L.J(L.f20437a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                LocalDateTime L2 = L(this.f20437a.O(j / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP), this.f20438b);
                return L2.J(L2.f20437a, 0L, 0L, 0L, (j % AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) * C.MICROS_PER_SECOND);
            case 4:
                return I(j);
            case 5:
                return J(this.f20437a, 0L, j, 0L, 0L);
            case 6:
                return J(this.f20437a, j, 0L, 0L, 0L);
            case 7:
                LocalDateTime L3 = L(this.f20437a.O(j / 256), this.f20438b);
                return L3.J(L3.f20437a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return L(this.f20437a.d(j, sVar), this.f20438b);
        }
    }

    public final LocalDateTime I(long j) {
        return J(this.f20437a, 0L, 0L, j, 0L);
    }

    public final LocalDateTime J(LocalDate localDate, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return L(localDate, this.f20438b);
        }
        long j5 = 1;
        long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * C.NANOS_PER_SECOND) + (j4 % 86400000000000L);
        long N = this.f20438b.N();
        long j7 = (j6 * j5) + N;
        long O = j$.com.android.tools.r8.a.O(j7, 86400000000000L) + (((j / 24) + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L)) * j5);
        long N2 = j$.com.android.tools.r8.a.N(j7, 86400000000000L);
        return L(localDate.O(O), N2 == N ? this.f20438b : i.G(N2));
    }

    @Override // j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final LocalDateTime c(long j, j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).w() ? L(this.f20437a, this.f20438b.c(j, qVar)) : L(this.f20437a.c(j, qVar), this.f20438b) : (LocalDateTime) qVar.o(this, j);
    }

    public final LocalDateTime L(LocalDate localDate, i iVar) {
        return (this.f20437a == localDate && this.f20438b == iVar) ? this : new LocalDateTime(localDate, iVar);
    }

    @Override // j$.time.chrono.InterfaceC0264e
    public final j$.time.chrono.m a() {
        return ((LocalDate) f()).a();
    }

    @Override // j$.time.chrono.InterfaceC0264e
    public final i b() {
        return this.f20438b;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar != null && qVar.i(this);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        return aVar.isDateBased() || aVar.w();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LocalDateTime) {
            LocalDateTime localDateTime = (LocalDateTime) obj;
            if (this.f20437a.equals(localDateTime.f20437a) && this.f20438b.equals(localDateTime.f20438b)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.InterfaceC0264e
    public final InterfaceC0261b f() {
        return this.f20437a;
    }

    public String format(DateTimeFormatter dateTimeFormatter) {
        Objects.requireNonNull(dateTimeFormatter, "formatter");
        return dateTimeFormatter.a(this);
    }

    public final int hashCode() {
        return this.f20437a.hashCode() ^ this.f20438b.hashCode();
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).w() ? this.f20438b.i(qVar) : this.f20437a.i(qVar) : j$.time.temporal.r.a(this, qVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return L(localDate, this.f20438b);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.j(this);
        }
        if (!((j$.time.temporal.a) qVar).w()) {
            return this.f20437a.k(qVar);
        }
        i iVar = this.f20438b;
        iVar.getClass();
        return j$.time.temporal.r.d(iVar, qVar);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        return aVar == j$.time.temporal.r.f20625f ? this.f20437a : j$.com.android.tools.r8.a.s(this, aVar);
    }

    @Override // j$.time.chrono.InterfaceC0264e
    public final InterfaceC0269j m(ZoneOffset zoneOffset) {
        return ZonedDateTime.C(this, zoneOffset, null);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return mVar.c(((LocalDate) f()).x(), j$.time.temporal.a.EPOCH_DAY).c(b().N(), j$.time.temporal.a.NANO_OF_DAY);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        return this.f20437a.toString() + "T" + this.f20438b.toString();
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).w() ? this.f20438b.w(qVar) : this.f20437a.w(qVar) : qVar.l(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final int compareTo(InterfaceC0264e interfaceC0264e) {
        return interfaceC0264e instanceof LocalDateTime ? C((LocalDateTime) interfaceC0264e) : j$.com.android.tools.r8.a.e(this, interfaceC0264e);
    }
}
