package g;

import androidx.work.impl.WorkDatabase;
import java.io.IOException;
import java.io.StringWriter;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final /* synthetic */ class amb implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10461a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10462b;

    public /* synthetic */ amb(int i, Object obj) {
        this.f10461a = i;
        this.f10462b = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        switch (this.f10461a) {
            case 0:
                ba baVar = (ba) this.f10462b;
                bkz e2 = baVar.e(baVar.f11147b, null);
                eem eemVar = ba.f11146a;
                eemVar.getClass();
                Class<?> cls = e2.getClass();
                StringWriter stringWriter = new StringWriter();
                try {
                    eemVar.m(e2, cls, eemVar.o(stringWriter));
                    return stringWriter.toString();
                } catch (IOException e3) {
                    throw new gyr(e3);
                }
            case 1:
                ggg gggVar = (ggg) this.f10462b;
                cci cciVar = gggVar.f18082e;
                csv csvVar = csv.PACKAGE_INFO;
                sm smVar = cciVar.l;
                dwg dwgVar = cciVar.f12631ab;
                if (smVar.g(csvVar)) {
                    flc ac = dwgVar.ac();
                    ffr ffrVar = gggVar.j;
                    ffrVar.u((cci) ffrVar.f16721f, ac);
                    ac.m();
                    ac.g(cciVar);
                    gggVar.z(ac);
                    ac.m();
                    gggVar.ac(ac);
                    return ac.finish();
                }
                flc ac2 = dwgVar.ac();
                if (!cciVar.l.g(csv.DONT_GENERATE)) {
                    gggVar.y(ac2);
                    gggVar.t(ac2, false);
                }
                flc ac3 = dwgVar.ac();
                gggVar.z(ac3);
                ac3.m();
                gggVar.ac(ac3);
                ac3.c(ac2);
                return ac3.finish();
            default:
                WorkDatabase workDatabase = (WorkDatabase) ((dcq) this.f10462b).f13976f;
                Long ag = workDatabase.e().ag("next_alarm_manager_id");
                int longValue = ag != null ? (int) ag.longValue() : 0;
                workDatabase.e().p(new cmk("next_alarm_manager_id", Long.valueOf(longValue != Integer.MAX_VALUE ? longValue + 1 : 0)));
                return Integer.valueOf(longValue);
        }
    }
}
