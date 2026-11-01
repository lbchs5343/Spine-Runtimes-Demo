package g;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import cn.trinea.android.developertools.R;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public abstract class aqk {

    /* renamed from: a, reason: collision with root package name */
    public static final bcp f10655a = new bcp(0);

    /* renamed from: b, reason: collision with root package name */
    public static Locale f10656b;

    public static String c(Context context, String str, String str2) {
        Resources resources = context.getResources();
        String d2 = d(context, str);
        if (d2 == null) {
            d2 = resources.getString(R.string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, d2, str2);
    }

    public static String d(Context context, String str) {
        Resources resources;
        bcp bcpVar = f10655a;
        synchronized (bcpVar) {
            try {
                Configuration configuration = context.getResources().getConfiguration();
                Locale locale = (Build.VERSION.SDK_INT >= 24 ? new azt(new cdt(cml.c(configuration))) : azt.c(configuration.locale)).f11131b.get(0);
                if (!locale.equals(f10656b)) {
                    bcpVar.clear();
                    f10656b = locale;
                }
                String str2 = (String) bcpVar.get(str);
                if (str2 != null) {
                    return str2;
                }
                AtomicBoolean atomicBoolean = evp.f16244c;
                try {
                    resources = context.getPackageManager().getResourcesForApplication("com.google.android.gms");
                } catch (PackageManager.NameNotFoundException unused) {
                    resources = null;
                }
                if (resources != null) {
                    int identifier = resources.getIdentifier(str, "string", "com.google.android.gms");
                    if (identifier != 0) {
                        String string = resources.getString(identifier);
                        if (!TextUtils.isEmpty(string)) {
                            f10655a.put(str, string);
                            return string;
                        }
                    }
                }
                return null;
            } finally {
            }
        }
    }

    public static String e(Context context) {
        String packageName = context.getPackageName();
        try {
            Context context2 = chk.c(context).f12624a;
            return context2.getPackageManager().getApplicationLabel(context2.getPackageManager().getApplicationInfo(packageName, 0)).toString();
        } catch (PackageManager.NameNotFoundException | NullPointerException unused) {
            String str = context.getApplicationInfo().name;
            return TextUtils.isEmpty(str) ? packageName : str;
        }
    }

    public static String f(Context context, int i) {
        Resources resources = context.getResources();
        String e2 = e(context);
        if (i == 1) {
            return resources.getString(R.string.common_google_play_services_install_text, e2);
        }
        if (i == 2) {
            return awt.ai(context) ? resources.getString(R.string.common_google_play_services_wear_update_text) : resources.getString(R.string.common_google_play_services_update_text, e2);
        }
        if (i == 3) {
            return resources.getString(R.string.common_google_play_services_enable_text, e2);
        }
        if (i == 5) {
            return c(context, "common_google_play_services_invalid_account_text", e2);
        }
        if (i == 7) {
            return c(context, "common_google_play_services_network_error_text", e2);
        }
        if (i == 9) {
            return resources.getString(R.string.common_google_play_services_unsupported_text, e2);
        }
        if (i == 20) {
            return c(context, "common_google_play_services_restricted_profile_text", e2);
        }
        switch (i) {
            case 16:
                return c(context, "common_google_play_services_api_unavailable_text", e2);
            case 17:
                return c(context, "common_google_play_services_sign_in_failed_text", e2);
            case 18:
                return resources.getString(R.string.common_google_play_services_updating_text, e2);
            default:
                return resources.getString(R.string.common_google_play_services_unknown_issue, e2);
        }
    }

    public static String g(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_title);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_title);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_title);
            case 4:
            case 6:
            case 18:
                return null;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return d(context, "common_google_play_services_invalid_account_title");
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return d(context, "common_google_play_services_network_error_title");
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return null;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case 12:
            case 13:
            case 14:
            case 15:
            case 19:
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i);
                return null;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return d(context, "common_google_play_services_sign_in_failed_title");
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return d(context, "common_google_play_services_restricted_profile_title");
        }
    }
}
