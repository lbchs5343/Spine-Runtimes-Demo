package g;

import android.content.Context;
import android.content.Intent;
import androidx.work.impl.background.systemalarm.SystemAlarmService;

/* loaded from: classes.dex */
public final class goj implements giw {

    /* renamed from: a, reason: collision with root package name */
    public final Context f18495a;

    static {
        cyl.g("SystemAlarmScheduler");
    }

    public goj(Context context) {
        this.f18495a = context.getApplicationContext();
    }

    @Override // g.giw
    public final void q(String str) {
        String str2 = cip.f12941a;
        Context context = this.f18495a;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_STOP_WORK");
        intent.putExtra("KEY_WORKSPEC_ID", str);
        context.startService(intent);
    }

    @Override // g.giw
    public final void r(fkj... fkjVarArr) {
        for (fkj fkjVar : fkjVarArr) {
            cyl f2 = cyl.f();
            String str = fkjVar.h;
            f2.getClass();
            gxm j = awt.j(fkjVar);
            String str2 = cip.f12941a;
            Context context = this.f18495a;
            Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
            intent.setAction("ACTION_SCHEDULE_WORK");
            cip.g(intent, j);
            context.startService(intent);
        }
    }

    @Override // g.giw
    public final boolean t() {
        return true;
    }
}
