package g;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.media.AudioManager;
import android.telephony.TelephonyManager;
import com.google.android.gms.internal.ads.zzbbs;

/* loaded from: classes3.dex */
public abstract class feo {
    public void b(Context context) {
    }

    public boolean c(Context context) {
        return false;
    }

    public Intent d(Activity activity) {
        Intent intent = new Intent();
        intent.setAction("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("app_package", activity.getPackageName());
        intent.putExtra("app_uid", activity.getApplicationInfo().uid);
        return intent;
    }

    public zzbbs.zzq e(Context context, TelephonyManager telephonyManager) {
        return zzbbs.zzq.ENUM_UNKNOWN;
    }

    public int f(Context context) {
        return ((TelephonyManager) context.getSystemService("phone")).getNetworkType();
    }

    public int g(AudioManager audioManager) {
        return 0;
    }

    public void h(Activity activity) {
    }

    public boolean i(Activity activity, Configuration configuration) {
        return false;
    }
}
