package g;

import android.app.Activity;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import com.google.android.gms.internal.ads.zzbbs;
import com.google.android.gms.internal.ads.zzbcn;

/* loaded from: classes3.dex */
public class ajw extends eeb {
    @Override // g.feo
    public final void b(Context context) {
        Object systemService;
        cch.s();
        NotificationChannel b2 = ccr.b(((Integer) edt.f15376a.f15379d.zza(zzbcn.zzig)).intValue());
        b2.setShowBadge(false);
        systemService = context.getSystemService((Class<Object>) NotificationManager.class);
        ((NotificationManager) systemService).createNotificationChannel(b2);
    }

    @Override // g.feo
    public final boolean c(Context context) {
        Object systemService;
        NotificationChannel notificationChannel;
        int importance;
        systemService = context.getSystemService((Class<Object>) NotificationManager.class);
        notificationChannel = ((NotificationManager) systemService).getNotificationChannel("offline_notification_channel");
        if (notificationChannel == null) {
            return false;
        }
        importance = notificationChannel.getImportance();
        return importance == 0;
    }

    @Override // g.feo
    public final Intent d(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("android.provider.extra.APP_PACKAGE", activity.getPackageName());
        return intent;
    }

    @Override // g.feo
    public final zzbbs.zzq e(Context context, TelephonyManager telephonyManager) {
        boolean isDataEnabled;
        esy esyVar = ti.f20033a.z;
        if (!esy.w(context, "android.permission.ACCESS_NETWORK_STATE")) {
            return zzbbs.zzq.ENUM_FALSE;
        }
        isDataEnabled = telephonyManager.isDataEnabled();
        return isDataEnabled ? zzbbs.zzq.ENUM_TRUE : zzbbs.zzq.ENUM_FALSE;
    }
}
