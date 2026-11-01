package j$.time.chrono;

import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class B extends AbstractC0260a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final B f20459c = new B();
    private static final long serialVersionUID = 1039765215346859963L;

    private B() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.m
    public final String h() {
        return "Minguo";
    }

    public final j$.time.temporal.u j(j$.time.temporal.a aVar) {
        int i = A.f20458a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.u uVar = j$.time.temporal.a.PROLEPTIC_MONTH.f20602b;
            return j$.time.temporal.u.e(uVar.f20627a - 22932, uVar.f20630d - 22932);
        }
        if (i == 2) {
            j$.time.temporal.u uVar2 = j$.time.temporal.a.YEAR.f20602b;
            return j$.time.temporal.u.f(uVar2.f20630d - 1911, (-uVar2.f20627a) + 1912);
        }
        if (i != 3) {
            return aVar.f20602b;
        }
        j$.time.temporal.u uVar3 = j$.time.temporal.a.YEAR.f20602b;
        return j$.time.temporal.u.e(uVar3.f20627a - 1911, uVar3.f20630d - 1911);
    }

    @Override // j$.time.chrono.m
    public final String n() {
        return "roc";
    }

    @Override // j$.time.chrono.m
    public final n q(int i) {
        if (i == 0) {
            return E.BEFORE_ROC;
        }
        if (i == 1) {
            return E.ROC;
        }
        throw new j$.time.a("Invalid era: " + i);
    }

    @Override // j$.time.chrono.m
    public final InterfaceC0261b t(j$.time.temporal.n nVar) {
        return nVar instanceof D ? (D) nVar : new D(LocalDate.E(nVar));
    }

    public Object writeReplace() {
        return new F((byte) 1, this);
    }
}
