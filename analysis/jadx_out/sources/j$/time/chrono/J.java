package j$.time.chrono;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.time.LocalDate;
import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;

/* loaded from: classes2.dex */
public final class J extends AbstractC0263d {
    private static final long serialVersionUID = -8722293800195731463L;

    /* renamed from: a, reason: collision with root package name */
    public final transient LocalDate f20468a;

    public J(LocalDate localDate) {
        Objects.requireNonNull(localDate, "isoDate");
        this.f20468a = localDate;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new F((byte) 8, this);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final n D() {
        return J() >= 1 ? K.BE : K.BEFORE_BE;
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: E */
    public final InterfaceC0261b s(long j, j$.time.temporal.s sVar) {
        return (J) super.s(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b F(long j) {
        return L(this.f20468a.O(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b G(long j) {
        return L(this.f20468a.P(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final InterfaceC0261b H(long j) {
        return L(this.f20468a.Q(j));
    }

    @Override // j$.time.chrono.AbstractC0263d
    /* renamed from: I */
    public final InterfaceC0261b j(j$.time.temporal.o oVar) {
        return (J) super.j(oVar);
    }

    public final int J() {
        return this.f20468a.f20432a + MediaPlayer.MEDIA_PLAYER_OPTION_SET_LIVE_ABR_NON_KEY_FRAME_SWITCH_BUFFER_THRESHOLD;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0022, code lost:
    
        if (r2 != 7) goto L20;
     */
    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final J c(long j, j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return (J) super.c(j, qVar);
        }
        j$.time.temporal.a aVar = (j$.time.temporal.a) qVar;
        if (w(aVar) == j) {
            return this;
        }
        int[] iArr = I.f20467a;
        int i = iArr[aVar.ordinal()];
        if (i != 4) {
            if (i == 5) {
                H.f20466c.j(aVar).b(j, aVar);
                long J = J() * 12;
                return L(this.f20468a.P(j - ((J + r10.f20433b) - 1)));
            }
            if (i != 6) {
            }
        }
        int a2 = H.f20466c.j(aVar).a(j, aVar);
        int i2 = iArr[aVar.ordinal()];
        if (i2 == 4) {
            LocalDate localDate = this.f20468a;
            if (J() < 1) {
                a2 = 1 - a2;
            }
            return L(localDate.V(a2 - 543));
        }
        if (i2 == 6) {
            return L(this.f20468a.V(a2 - 543));
        }
        if (i2 == 7) {
            return L(this.f20468a.V((-542) - J()));
        }
        return L(this.f20468a.c(j, qVar));
    }

    public final J L(LocalDate localDate) {
        return localDate.equals(this.f20468a) ? this : new J(localDate);
    }

    @Override // j$.time.chrono.InterfaceC0261b
    public final m a() {
        return H.f20466c;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b, j$.time.temporal.m
    public final InterfaceC0261b d(long j, j$.time.temporal.s sVar) {
        return (J) super.d(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m d(long j, j$.time.temporal.s sVar) {
        return (J) super.d(j, sVar);
    }

    @Override // j$.time.chrono.AbstractC0263d
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof J) {
            return this.f20468a.equals(((J) obj).f20468a);
        }
        return false;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final int hashCode() {
        H.f20466c.getClass();
        return this.f20468a.hashCode() ^ 146118545;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m j(LocalDate localDate) {
        return (J) super.j(localDate);
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
        int i = I.f20467a[aVar.ordinal()];
        if (i == 1 || i == 2 || i == 3) {
            return this.f20468a.k(qVar);
        }
        if (i != 4) {
            return H.f20466c.j(aVar);
        }
        j$.time.temporal.u uVar = j$.time.temporal.a.YEAR.f20602b;
        return j$.time.temporal.u.e(1L, J() <= 0 ? (-(uVar.f20627a + 543)) + 1 : 543 + uVar.f20630d);
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.temporal.m
    public final j$.time.temporal.m s(long j, j$.time.temporal.b bVar) {
        return (J) super.s(j, bVar);
    }

    @Override // j$.time.temporal.n
    public final long w(j$.time.temporal.q qVar) {
        if (!(qVar instanceof j$.time.temporal.a)) {
            return qVar.l(this);
        }
        int i = I.f20467a[((j$.time.temporal.a) qVar).ordinal()];
        if (i == 4) {
            int J = J();
            if (J < 1) {
                J = 1 - J;
            }
            return J;
        }
        if (i == 5) {
            return ((J() * 12) + this.f20468a.f20433b) - 1;
        }
        if (i == 6) {
            return J();
        }
        if (i != 7) {
            return this.f20468a.w(qVar);
        }
        return J() < 1 ? 0 : 1;
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final long x() {
        return this.f20468a.x();
    }

    @Override // j$.time.chrono.AbstractC0263d, j$.time.chrono.InterfaceC0261b
    public final InterfaceC0264e y(j$.time.i iVar) {
        return new C0266g(this, iVar);
    }
}
