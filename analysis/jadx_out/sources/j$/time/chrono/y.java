package j$.time.chrono;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class y extends AbstractC0263d {

    /* renamed from: d, reason: collision with root package name */
    public static final LocalDate f20503d = LocalDate.L(1873, 1, 1);
    private static final long serialVersionUID = -305327627230580483L;

    /* renamed from: a, reason: collision with root package name */
    public final transient LocalDate f20504a;

    /* renamed from: b, reason: collision with root package name */
    public final transient z f20505b;

    /* renamed from: c, reason: collision with root package name */
    public final transient int f20506c;

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0020, code lost:
    
        if (r7.x() < r0.x()) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if (r7.C(r0) < 0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0024, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public y(LocalDate localDate) {
        boolean z;
        LocalDate localDate2 = f20503d;
        if (j$.time.b.b(localDate2)) {
            localDate.getClass();
        }
        if (z) {
            throw new j$.time.a("JapaneseDate before Meiji 6 is not supported");
        }
        z h = z.h(localDate);
        this.f20505b = h;
        this.f20506c = (localDate.f20432a - h.f20510b.f20432a) + 1;
        this.f20504a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new F((byte) 4, this);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final n D() {
        return this.f20505b;
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: E */
    public final InterfaceC0261b s(long j, j$.time.temporal.s sVar) {
        return (y) super.s(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b F(long j) {
        return K(this.f20504a.O(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b G(long j) {
        return K(this.f20504a.P(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b H(long j) {
        return K(this.f20504a.Q(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: I */
    public final InterfaceC0261b j(j$.time.temporal.o oVar) {
        return (y) super.j(oVar);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    /* renamed from: J, reason: merged with bridge method [inline-methods] */
    public final y c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (y) super.c(j, qVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        if (w(aVar) == j) {
            return this;
        }
        int[] iArr = x.f20502a;
        int i = iArr[aVar.ordinal()];
        if (i == 3 || i == 8 || i == 9) {
            int a2 = w.f20501c.j(aVar).a(j, aVar);
            int i2 = iArr[aVar.ordinal()];
            if (i2 == 3) {
                return L(this.f20505b, a2);
            }
            if (i2 == 8) {
                return L(z.q(a2), this.f20506c);
            }
            if (i2 == 9) {
                return K(this.f20504a.V(a2));
            }
        }
        return K(this.f20504a.c(j, qVar));
    }

    public final y K(LocalDate localDate) {
        return localDate.equals(this.f20504a) ? this : new y(localDate);
    }

    public final y L(z zVar, int i) {
        w.f20501c.getClass();
        if (zVar == null) {
            throw new ClassCastException("Era must be JapaneseEra");
        }
        int i2 = zVar.f20510b.f20432a;
        int i3 = (i2 + i) - 1;
        if (i != 1 && (i3 < -999999999 || i3 > 999999999 || i3 < i2 || zVar != z.h(LocalDate.L(i3, 1, 1)))) {
            throw new j$.time.a("Invalid yearOfEra value");
        }
        return K(this.f20504a.V(i3));
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final m a() {
        return w.f20501c;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b, j$.time.temporal.m
    public final InterfaceC0261b d(long j, j$.time.temporal.s sVar) {
        return (y) super.d(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.s sVar) {
        return (y) super.d(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b, j$.time.temporal.n
    public final boolean e(j$.time.temporal.q qVar) {
        if (qVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_MONTH || qVar == j$.time.temporal.a.ALIGNED_DAY_OF_WEEK_IN_YEAR || qVar == j$.time.temporal.a.ALIGNED_WEEK_OF_MONTH || qVar == j$.time.temporal.a.ALIGNED_WEEK_OF_YEAR) {
            return false;
        }
        return qVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) qVar).isDateBased() : qVar != null && qVar.i(this);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof y) {
            return this.f20504a.equals(((y) obj).f20504a);
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final int hashCode() {
        w.f20501c.getClass();
        return this.f20504a.hashCode() ^ (-688086063);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (y) super.j(localDate);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0071  */
    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        int i;
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.j(this);
        }
        if (!e(qVar)) {
            throw new j$.time.temporal.t(j$.time.b.a("Unsupported field: ", qVar));
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        int i2 = x.f20502a[aVar.ordinal()];
        if (i2 == 1) {
            return j$.time.temporal.u.e(1L, this.f20504a.K());
        }
        if (i2 != 2) {
            if (i2 != 3) {
                return w.f20501c.j(aVar);
            }
            z zVar = this.f20505b;
            int i3 = zVar.f20510b.f20432a;
            return zVar.n() != null ? j$.time.temporal.u.e(1L, (r6.f20510b.f20432a - i3) + 1) : j$.time.temporal.u.e(1L, 999999999 - i3);
        }
        z n = this.f20505b.n();
        if (n != null) {
            LocalDate localDate = n.f20510b;
            if (localDate.f20432a == this.f20504a.f20432a) {
                i = localDate.H() - 1;
                if (this.f20506c == 1) {
                    i -= this.f20505b.f20510b.H() - 1;
                }
                return j$.time.temporal.u.e(1L, i);
            }
        }
        i = this.f20504a.J() ? MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DECODE_TIME : MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME;
        if (this.f20506c == 1) {
        }
        return j$.time.temporal.u.e(1L, i);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return (y) super.s(j, bVar);
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        switch (x.f20502a[((j$.time.temporal.a) qVar).ordinal()]) {
            case 2:
                return this.f20506c == 1 ? (this.f20504a.H() - this.f20505b.f20510b.H()) + 1 : this.f20504a.H();
            case 3:
                return this.f20506c;
            case 4:
            case 5:
            case 6:
            case 7:
                throw new j$.time.temporal.t(j$.time.b.a("Unsupported field: ", qVar));
            case 8:
                return this.f20505b.f20509a;
            default:
                return this.f20504a.w(qVar);
        }
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final long x() {
        return this.f20504a.x();
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final InterfaceC0264e y(j$.time.i iVar) {
        return new C0266g(this, iVar);
    }
}
