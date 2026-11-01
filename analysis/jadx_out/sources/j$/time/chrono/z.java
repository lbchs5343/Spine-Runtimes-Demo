package j$.time.chrono;

import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class z implements n, Serializable {

    /* renamed from: d, reason: collision with root package name */
    public static final z f20507d;

    /* renamed from: e, reason: collision with root package name */
    public static final z[] f20508e;
    private static final long serialVersionUID = 1466499369062886794L;

    /* renamed from: a, reason: collision with root package name */
    public final transient int f20509a;

    /* renamed from: b, reason: collision with root package name */
    public final transient LocalDate f20510b;

    /* renamed from: c, reason: collision with root package name */
    public final transient String f20511c;

    static {
        z zVar = new z(-1, LocalDate.L(1868, 1, 1), "Meiji");
        f20507d = zVar;
        f20508e = new z[]{zVar, new z(0, LocalDate.L(1912, 7, 30), "Taisho"), new z(1, LocalDate.L(1926, 12, 25), "Showa"), new z(2, LocalDate.L(1989, 1, 8), "Heisei"), new z(3, LocalDate.L(2019, 5, 1), "Reiwa")};
    }

    public z(int i, LocalDate localDate, String str) {
        this.f20509a = i;
        this.f20510b = localDate;
        this.f20511c = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x001f, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x001d, code lost:
    
        if (r6.x() < r0.x()) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0010, code lost:
    
        if (r6.C(r0) < 0) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0021, code lost:
    
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static z h(LocalDate localDate) {
        boolean z;
        LocalDate localDate2 = y.f20503d;
        if (j$.time.b.b(localDate2)) {
            localDate.getClass();
        }
        if (z) {
            throw new j$.time.a("JapaneseDate before Meiji 6 are not supported");
        }
        for (int length = f20508e.length - 1; length >= 0; length--) {
            z zVar = f20508e[length];
            if (localDate.compareTo(zVar.f20510b) >= 0) {
                return zVar;
            }
        }
        return null;
    }

    public static z q(int i) {
        int i2 = i + 1;
        if (i2 >= 0) {
            z[] zVarArr = f20508e;
            if (i2 < zVarArr.length) {
                return zVarArr[i2];
            }
        }
        throw new j$.time.a("Invalid era: " + i);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new F((byte) 5, this);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ boolean e(j$.time.temporal.q qVar) {
        return j$.com.android.tools.r8.a.q(this, qVar);
    }

    @Override // j$.time.chrono.n
    public final int getValue() {
        return this.f20509a;
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ int i(j$.time.temporal.q qVar) {
        return j$.com.android.tools.r8.a.l(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.u k(j$.time.temporal.q qVar) {
        j$.time.temporal.a aVar = j$.time.temporal.a.ERA;
        return qVar == aVar ? w.f20501c.j(aVar) : j$.time.temporal.r.d(this, qVar);
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ Object l(j$.time.format.a aVar) {
        return j$.com.android.tools.r8.a.u(this, aVar);
    }

    public final z n() {
        if (this == f20508e[r0.length - 1]) {
            return null;
        }
        return q(this.f20509a + 1);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m o(j$.time.temporal.m mVar) {
        return mVar.c(getValue(), j$.time.temporal.a.ERA);
    }

    public final String toString() {
        return this.f20511c;
    }

    @Override // j$.time.temporal.n
    public final /* synthetic */ long w(j$.time.temporal.q qVar) {
        return j$.com.android.tools.r8.a.n(this, qVar);
    }
}
