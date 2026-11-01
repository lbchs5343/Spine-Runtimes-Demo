package j$.time.chrono;

import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class H extends AbstractC0260a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final H f20466c = new H();
    private static final long serialVersionUID = 2775954514031616474L;

    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        HashMap hashMap3 = new HashMap();
        hashMap.put("en", new String[]{"BB", "BE"});
        hashMap.put("th", new String[]{"BB", "BE"});
        hashMap2.put("en", new String[]{"B.B.", "B.E."});
        hashMap2.put("th", new String[]{"พ.ศ.", "ปีก่อนคริสต์กาลที่"});
        hashMap3.put("en", new String[]{"Before Buddhist", "Budhhist Era"});
        hashMap3.put("th", new String[]{"พุทธศักราช", "ปีก่อนคริสต์กาลที่"});
    }

    private H() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.m
    public final String h() {
        return "ThaiBuddhist";
    }

    public final j$.time.temporal.u j(j$.time.temporal.a aVar) {
        int i = G.f20465a[aVar.ordinal()];
        if (i == 1) {
            j$.time.temporal.u uVar = j$.time.temporal.a.PROLEPTIC_MONTH.f20602b;
            return j$.time.temporal.u.e(uVar.f20627a + 6516, uVar.f20630d + 6516);
        }
        if (i == 2) {
            j$.time.temporal.u uVar2 = j$.time.temporal.a.YEAR.f20602b;
            return j$.time.temporal.u.f((-(uVar2.f20627a + 543)) + 1, uVar2.f20630d + 543);
        }
        if (i != 3) {
            return aVar.f20602b;
        }
        j$.time.temporal.u uVar3 = j$.time.temporal.a.YEAR.f20602b;
        return j$.time.temporal.u.e(uVar3.f20627a + 543, uVar3.f20630d + 543);
    }

    @Override // j$.time.chrono.m
    public final String n() {
        return "buddhist";
    }

    @Override // j$.time.chrono.m
    public final n q(int i) {
        if (i == 0) {
            return K.BEFORE_BE;
        }
        if (i == 1) {
            return K.BE;
        }
        throw new j$.time.a("Invalid era: " + i);
    }

    @Override // j$.time.chrono.m
    public final InterfaceC0261b t(j$.time.temporal.n nVar) {
        return nVar instanceof J ? (J) nVar : new J(LocalDate.E(nVar));
    }

    public Object writeReplace() {
        return new F((byte) 1, this);
    }
}
