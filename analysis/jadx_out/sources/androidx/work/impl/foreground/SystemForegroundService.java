package androidx.work.impl.foreground;

import android.app.NotificationManager;
import android.content.Intent;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.afo;
import g.ao;
import g.aqv;
import g.bff;
import g.cyl;
import g.fdx;
import g.fus;
import g.fxb;
import g.gfh;
import g.gkr;
import g.gmu;
import j$.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
public class SystemForegroundService extends fus {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f346a = 0;

    /* renamed from: b, reason: collision with root package name */
    public gmu f347b;

    /* renamed from: c, reason: collision with root package name */
    public NotificationManager f348c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f349d;

    static {
        cyl.g("SystemFgService");
    }

    public final void e() {
        this.f348c = (NotificationManager) getApplicationContext().getSystemService("notification");
        gmu gmuVar = new gmu(getApplicationContext());
        this.f347b = gmuVar;
        if (gmuVar.j != null) {
            cyl.f().i(gmu.f18417b, "A callback already exists.");
        } else {
            gmuVar.j = this;
        }
    }

    @Override // g.fus, android.app.Service
    public final void onCreate() {
        super.onCreate();
        e();
    }

    @Override // g.fus, android.app.Service
    public final void onDestroy() {
        super.onDestroy();
        this.f347b.n();
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f349d) {
            cyl.f().getClass();
            this.f347b.n();
            e();
            this.f349d = false;
        }
        if (intent == null) {
            return 3;
        }
        gmu gmuVar = this.f347b;
        gmuVar.getClass();
        String action = intent.getAction();
        if ("ACTION_START_FOREGROUND".equals(action)) {
            cyl f2 = cyl.f();
            Objects.toString(intent);
            f2.getClass();
            String stringExtra = intent.getStringExtra("KEY_WORKSPEC_ID");
            ((gkr) gmuVar.k).s(new gfh(25, gmuVar, stringExtra, false));
            gmuVar.p(intent);
            return 3;
        }
        if ("ACTION_NOTIFY".equals(action)) {
            gmuVar.p(intent);
            return 3;
        }
        if (!"ACTION_CANCEL_WORK".equals(action)) {
            if (!"ACTION_STOP_FOREGROUND".equals(action)) {
                return 3;
            }
            cyl.f().getClass();
            SystemForegroundService systemForegroundService = gmuVar.j;
            if (systemForegroundService == null) {
                return 3;
            }
            systemForegroundService.f349d = true;
            cyl.f().getClass();
            if (Build.VERSION.SDK_INT >= 26) {
                systemForegroundService.stopForeground(true);
            }
            systemForegroundService.stopSelf();
            return 3;
        }
        cyl f3 = cyl.f();
        Objects.toString(intent);
        f3.getClass();
        String stringExtra2 = intent.getStringExtra("KEY_WORKSPEC_ID");
        if (stringExtra2 == null || TextUtils.isEmpty(stringExtra2)) {
            return 3;
        }
        fxb fxbVar = gmuVar.i;
        UUID fromString = UUID.fromString(stringExtra2);
        fxbVar.getClass();
        bff.p(fromString, TTDownloadField.TT_ID);
        ao aoVar = fxbVar.aw.h;
        aqv aqvVar = (aqv) ((gkr) fxbVar.bb).f18325e;
        bff.e(aqvVar, "workManagerImpl.workTask…ecutor.serialTaskExecutor");
        afo.ag(aoVar, "CancelWorkById", aqvVar, new fdx(fxbVar, fromString));
        return 3;
    }

    @Override // android.app.Service
    public final void onTimeout(int i) {
        if (Build.VERSION.SDK_INT >= 35) {
            return;
        }
        this.f347b.o(2048);
    }

    public final void onTimeout(int i, int i2) {
        this.f347b.o(i2);
    }
}
