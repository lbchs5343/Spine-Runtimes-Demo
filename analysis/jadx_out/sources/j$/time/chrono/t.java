package j$.time.chrono;

import j$.time.LocalDate;
import j$.time.LocalDateTime;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class t extends AbstractC0260a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final t f20498c = new t();
    private static final long serialVersionUID = -1440403870442975015L;

    private t() {
    }

    public static boolean j(long j) {
        if ((3 & j) == 0) {
            return j % 100 != 0 || j % 400 == 0;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.m
    public final String h() {
        return "ISO";
    }

    @Override // j$.time.chrono.m
    public final String n() {
        return "iso8601";
    }

    @Override // j$.time.chrono.m
    public final n q(int i) {
        if (i == 0) {
            return u.BCE;
        }
        if (i == 1) {
            return u.CE;
        }
        throw new j$.time.a("Invalid era: " + i);
    }

    @Override // j$.time.chrono.m
    public final InterfaceC0261b t(j$.time.temporal.n nVar) {
        return LocalDate.E(nVar);
    }

    @Override // j$.time.chrono.AbstractC0260a, j$.time.chrono.m
    public final InterfaceC0264e u(LocalDateTime localDateTime) {
        return LocalDateTime.D(localDateTime);
    }

    public Object writeReplace() {
        return new F((byte) 1, this);
    }
}
