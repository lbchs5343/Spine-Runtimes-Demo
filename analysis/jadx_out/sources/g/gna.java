package g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesMissingManifestValueException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class gna {
    public static final int h;
    public static final gna i;

    static {
        AtomicBoolean atomicBoolean = evp.f16244c;
        h = 12451000;
        i = new gna();
    }

    public static int j(Context context) {
        AtomicBoolean atomicBoolean = evp.f16244c;
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    public Intent k(Context context, int i2, String str) {
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                return null;
            }
            Uri fromParts = Uri.fromParts("package", "com.google.android.gms", null);
            Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(fromParts);
            return intent;
        }
        if (context != null && awt.ai(context)) {
            Intent intent2 = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
            intent2.setPackage("com.google.android.wearable.app");
            return intent2;
        }
        StringBuilder sb = new StringBuilder("gcore_");
        sb.append(h);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(chk.c(context).c(0, context.getPackageName()).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        String sb2 = sb.toString();
        Intent intent3 = new Intent("android.intent.action.VIEW");
        Uri.Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter(TTDownloadField.TT_ID, "com.google.android.gms");
        if (!TextUtils.isEmpty(sb2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", sb2);
        }
        intent3.setData(appendQueryParameter.build());
        intent3.setPackage("com.android.vending");
        intent3.addFlags(524288);
        return intent3;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(20:0|1|2|3|4|(4:8|2c|15|(2:17|(2:19|20))(2:22|23))|39|(4:41|(3:43|(1:49)(1:47)|48)|50|(11:52|(1:54)(1:119)|55|(2:115|116)(1:57)|58|59|60|(1:62)(2:(2:85|(1:87))|(4:93|(1:95)(1:112)|(1:97)|(1:99)(4:100|(2:106|107)|102|(1:104)(1:105)))(1:92))|63|(2:(5:66|67|68|69|(2:70|(2:72|(1:74)(1:75))(2:76|77)))|80)(0)|(1:82)(1:83)))|120|(0)(0)|55|(0)(0)|58|59|60|(0)(0)|63|(0)(0)|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x017b, code lost:
    
        java.lang.String.valueOf(r3).concat(" requires Google Play services, but they are missing.");
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x00e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:119:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x018a  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01c7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int l(Context context, int i2) {
        boolean z;
        int i3;
        PackageInfo packageInfo;
        PackageInfo packageInfo2;
        Bundle bundle;
        AtomicBoolean atomicBoolean = evp.f16244c;
        try {
            context.getResources().getString(R.string.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        boolean z2 = true;
        if (!"com.google.android.gms".equals(context.getPackageName()) && !evp.f16242a.get()) {
            synchronized (eg.f15466a) {
                try {
                    if (!eg.f15467b) {
                        eg.f15467b = true;
                        try {
                            bundle = chk.c(context).b(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, context.getPackageName()).metaData;
                        } catch (PackageManager.NameNotFoundException e2) {
                            Log.wtf("MetadataValueReader", "This should never happen.", e2);
                        }
                        if (bundle != null) {
                            bundle.getString("com.google.app.id");
                            eg.f15469d = bundle.getInt("com.google.android.gms.version");
                        }
                    }
                } finally {
                }
            }
            int i4 = eg.f15469d;
            if (i4 == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (i4 != 12451000) {
                throw new GooglePlayServicesIncorrectManifestValueException(i4, "The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + h + " but found " + i4 + ".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
        if (!awt.ai(context)) {
            if (awt.f11000e == null) {
                awt.f11000e = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
            }
            if (!awt.f11000e.booleanValue()) {
                z = true;
                ckd.u(i2 < 0);
                String packageName = context.getPackageName();
                PackageManager packageManager = context.getPackageManager();
                i3 = 9;
                if (z) {
                    packageInfo = null;
                } else {
                    try {
                        packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
                    } catch (PackageManager.NameNotFoundException unused2) {
                        String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing.");
                    }
                }
                packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
                awm.e(context);
                if (awm.d(packageInfo2, true)) {
                    String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid.");
                } else {
                    if (z) {
                        ckd.k(packageInfo);
                        if (!awm.d(packageInfo, true)) {
                            String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid.");
                        }
                    }
                    if (!z || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                        int i5 = packageInfo2.versionCode;
                        if ((i5 == -1 ? -1 : i5 / 1000) < (i2 != -1 ? i2 / 1000 : -1)) {
                            i3 = 2;
                        } else {
                            ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                            if (applicationInfo == null) {
                                try {
                                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                                } catch (PackageManager.NameNotFoundException e3) {
                                    Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e3);
                                    i3 = 1;
                                    if (i3 != 18) {
                                    }
                                    if (z2) {
                                    }
                                }
                            }
                            i3 = !applicationInfo.enabled ? 3 : 0;
                        }
                    } else {
                        String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services.");
                    }
                }
                if (i3 != 18) {
                    if (i3 == 1) {
                        try {
                            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    z2 = context.getPackageManager().getApplicationInfo("com.google.android.gms", 8192).enabled;
                                    break;
                                }
                                if ("com.google.android.gms".equals(it.next().getAppPackageName())) {
                                    break;
                                }
                            }
                        } catch (PackageManager.NameNotFoundException | Exception unused3) {
                        }
                    }
                    z2 = false;
                }
                if (z2) {
                    return 18;
                }
                return i3;
            }
        }
        z = false;
        ckd.u(i2 < 0);
        String packageName2 = context.getPackageName();
        PackageManager packageManager2 = context.getPackageManager();
        i3 = 9;
        if (z) {
        }
        packageInfo2 = packageManager2.getPackageInfo("com.google.android.gms", 64);
        awm.e(context);
        if (awm.d(packageInfo2, true)) {
        }
        if (i3 != 18) {
        }
        if (z2) {
        }
    }
}
