package g;

import java.util.LinkedHashSet;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class crv extends cw {
    public final /* synthetic */ int j = 1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public crv() {
        super(c.b.d.class);
        TimeUnit timeUnit = TimeUnit.MINUTES;
        bff.p(timeUnit, "repeatIntervalTimeUnit");
        fkj fkjVar = (fkj) this.f13614b;
        long millis = timeUnit.toMillis(60L);
        fkjVar.getClass();
        if (millis < 900000) {
            cyl.f().getClass();
        }
        long j = millis < 900000 ? 900000L : millis;
        millis = millis < 900000 ? 900000L : millis;
        if (j < 900000) {
            cyl.f().getClass();
        }
        fkjVar.f16926a = j >= 900000 ? j : 900000L;
        if (millis < 300000) {
            cyl.f().getClass();
        }
        if (millis > fkjVar.f16926a) {
            cyl.f().getClass();
        }
        long j2 = fkjVar.f16926a;
        if (300000 > j2) {
            throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j2 + " is less than minimum 300000.");
        }
        if (millis < 300000) {
            millis = 300000;
        } else if (millis > j2) {
            millis = j2;
        }
        fkjVar.p = millis;
    }

    public /* synthetic */ crv(Class cls) {
        super(cls);
    }

    @Override // g.cw
    public final dze h() {
        switch (this.j) {
            case 0:
                return new gmw((UUID) this.f13613a, (fkj) this.f13614b, (LinkedHashSet) this.f13615c);
            default:
                fkj fkjVar = (fkj) this.f13614b;
                if (fkjVar.s) {
                    throw new IllegalArgumentException("PeriodicWorkRequests cannot be expedited");
                }
                return new dqj((UUID) this.f13613a, fkjVar, (LinkedHashSet) this.f13615c);
        }
    }
}
