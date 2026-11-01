package j$.time.format;

import java.util.Locale;

/* loaded from: classes2.dex */
public final class m implements f {

    /* renamed from: a, reason: collision with root package name */
    public final j$.time.temporal.q f20546a;

    /* renamed from: b, reason: collision with root package name */
    public final v f20547b;

    /* renamed from: c, reason: collision with root package name */
    public final b f20548c;

    /* renamed from: d, reason: collision with root package name */
    public volatile i f20549d;

    public m(j$.time.temporal.q qVar, v vVar, b bVar) {
        this.f20546a = qVar;
        this.f20547b = vVar;
        this.f20548c = bVar;
    }

    @Override // j$.time.format.f
    public final boolean i(p pVar, StringBuilder sb) {
        String a2;
        Long a3 = pVar.a(this.f20546a);
        if (a3 == null) {
            return false;
        }
        j$.time.chrono.m mVar = (j$.time.chrono.m) pVar.f20560a.l(j$.time.temporal.r.f20621b);
        if (mVar == null || mVar == j$.time.chrono.t.f20498c) {
            b bVar = this.f20548c;
            long longValue = a3.longValue();
            v vVar = this.f20547b;
            Locale locale = pVar.f20561b.f20521b;
            a2 = bVar.f20526a.a(longValue, vVar);
        } else {
            b bVar2 = this.f20548c;
            long longValue2 = a3.longValue();
            v vVar2 = this.f20547b;
            Locale locale2 = pVar.f20561b.f20521b;
            a2 = bVar2.f20526a.a(longValue2, vVar2);
        }
        if (a2 != null) {
            sb.append(a2);
            return true;
        }
        if (this.f20549d == null) {
            this.f20549d = new i(this.f20546a, 1, 19, u.NORMAL);
        }
        return this.f20549d.i(pVar, sb);
    }

    public final String toString() {
        v vVar = v.FULL;
        j$.time.temporal.q qVar = this.f20546a;
        v vVar2 = this.f20547b;
        if (vVar2 == vVar) {
            return "Text(" + qVar + ")";
        }
        return "Text(" + qVar + "," + vVar2 + ")";
    }
}
