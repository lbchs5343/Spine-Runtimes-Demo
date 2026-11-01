package g;

import android.R;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.FragmentManager;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.util.TypedValue;
import com.google.android.gms.common.api.GoogleApiActivity;

/* loaded from: classes3.dex */
public final class awe extends gna {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f10971b = new Object();

    /* renamed from: a, reason: collision with root package name */
    public static final awe f10970a = new awe();

    public static AlertDialog c(Activity activity, int i, auo auoVar, DialogInterface.OnCancelListener onCancelListener) {
        if (i == 0) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        AlertDialog.Builder builder = "Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId)) ? new AlertDialog.Builder(activity, 5) : null;
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(aqk.f(activity, i));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Resources resources = activity.getResources();
        String string = i != 1 ? i != 2 ? i != 3 ? resources.getString(R.string.ok) : resources.getString(cn.trinea.android.developertools.R.string.common_google_play_services_enable_button) : resources.getString(cn.trinea.android.developertools.R.string.common_google_play_services_update_button) : resources.getString(cn.trinea.android.developertools.R.string.common_google_play_services_install_button);
        if (string != null) {
            builder.setPositiveButton(string, auoVar);
        }
        String g2 = aqk.g(activity, i);
        if (g2 != null) {
            builder.setTitle(g2);
        }
        new IllegalArgumentException();
        return builder.create();
    }

    public static void d(Activity activity, AlertDialog alertDialog, String str, DialogInterface.OnCancelListener onCancelListener) {
        try {
            if (activity instanceof androidx.fragment.app.u) {
                androidx.fragment.app.v supportFragmentManager = ((androidx.fragment.app.u) activity).getSupportFragmentManager();
                fk fkVar = new fk();
                ckd.w(alertDialog, "Cannot display null dialog");
                alertDialog.setOnCancelListener(null);
                alertDialog.setOnDismissListener(null);
                fkVar.h = alertDialog;
                if (onCancelListener != null) {
                    fkVar.i = onCancelListener;
                }
                fkVar.show(supportFragmentManager, str);
                return;
            }
        } catch (NoClassDefFoundError unused) {
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        ege egeVar = new ege();
        ckd.w(alertDialog, "Cannot display null dialog");
        alertDialog.setOnCancelListener(null);
        alertDialog.setOnDismissListener(null);
        egeVar.f15477b = alertDialog;
        if (onCancelListener != null) {
            egeVar.f15478c = onCancelListener;
        }
        egeVar.show(fragmentManager, str);
    }

    public final void e(Activity activity, dmo dmoVar, int i, DialogInterface.OnCancelListener onCancelListener) {
        AlertDialog c2 = c(activity, i, new auo(super.k(activity, i, ada.COLUMN_DOMAIN), dmoVar, 1), onCancelListener);
        if (c2 == null) {
            return;
        }
        d(activity, c2, "GooglePlayServicesErrorDialog", onCancelListener);
    }

    public final void f(GoogleApiActivity googleApiActivity, int i, GoogleApiActivity googleApiActivity2) {
        AlertDialog c2 = c(googleApiActivity, i, new auo(super.k(googleApiActivity, i, ada.COLUMN_DOMAIN), googleApiActivity, 0), googleApiActivity2);
        if (c2 == null) {
            return;
        }
        d(googleApiActivity, c2, "GooglePlayServicesErrorDialog", googleApiActivity2);
    }

    public final void g(Context context, int i, PendingIntent pendingIntent) {
        int i2;
        NotificationChannel notificationChannel;
        CharSequence name;
        new IllegalArgumentException();
        if (i == 18) {
            new elh(this, context).sendEmptyMessageDelayed(1, 120000L);
            return;
        }
        if (pendingIntent == null) {
            return;
        }
        String d2 = i == 6 ? aqk.d(context, "common_google_play_services_resolution_required_title") : aqk.g(context, i);
        if (d2 == null) {
            d2 = context.getResources().getString(cn.trinea.android.developertools.R.string.common_google_play_services_notification_ticker);
        }
        String c2 = (i == 6 || i == 19) ? aqk.c(context, "common_google_play_services_resolution_required_text", aqk.e(context)) : aqk.f(context, i);
        Resources resources = context.getResources();
        Object systemService = context.getSystemService("notification");
        ckd.k(systemService);
        NotificationManager notificationManager = (NotificationManager) systemService;
        zc zcVar = new zc(context, null);
        zcVar.l = true;
        zcVar.u(16, true);
        zcVar.f20386g = zc.t(d2);
        gie gieVar = new gie(1, false);
        gieVar.f18195a = zc.t(c2);
        zcVar.x(gieVar);
        PackageManager packageManager = context.getPackageManager();
        if (awt.h == null) {
            awt.h = Boolean.valueOf(packageManager.hasSystemFeature("android.hardware.type.watch"));
        }
        if (awt.h.booleanValue()) {
            zcVar.s.icon = context.getApplicationInfo().icon;
            zcVar.m = 2;
            if (awt.ai(context)) {
                zcVar.w(cn.trinea.android.developertools.R.drawable.common_full_open_on_phone, resources.getString(cn.trinea.android.developertools.R.string.common_open_on_phone), pendingIntent);
            } else {
                zcVar.r = pendingIntent;
            }
        } else {
            zcVar.s.icon = R.drawable.stat_sys_warning;
            zcVar.s.tickerText = zc.t(resources.getString(cn.trinea.android.developertools.R.string.common_google_play_services_notification_ticker));
            zcVar.s.when = System.currentTimeMillis();
            zcVar.r = pendingIntent;
            zcVar.i = zc.t(c2);
        }
        if (dyd.bj()) {
            ckd.t(dyd.bj());
            synchronized (f10971b) {
            }
            notificationChannel = notificationManager.getNotificationChannel("com.google.android.gms.availability");
            String string = context.getResources().getString(cn.trinea.android.developertools.R.string.common_google_play_services_notification_channel_name);
            if (notificationChannel == null) {
                notificationManager.createNotificationChannel(bnl.j(string));
            } else {
                name = notificationChannel.getName();
                if (!string.contentEquals(name)) {
                    notificationChannel.setName(string);
                    notificationManager.createNotificationChannel(notificationChannel);
                }
            }
            zcVar.k = "com.google.android.gms.availability";
        }
        Notification y = zcVar.y();
        if (i == 1 || i == 2 || i == 3) {
            evp.f16244c.set(false);
            i2 = 10436;
        } else {
            i2 = 39789;
        }
        notificationManager.notify(i2, y);
    }
}
