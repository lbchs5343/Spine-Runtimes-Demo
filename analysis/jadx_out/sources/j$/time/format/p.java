package j$.time.format;

import j$.time.ZoneId;
import j$.time.chrono.InterfaceC0261b;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public final j$.time.temporal.n f20560a;

    /* renamed from: b, reason: collision with root package name */
    public final DateTimeFormatter f20561b;

    /* renamed from: c, reason: collision with root package name */
    public int f20562c;

    public p(j$.time.temporal.n nVar, DateTimeFormatter dateTimeFormatter) {
        j$.time.chrono.m mVar = dateTimeFormatter.f20523d;
        if (mVar != null) {
            j$.time.chrono.m mVar2 = (j$.time.chrono.m) nVar.l(j$.time.temporal.r.f20621b);
            ZoneId zoneId = (ZoneId) nVar.l(j$.time.temporal.r.f20620a);
            InterfaceC0261b interfaceC0261b = null;
            mVar = Objects.equals(mVar, mVar2) ? null : mVar;
            Objects.equals(null, zoneId);
            if (mVar != null) {
                j$.time.chrono.m mVar3 = mVar != null ? mVar : mVar2;
                if (mVar != null) {
                    if (nVar.e(j$.time.temporal.a.EPOCH_DAY)) {
                        interfaceC0261b = mVar3.t(nVar);
                    } else if (mVar != j$.time.chrono.t.f20498c || mVar2 != null) {
                        for (j$.time.temporal.a aVar : j$.time.temporal.a.values()) {
                            if (aVar.isDateBased() && nVar.e(aVar)) {
                                throw new j$.time.a("Unable to apply override chronology '" + mVar + "' because the temporal object being formatted contains date fields but does not represent a whole date: " + nVar);
                            }
                        }
                    }
                }
                nVar = new o(interfaceC0261b, nVar, mVar3, zoneId);
            }
        }
        this.f20560a = nVar;
        this.f20561b = dateTimeFormatter;
    }

    public final Long a(j$.time.temporal.q qVar) {
        int i = this.f20562c;
        j$.time.temporal.n nVar = this.f20560a;
        if (i <= 0 || nVar.e(qVar)) {
            return Long.valueOf(nVar.w(qVar));
        }
        return null;
    }

    public final String toString() {
        return this.f20560a.toString();
    }
}
