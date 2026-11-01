package j$.time.chrono;

import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class r extends AbstractC0263d {
    private static final long serialVersionUID = -5207853542612002020L;

    /* renamed from: a, reason: collision with root package name */
    public final transient p f20493a;

    /* renamed from: b, reason: collision with root package name */
    public final transient int f20494b;

    /* renamed from: c, reason: collision with root package name */
    public final transient int f20495c;

    /* renamed from: d, reason: collision with root package name */
    public final transient int f20496d;

    public r(p pVar, int i, int i2, int i3) {
        pVar.l(i, i2, i3);
        this.f20493a = pVar;
        this.f20494b = i;
        this.f20495c = i2;
        this.f20496d = i3;
    }

    public r(p pVar, long j) {
        int i = (int) j;
        pVar.j();
        if (i < pVar.f20489e || i >= pVar.f20490f) {
            throw new j$.time.a("Hijrah date out of range");
        }
        int binarySearch = Arrays.binarySearch(pVar.f20488d, i);
        binarySearch = binarySearch < 0 ? (-binarySearch) - 2 : binarySearch;
        int i2 = pVar.f20491g;
        int[] iArr = {(binarySearch + i2) / 12, ((i2 + binarySearch) % 12) + 1, (i - pVar.f20488d[binarySearch]) + 1};
        this.f20493a = pVar;
        this.f20494b = iArr[0];
        this.f20495c = iArr[1];
        this.f20496d = iArr[2];
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new F((byte) 6, this);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final n D() {
        return s.AH;
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: E */
    public final InterfaceC0261b s(long j, j$.time.temporal.s sVar) {
        return (r) super.s(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b H(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = this.f20494b + ((int) j);
        int i = (int) j2;
        if (j2 == i) {
            return M(i, this.f20495c, this.f20496d);
        }
        throw new ArithmeticException();
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: I */
    public final InterfaceC0261b j(j$.time.temporal.o oVar) {
        return (r) super.j(oVar);
    }

    public final int J() {
        return this.f20493a.C(this.f20494b, this.f20495c - 1) + this.f20496d;
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final r F(long j) {
        return new r(this.f20493a, x() + j);
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: L, reason: merged with bridge method [inline-methods] */
    public final r G(long j) {
        if (j == 0) {
            return this;
        }
        long j2 = (this.f20494b * 12) + (this.f20495c - 1) + j;
        p pVar = this.f20493a;
        long O = j$.com.android.tools.r8.a.O(j2, 12L);
        int i = pVar.f20491g;
        if (O >= i / 12 && O <= (((pVar.f20488d.length - 1) + i) / 12) - 1) {
            return M((int) O, ((int) j$.com.android.tools.r8.a.N(j2, 12L)) + 1, this.f20496d);
        }
        throw new j$.time.a("Invalid Hijrah year: " + O);
    }

    public final r M(int i, int i2, int i3) {
        int o = this.f20493a.o(i, i2);
        if (i3 > o) {
            i3 = o;
        }
        return new r(this.f20493a, i, i2, i3);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    /* renamed from: N, reason: merged with bridge method [inline-methods] */
    public final r c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (r) super.c(j, qVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        this.f20493a.w(aVar).b(j, aVar);
        int i = (int) j;
        switch (q.f20492a[aVar.ordinal()]) {
            case 1:
                return M(this.f20494b, this.f20495c, i);
            case 2:
                return F(Math.min(i, this.f20493a.C(this.f20494b, 12)) - J());
            case 3:
                return F((j - w(j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH)) * 7);
            case 4:
                return F(j - (((int) j$.com.android.tools.r8.a.N(x() + 3, 7)) + 1));
            case 5:
                return F(j - w(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH));
            case 6:
                return F(j - w(j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR));
            case 7:
                return new r(this.f20493a, j);
            case 8:
                return F((j - w(j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR)) * 7);
            case 9:
                return M(this.f20494b, i, this.f20496d);
            case 10:
                return G(j - (((this.f20494b * 12) + this.f20495c) - 1));
            case 11:
                if (this.f20494b < 1) {
                    i = 1 - i;
                }
                return M(i, this.f20495c, this.f20496d);
            case 12:
                return M(i, this.f20495c, this.f20496d);
            case 13:
                return M(1 - this.f20494b, this.f20495c, this.f20496d);
            default:
                throw new j$.time.temporal.t(j$.time.b.a("Unsupported field: ", qVar));
        }
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final m a() {
        return this.f20493a;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b, j$.time.temporal.m
    public final InterfaceC0261b d(long j, j$.time.temporal.s sVar) {
        return (r) super.d(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.s sVar) {
        return (r) super.d(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            r rVar = (r) obj;
            if (this.f20494b == rVar.f20494b && this.f20495c == rVar.f20495c && this.f20496d == rVar.f20496d && this.f20493a.equals(rVar.f20493a)) {
                return true;
            }
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final int hashCode() {
        int i = this.f20494b;
        int i2 = this.f20495c;
        int i3 = this.f20496d;
        this.f20493a.getClass();
        return (((i << 11) + (i2 << 6)) + i3) ^ ((i & (-2048)) ^ 2100100019);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (r) super.j(localDate);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.j(this);
        }
        if (!j$.com.android.tools.r8.a.p(this, qVar)) {
            throw new j$.time.temporal.t(j$.time.b.a("Unsupported field: ", qVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        int i = q.f20492a[aVar.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? this.f20493a.w(aVar) : j$.time.temporal.u.e(1L, 5L) : j$.time.temporal.u.e(1L, this.f20493a.C(this.f20494b, 12)) : j$.time.temporal.u.e(1L, this.f20493a.o(this.f20494b, this.f20495c));
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return (r) super.s(j, bVar);
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        switch (q.f20492a[((j$.time.temporal.a) qVar).ordinal()]) {
            case 1:
                return this.f20496d;
            case 2:
                return J();
            case 3:
                return ((this.f20496d - 1) / 7) + 1;
            case 4:
                return ((int) j$.com.android.tools.r8.a.N(x() + 3, 7)) + 1;
            case 5:
                return ((this.f20496d - 1) % 7) + 1;
            case 6:
                return ((J() - 1) % 7) + 1;
            case 7:
                return x();
            case 8:
                return ((J() - 1) / 7) + 1;
            case 9:
                return this.f20495c;
            case 10:
                return ((this.f20494b * 12) + this.f20495c) - 1;
            case 11:
                return this.f20494b;
            case 12:
                return this.f20494b;
            case 13:
                return this.f20494b <= 1 ? 0 : 1;
            default:
                throw new j$.time.temporal.t(j$.time.b.a("Unsupported field: ", qVar));
        }
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final long x() {
        return this.f20493a.l(this.f20494b, this.f20495c, this.f20496d);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final InterfaceC0264e y(j$.time.i iVar) {
        return new C0266g(this, iVar);
    }
}
