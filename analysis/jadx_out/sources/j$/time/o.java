package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class o implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f20586c = 0;
    private static final long serialVersionUID = 7264499704384272492L;

    /* renamed from: a, reason: collision with root package name */
    public final i f20587a;

    /* renamed from: b, reason: collision with root package name */
    public final ZoneOffset f20588b;

    static {
        i iVar = i.f20571e;
        ZoneOffset zoneOffset = ZoneOffset.f20450g;
        iVar.getClass();
        new o(iVar, zoneOffset);
        i iVar2 = i.f20572f;
        ZoneOffset zoneOffset2 = ZoneOffset.f20449f;
        iVar2.getClass();
        new o(iVar2, zoneOffset2);
    }

    public o(i iVar, ZoneOffset zoneOffset) {
        this.f20587a = (i) Objects.requireNonNull(iVar, "time");
        this.f20588b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new p((byte) 9, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: C, reason: merged with bridge method [inline-methods] */
    public final o d(long j, j$.time.temporal.s sVar) {
        return sVar instanceof j$.time.temporal.b ? D(this.f20587a.d(j, sVar), this.f20588b) : (o) sVar.i(this, j);
    }

    public final o D(i iVar, ZoneOffset zoneOffset) {
        return (this.f20587a == iVar && this.f20588b.equals(zoneOffset)) ? this : new o(iVar, zoneOffset);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (o) qVar.o(this, j);
        }
        if (qVar != j$.time.temporal.a.OFFSET_SECONDS) {
            return D(this.f20587a.c(j, qVar), this.f20588b);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        return D(this.f20587a, ZoneOffset.J(aVar.f20602b.a(j, aVar)));
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        int compare;
        o oVar = (o) obj;
        return (this.f20588b.equals(oVar.f20588b) || (compare = Long.compare(this.f20587a.N() - (((long) this.f20588b.f20451b) * C.NANOS_PER_SECOND), oVar.f20587a.N() - (((long) oVar.f20588b.f20451b) * C.NANOS_PER_SECOND))) == 0) ? this.f20587a.compareTo(oVar.f20587a) : compare;
    }

    @Override // j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).w() || qVar == j$.time.temporal.a.OFFSET_SECONDS : qVar != null && qVar.i(this);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof o) {
            o oVar = (o) obj;
            if (this.f20587a.equals(oVar.f20587a) && this.f20588b.equals(oVar.f20588b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f20587a.hashCode() ^ this.f20588b.f20451b;
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        return j$.time.temporal.r.a(this, qVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (o) j$.com.android.tools.r8.a.a(localDate, this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.j(this);
        }
        if (qVar == j$.time.temporal.a.OFFSET_SECONDS) {
            return ((j$.time.temporal.a) qVar).f20602b;
        }
        i iVar = this.f20587a;
        iVar.getClass();
        return j$.time.temporal.r.d(iVar, qVar);
    }

    @Override // j$.time.temporal.n
    public final Object l(j$.time.format.a aVar) {
        if (aVar == j$.time.temporal.r.f20623d || aVar == j$.time.temporal.r.f20624e) {
            return this.f20588b;
        }
        if (((aVar == j$.time.temporal.r.f20620a) || (aVar == j$.time.temporal.r.f20621b)) || aVar == j$.time.temporal.r.f20625f) {
            return null;
        }
        return aVar == j$.time.temporal.r.f20626g ? this.f20587a : aVar == j$.time.temporal.r.f20622c ? j$.time.temporal.b.NANOS : aVar.a(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return mVar.c(this.f20587a.N(), j$.time.temporal.a.NANO_OF_DAY).c(this.f20588b.f20451b, j$.time.temporal.a.OFFSET_SECONDS);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? d(Long.MAX_VALUE, bVar).d(1L, bVar) : d(-j, bVar);
    }

    public final String toString() {
        return this.f20587a.toString() + this.f20588b.f20452c;
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? qVar == j$.time.temporal.a.OFFSET_SECONDS ? this.f20588b.f20451b : this.f20587a.w(qVar) : qVar.l(this);
    }
}
