package d.b;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.media.projection.MediaProjectionConfig;
import android.media.projection.MediaProjectionManager;
import android.os.Build;
import android.os.Bundle;
import android.service.quicksettings.TileService;
import cn.trinea.android.developertools.R;
import g.aco;
import g.cch;
import g.cdo;
import g.cro;
import g.dyd;
import g.dzm;
import g.eha;
import g.fdp;
import g.fyt;
import g.zc;

/* loaded from: classes.dex */
public class a extends cdo implements eha {

    /* renamed from: d, reason: collision with root package name */
    public fdp f9824d;

    /* renamed from: e, reason: collision with root package name */
    public aco f9825e;

    /* renamed from: f, reason: collision with root package name */
    public Intent f9826f;

    @Override // g.guy
    public final String g() {
        return getString(R.string.cp_window_permission_usage);
    }

    @Override // g.fcd
    public final void h(String str) {
        MediaProjectionConfig createConfigForDefaultDisplay;
        Intent createScreenCaptureIntent;
        if ("android.settings.action.MANAGE_OVERLAY_PERMISSION".equals(str)) {
            if (this.f9824d != null) {
                int i = Build.VERSION.SDK_INT;
                int i2 = cdo.i;
                if (i < 34) {
                    startActivityForResult(this.j.createScreenCaptureIntent(), i2);
                    return;
                }
                MediaProjectionManager mediaProjectionManager = this.j;
                createConfigForDefaultDisplay = MediaProjectionConfig.createConfigForDefaultDisplay();
                createScreenCaptureIntent = mediaProjectionManager.createScreenCaptureIntent(createConfigForDefaultDisplay);
                startActivityForResult(createScreenCaptureIntent, i2);
                return;
            }
            return;
        }
        if ("cn.trinea.action.MANAGE_MEDIA_PROJECTION".equals(str)) {
            fdp fdpVar = this.f9824d;
            if (fdpVar != null) {
                NotificationManager notificationManager = (NotificationManager) fdpVar.getSystemService("notification");
                String num = Integer.toString(100001);
                if (dyd.bp(26)) {
                    cch.s();
                    NotificationChannel v = cch.v(num, fdpVar.getString(R.string.dab));
                    v.enableLights(true);
                    v.setLightColor(-16776961);
                    v.enableVibration(false);
                    v.setLockscreenVisibility(0);
                    notificationManager.createNotificationChannel(v);
                }
                PendingIntent activity = PendingIntent.getActivity(fdpVar, 0, new Intent("android.intent.action.MAIN"), 201326592);
                zc zcVar = new zc(fdpVar, num);
                zcVar.s.icon = R.drawable.dab_gray;
                zcVar.u(2, true);
                zcVar.f20383d = TileService.EXTRA_SERVICE;
                zcVar.r = activity;
                zcVar.f20386g = zc.t(fdpVar.getString(R.string.dab));
                Notification y = zcVar.y();
                if (dyd.bp(29)) {
                    fdpVar.startForeground(100001, y, 32);
                } else {
                    fdpVar.startForeground(100001, y);
                }
            }
            finish();
        }
    }

    @Override // g.cdo, g.dms, androidx.fragment.app.u, androidx.activity.ComponentActivity, g.emf, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.k = this;
        if (!cro.ba(this.k, cro.aj(getIntent()))) {
            finish();
            return;
        }
        if (dzm.bd(this) < 2245) {
            finish();
            return;
        }
        this.f9825e = new aco(0, this);
        Intent intent = new Intent(this, (Class<?>) d.a.a.class);
        this.f9826f = intent;
        startService(intent);
        bindService(this.f9826f, this.f9825e, 1);
    }

    @Override // g.fcd
    public final void onDenied(String str) {
        fyt.d(this.k, "android.permission.SYSTEM_ALERT_WINDOW");
        finish();
    }

    @Override // g.dms, g.ub, androidx.fragment.app.u, android.app.Activity
    public final void onDestroy() {
        fdp fdpVar = this.f9824d;
        if (fdpVar != null && !fdpVar.n) {
            aco acoVar = this.f9825e;
            if (acoVar != null) {
                unbindService(acoVar);
            }
            Intent intent = this.f9826f;
            if (intent != null) {
                stopService(intent);
            }
        }
        super.onDestroy();
    }
}
