package j$.time.chrono;

import com.ss.android.downloadad.api.constant.AdBaseConstants;
import j$.time.LocalDate;
import j$.time.ZoneOffset;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* renamed from: j$.time.chrono.g, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0266g implements InterfaceC0264e, j$.time.temporal.m, j$.time.temporal.o, Serializable {
    private static final long serialVersionUID = 4556003607393004514L;

    /* renamed from: a, reason: collision with root package name */
    public final transient InterfaceC0261b f20474a;

    /* renamed from: b, reason: collision with root package name */
    public final transient j$.time.i f20475b;

    public C0266g(InterfaceC0261b interfaceC0261b, j$.time.i iVar) {
        Objects.requireNonNull(interfaceC0261b, "date");
        Objects.requireNonNull(iVar, "time");
        this.f20474a = interfaceC0261b;
        this.f20475b = iVar;
    }

    public static C0266g C(m mVar, j$.time.temporal.m mVar2) {
        C0266g c0266g = (C0266g) mVar2;
        if (mVar.equals(c0266g.f20474a.a())) {
            return c0266g;
        }
        throw new ClassCastException("Chronology mismatch, required: " + mVar.h() + ", actual: " + c0266g.f20474a.a().h());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new F((byte) 2, this);
    }

    @Override // j$.time.temporal.m
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public final C0266g d(long j, j$.time.temporal.s sVar) {
        if (!(sVar instanceof j$.time.temporal.b)) {
            return C(this.f20474a.a(), sVar.i(this, j));
        }
        switch (AbstractC0265f.f20473a[((j$.time.temporal.b) sVar).ordinal()]) {
            case 1:
                return E(this.f20474a, 0L, 0L, 0L, j);
            case 2:
                C0266g G = G(this.f20474a.d(j / 86400000000L, (j$.time.temporal.s) j$.time.temporal.b.DAYS), this.f20475b);
                return G.E(G.f20474a, 0L, 0L, 0L, (j % 86400000000L) * 1000);
            case 3:
                C0266g G2 = G(this.f20474a.d(j / AdBaseConstants.DEFAULT_DELAY_TIMESTAMP, (j$.time.temporal.s) j$.time.temporal.b.DAYS), this.f20475b);
                return G2.E(G2.f20474a, 0L, 0L, 0L, (j % AdBaseConstants.DEFAULT_DELAY_TIMESTAMP) * com.bykv.vk.component.ttvideo.player.C.MICROS_PER_SECOND);
            case 4:
                return E(this.f20474a, 0L, 0L, j, 0L);
            case 5:
                return E(this.f20474a, 0L, j, 0L, 0L);
            case 6:
                return E(this.f20474a, j, 0L, 0L, 0L);
            case 7:
                C0266g G3 = G(this.f20474a.d(j / 256, (j$.time.temporal.s) j$.time.temporal.b.DAYS), this.f20475b);
                return G3.E(G3.f20474a, (j % 256) * 12, 0L, 0L, 0L);
            default:
                return G(this.f20474a.d(j, sVar), this.f20475b);
        }
    }

    public final C0266g E(InterfaceC0261b interfaceC0261b, long j, long j2, long j3, long j4) {
        if ((j | j2 | j3 | j4) == 0) {
            return G(interfaceC0261b, this.f20475b);
        }
        long j5 = j / 24;
        long j6 = ((j % 24) * 3600000000000L) + ((j2 % 1440) * 60000000000L) + ((j3 % 86400) * com.bykv.vk.component.ttvideo.player.C.NANOS_PER_SECOND) + (j4 % 86400000000000L);
        long N = this.f20475b.N();
        long j7 = j6 + N;
        long O = j$.com.android.tools.r8.a.O(j7, 86400000000000L) + j5 + (j2 / 1440) + (j3 / 86400) + (j4 / 86400000000000L);
        long N2 = j$.com.android.tools.r8.a.N(j7, 86400000000000L);
        return G(interfaceC0261b.d(O, (j$.time.temporal.s) j$.time.temporal.b.DAYS), N2 == N ? this.f20475b : j$.time.i.G(N2));
    }

    @Override // j$.time.temporal.m
    /* renamed from: F, reason: merged with bridge method [inline-methods] */
    public final C0266g c(long j, j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).w() ? G(this.f20474a, this.f20475b.c(j, qVar)) : G(this.f20474a.c(j, qVar), this.f20475b) : C(this.f20474a.a(), qVar.o(this, j));
    }

    public final C0266g G(j$.time.temporal.m mVar, j$.time.i iVar) {
        InterfaceC0261b interfaceC0261b = this.f20474a;
        return (interfaceC0261b == mVar && this.f20475b == iVar) ? this : new C0266g(AbstractC0263d.C(interfaceC0261b.a(), mVar), iVar);
    }

    @Override // j$.time.chrono.InterfaceC0264e
    public final m a() {
        return this.f20474a.a();
    }

    @Override // j$.time.chrono.InterfaceC0264e
    public final j$.time.i b() {
        return this.f20475b;
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
        return (obj instanceof InterfaceC0264e) && j$.com.android.tools.r8.a.e(this, (InterfaceC0264e) obj) == 0;
    }

    @Override // j$.time.chrono.InterfaceC0264e
    public final InterfaceC0261b f() {
        return this.f20474a;
    }

    public final int hashCode() {
        return this.f20474a.hashCode() ^ this.f20475b.hashCode();
    }

    @Override // j$.time.temporal.n
    public final int i(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).w() ? this.f20475b.i(qVar) : this.f20474a.i(qVar) : k(qVar).a(w(qVar), qVar);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return G(localDate, this.f20475b);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.j(this);
        }
        if (!((j$.time.temporal.a) qVar).w()) {
            return this.f20474a.k(qVar);
        }
        j$.time.i iVar = this.f20475b;
        iVar.getClass();
        return j$.time.temporal.r.d(iVar, qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object l(j$.time.format.a aVar) {
        return j$.com.android.tools.r8.a.s(this, aVar);
    }

    @Override // j$.time.chrono.InterfaceC0264e
    public final InterfaceC0269j m(ZoneOffset zoneOffset) {
        return l.C(zoneOffset, null, this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return mVar.c(f().x(), j$.time.temporal.a.EPOCH_DAY).c(b().N(), j$.time.temporal.a.NANO_OF_DAY);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return C(this.f20474a.a(), j$.time.temporal.r.b(this, j, bVar));
    }

    public final String toString() {
        return this.f20474a.toString() + "T" + this.f20475b.toString();
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).w() ? this.f20475b.w(qVar) : this.f20474a.w(qVar) : qVar.l(this);
    }

    @Override // java.lang.Comparable
    /* renamed from: z */
    public final /* synthetic */ int compareTo(InterfaceC0264e interfaceC0264e) {
        return j$.com.android.tools.r8.a.e(this, interfaceC0264e);
    }
}
