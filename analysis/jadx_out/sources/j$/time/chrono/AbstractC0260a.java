package j$.time.chrono;

import j$.time.LocalDateTime;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Locale;

/* renamed from: j$.time.chrono.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public abstract class AbstractC0260a implements m {

    /* renamed from: a, reason: collision with root package name */
    public static final ConcurrentHashMap f20470a = new ConcurrentHashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f20471b = new ConcurrentHashMap();

    static {
        new Locale("ja", "JP", "JP");
    }

    public static m i(m mVar, String str) {
        String n;
        m mVar2 = (m) f20470a.putIfAbsent(str, mVar);
        if (mVar2 == null && (n = mVar.n()) != null) {
            f20471b.putIfAbsent(n, mVar);
        }
        return mVar2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return h().compareTo(((m) obj).h());
    }

    @Override // j$.time.chrono.m
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AbstractC0260a) && h().compareTo(((AbstractC0260a) obj).h()) == 0;
    }

    @Override // j$.time.chrono.m
    public final int hashCode() {
        return getClass().hashCode() ^ h().hashCode();
    }

    @Override // j$.time.chrono.m
    public final String toString() {
        return h();
    }

    @Override // j$.time.chrono.m
    public InterfaceC0264e u(LocalDateTime localDateTime) {
        try {
            return t(localDateTime).y(j$.time.i.E(localDateTime));
        } catch (j$.time.a e2) {
            throw new j$.time.a("Unable to obtain ChronoLocalDateTime from TemporalAccessor: " + LocalDateTime.class, e2);
        }
    }
}
