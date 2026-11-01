package g;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.PowerManager;
import androidx.work.impl.foreground.SystemForegroundService;
import java.util.UUID;

/* loaded from: classes.dex */
public final /* synthetic */ class nz implements cvw {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ dju f19744a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f19745b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ dcr f19746c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ UUID f19747d;

    public /* synthetic */ nz(dcr dcrVar, UUID uuid, dju djuVar, Context context) {
        this.f19746c = dcrVar;
        this.f19747d = uuid;
        this.f19744a = djuVar;
        this.f19745b = context;
    }

    @Override // g.cvw
    public final Object invoke() {
        dcr dcrVar = this.f19746c;
        UUID uuid = this.f19747d;
        dju djuVar = this.f19744a;
        Context context = this.f19745b;
        String uuid2 = uuid.toString();
        fkj p = dcrVar.f13979c.p(uuid2);
        if (p == null || p.q.b()) {
            throw new IllegalStateException("Calls to setForegroundAsync() must complete before a ListenableWorker signals completion of work by returning an instance of Result.");
        }
        egu eguVar = dcrVar.f13978b;
        synchronized (eguVar.f15515c) {
            try {
                cyl.f().getClass();
                dly dlyVar = (dly) eguVar.l.remove(uuid2);
                if (dlyVar != null) {
                    if (eguVar.f15518f == null) {
                        PowerManager.WakeLock b2 = qj.b(eguVar.i, "ProcessorForegroundLck");
                        eguVar.f15518f = b2;
                        b2.acquire();
                    }
                    eguVar.f15519g.put(uuid2, dlyVar);
                    Intent m = gmu.m(eguVar.i, awt.j(dlyVar.f14408g), djuVar);
                    Context context2 = eguVar.i;
                    if (Build.VERSION.SDK_INT >= 26) {
                        cmb.a(context2, m);
                    } else {
                        context2.startService(m);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        gxm j = awt.j(p);
        String str = gmu.f18417b;
        Intent intent = new Intent(context, (Class<?>) SystemForegroundService.class);
        intent.setAction("ACTION_NOTIFY");
        intent.putExtra("KEY_NOTIFICATION_ID", djuVar.f14289a);
        intent.putExtra("KEY_FOREGROUND_SERVICE_TYPE", djuVar.f14290b);
        intent.putExtra("KEY_NOTIFICATION", djuVar.f14291c);
        intent.putExtra("KEY_WORKSPEC_ID", j.f18956a);
        intent.putExtra("KEY_GENERATION", j.f18957b);
        context.startService(intent);
        return null;
    }
}
