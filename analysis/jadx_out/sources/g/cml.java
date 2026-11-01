package g;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.res.Configuration;
import android.icu.text.DecimalFormatSymbols;
import android.net.Uri;
import android.os.LocaleList;
import android.os.UserManager;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class cml {
    public static boolean a(Context context) {
        return ((UserManager) context.getSystemService(UserManager.class)).isUserUnlocked();
    }

    public static DecimalFormatSymbols b(Locale locale) {
        return DecimalFormatSymbols.getInstance(locale);
    }

    public static LocaleList c(Configuration configuration) {
        return configuration.getLocales();
    }

    public static boolean d(NotificationManager notificationManager) {
        return notificationManager.areNotificationsEnabled();
    }

    public static String[] e(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentAuthorities();
    }

    public static void f(Notification.Action.Builder builder, boolean z) {
        builder.setAllowGeneratedReplies(z);
    }

    public static Context g(Context context) {
        return context.createDeviceProtectedStorageContext();
    }

    public static void h(Notification.Builder builder) {
        builder.setRemoteInputHistory(null);
    }

    public static LocaleList i(Locale... localeArr) {
        return new LocaleList(localeArr);
    }

    public static Uri[] j(JobParameters jobParameters) {
        return jobParameters.getTriggeredContentUris();
    }
}
