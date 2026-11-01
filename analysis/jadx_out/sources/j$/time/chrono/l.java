package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDate;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import j$.time.ZoneOffset;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;

/* loaded from: classes2.dex */
public final class l implements InterfaceC0269j, Serializable {
    private static final long serialVersionUID = -5261813987200935591L;

    /* renamed from: a, reason: collision with root package name */
    public final transient C0266g f20483a;

    /* renamed from: b, reason: collision with root package name */
    public final transient ZoneOffset f20484b;

    /* renamed from: c, reason: collision with root package name */
    public final transient ZoneId f20485c;

    public l(ZoneId zoneId, ZoneOffset zoneOffset, C0266g c0266g) {
        this.f20483a = (C0266g) Objects.requireNonNull(c0266g, "dateTime");
        this.f20484b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
        this.f20485c = (ZoneId) Objects.requireNonNull(zoneId, "zone");
    }

    public static l C(ZoneId zoneId, ZoneOffset zoneOffset, C0266g c0266g) {
        Objects.requireNonNull(c0266g, "localDateTime");
        Objects.requireNonNull(zoneId, "zone");
        if (zoneId instanceof ZoneOffset) {
            return new l(zoneId, (ZoneOffset) zoneId, c0266g);
        }
        j$.time.zone.f C = zoneId.C();
        LocalDateTime D = LocalDateTime.D(c0266g);
        List f2 = C.f(D);
        if (f2.size() == 1) {
            zoneOffset = (ZoneOffset) f2.get(0);
        } else if (f2.size() == 0) {
            Object e2 = C.e(D);
            j$.time.zone.b bVar = e2 instanceof j$.time.zone.b ? (j$.time.zone.b) e2 : null;
            c0266g = c0266g.E(c0266g.f20474a, 0L, 0L, j$.time.d.i(bVar.f20641d.f20451b - bVar.f20640c.f20451b, 0).f20513a, 0L);
            zoneOffset = bVar.f20641d;
        } else {
            if (zoneOffset == null || !f2.contains(zoneOffset)) {
                zoneOffset = (ZoneOffset) f2.get(0);
            }
            c0266g = c0266g;
        }
        Objects.requireNonNull(zoneOffset, "offset");
        return new l(zoneId, zoneOffset, c0266g);
    }

    public static l o(m mVar, j$.time.temporal.m mVar2) {
        l lVar = (l) mVar2;
        if (mVar.equals(lVar.a())) {
            return lVar;
        }
        throw new ClassCastException("Chronology mismatch, required: " + mVar.h() + ", actual: " + lVar.a().h());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new F((byte) 3, this);
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final /* synthetic */ long B() {
        return j$.com.android.tools.r8.a.w(this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final l d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return o(a(), sVar.i(this, j));
        }
        return o(a(), this.f20483a.d(j, sVar).o(this));
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final m a() {
        return f().a();
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final j$.time.i b() {
        return ((C0266g) p()).b();
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return o(a(), qVar.o(this, j));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        int i = AbstractC0270k.f20482a[aVar.ordinal()];
        if (i == 1) {
            return d(j - j$.com.android.tools.r8.a.w(this), j$.time.temporal.b.SECONDS);
        }
        if (i != 2) {
            return C(this.f20485c, this.f20484b, this.f20483a.c(j, qVar));
        }
        ZoneOffset J = ZoneOffset.J(aVar.f20602b.a(j, aVar));
        C0266g c0266g = this.f20483a;
        c0266g.getClass();
        Instant D = Instant.D(j$.com.android.tools.r8.a.v(c0266g, J), c0266g.f20475b.f20577d);
        ZoneId zoneId = this.f20485c;
        m a2 = a();
        ZoneOffset d2 = zoneId.C().d(D);
        Objects.requireNonNull(d2, "offset");
        return new l(zoneId, d2, (C0266g) a2.u(LocalDateTime.G(D.f20428a, D.f20429b, d2)));
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
        return (obj instanceof InterfaceC0269j) && j$.com.android.tools.r8.a.f(this, (InterfaceC0269j) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final InterfaceC0261b f() {
        return ((C0266g) p()).f();
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final ZoneOffset g() {
        return this.f20484b;
    }

    public final int hashCode() {
        return (this.f20483a.hashCode() ^ this.f20484b.f20451b) ^ Integer.rotateLeft(this.f20485c.hashCode(), 3);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int i(j$.time.temporal.q qVar) {
        return j$.com.android.tools.r8.a.k(this, qVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return o(a(), localDate.o(this));
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? (qVar == j$.time.temporal.a.INSTANT_SECONDS || qVar == j$.time.temporal.a.OFFSET_SECONDS) ? ((j$.time.temporal.a) qVar).f20602b : ((C0266g) p()).k(qVar) : qVar.j(this);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object l(j$.time.format.a aVar) {
        return j$.com.android.tools.r8.a.t(this, aVar);
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final InterfaceC0264e p() {
        return this.f20483a;
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final InterfaceC0269j r(ZoneId zoneId) {
        return C(zoneId, this.f20484b, this.f20483a);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return o(a(), j$.time.temporal.r.b(this, j, bVar));
    }

    public final String toString() {
        String str = this.f20483a.toString() + this.f20484b.f20452c;
        ZoneOffset zoneOffset = this.f20484b;
        ZoneId zoneId = this.f20485c;
        if (zoneOffset == zoneId) {
            return str;
        }
        return str + "[" + zoneId.toString() + "]";
    }

    @Override // j$.time.chrono.InterfaceC0269j
    public final ZoneId v() {
        return this.f20485c;
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i = AbstractC0268i.f20481a[((j$.time.temporal.a) qVar).ordinal()];
        return i != 1 ? i != 2 ? ((C0266g) p()).w(qVar) : g().f20451b : B();
    }
}
