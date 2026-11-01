package g;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PermissionInfo;
import android.net.Uri;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class fyt {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicInteger f17668a = new AtomicInteger(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA);

    /* renamed from: b, reason: collision with root package name */
    public static bfb f17669b;

    /* JADX WARN: Multi-variable type inference failed */
    public static void c(Activity activity, String[] strArr, fcd[] fcdVarArr) {
        try {
            int andIncrement = f17668a.getAndIncrement();
            if (activity instanceof cww) {
                ((cww) activity).addPermissionCallback(andIncrement, strArr, fcdVarArr);
            }
            eyt.ak(activity, strArr, andIncrement);
        } catch (ActivityNotFoundException unused) {
            gm.e(activity, R.string.no_activity_request_permissions);
        }
    }

    public static void d(Context context, String str) {
        CharSequence e2 = e(context, str);
        gm.h(context, TextUtils.isEmpty(e2) ? R.string.content_disabled_request_permission : R.string.content_no_permission, e2);
    }

    public static CharSequence e(Context context, String str) {
        PackageManager packageManager;
        if (context == null || (packageManager = context.getPackageManager()) == null) {
            return null;
        }
        try {
            synchronized (PackageManager.class) {
                try {
                    PermissionInfo permissionInfo = packageManager.getPermissionInfo(str, 0);
                    if (permissionInfo != null) {
                        return permissionInfo.loadLabel(packageManager);
                    }
                    return null;
                } finally {
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    public static void f(Context context) {
        CharSequence e2 = e(context, "android.permission.WRITE_EXTERNAL_STORAGE");
        gm.h(context, TextUtils.isEmpty(e2) ? R.string.content_disabled_request_permission2 : R.string.content_no_permission2, e2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void g(Activity activity, String str, cbi cbiVar) {
        String packageName = activity.getPackageName();
        fgj e2 = fgj.e();
        Intent intent = new Intent(str, Uri.parse("package:" + packageName));
        if (e2.f16745c != null) {
            e2.f16745c.getClass();
            if (!fbc.s(activity, intent)) {
                gm.c(activity, R.string.need_pro_version);
                return;
            }
        }
        try {
            int andIncrement = fgj.f16743a.getAndIncrement();
            activity.startActivityForResult(intent, andIncrement);
            if (activity instanceof aa) {
                ((aa) activity).addActivityResultCallback(andIncrement, cbiVar);
            }
        } catch (Throwable unused) {
            gm.f(activity.getApplicationContext(), R.string.start_activity_failed);
        }
    }

    public static void h(Activity activity, String[] strArr, int i) {
        try {
            eyt.ak(activity, strArr, i);
        } catch (ActivityNotFoundException unused) {
            gm.e(activity, R.string.no_activity_request_permissions);
        }
    }

    public static void i(Context context) {
        Context context2;
        if (fnp.m()) {
            Intent intent = new Intent("miui.intent.action.APP_PERM_EDITOR");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.putExtra("extra_pkgname", context.getPackageName());
            if (!acw.u(context.getPackageManager().queryIntentActivities(intent, 65536))) {
                context2 = context;
                if (fgj.e().g(context2, intent, false, false, true)) {
                    return;
                }
                eyt.bv(context2, context2.getPackageName());
            }
        }
        context2 = context;
        eyt.bv(context2, context2.getPackageName());
    }
}
