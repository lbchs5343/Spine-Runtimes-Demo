package g;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import com.bykv.vk.component.ttvideo.player.C;

/* loaded from: classes.dex */
public abstract class daf {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f13847a = 0;

    static {
        cyl.g("Alarms");
    }

    public static void b(Context context, gxm gxmVar, int i) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        String str = cip.f12941a;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        cip.g(intent, gxmVar);
        PendingIntent service = PendingIntent.getService(context, i, intent, Build.VERSION.SDK_INT >= 23 ? 603979776 : C.ENCODING_PCM_A_LAW);
        if (service == null || alarmManager == null) {
            return;
        }
        cyl f2 = cyl.f();
        gxmVar.toString();
        f2.getClass();
        alarmManager.cancel(service);
    }

    public static void c(Context context, WorkDatabase workDatabase, gxm gxmVar, long j) {
        duw g2 = workDatabase.g();
        cgv o = g2.o(gxmVar);
        if (o != null) {
            int i = o.f12857c;
            b(context, gxmVar, i);
            d(context, gxmVar, i, j);
        } else {
            Object ai = workDatabase.ai(new amb(2, new dcq(workDatabase)));
            bff.e(ai, "workDatabase.runInTransa…NAGER_ID_KEY) }\n        )");
            int intValue = ((Number) ai).intValue();
            g2.u(new cgv(gxmVar.f18956a, gxmVar.f18957b, intValue));
            d(context, gxmVar, intValue, j);
        }
    }

    public static void d(Context context, gxm gxmVar, int i, long j) {
        AlarmManager alarmManager = (AlarmManager) context.getSystemService("alarm");
        int i2 = Build.VERSION.SDK_INT >= 23 ? 201326592 : 134217728;
        String str = cip.f12941a;
        Intent intent = new Intent(context, (Class<?>) SystemAlarmService.class);
        intent.setAction("ACTION_DELAY_MET");
        cip.g(intent, gxmVar);
        PendingIntent service = PendingIntent.getService(context, i, intent, i2);
        if (alarmManager != null) {
            alarmManager.setExact(0, j, service);
        }
    }
}
