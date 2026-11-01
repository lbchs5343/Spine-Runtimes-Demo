package com.ss.android.socialbase.appdownloader.view;

import android.app.Fragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.socialbase.appdownloader.s.p;
import com.ss.android.socialbase.downloader.constants.s;
import com.ss.android.socialbase.downloader.downloader.ox;

/* loaded from: classes.dex */
public class dq extends Fragment {
    private Intent iw() {
        Context s = s();
        if (s == null) {
            return null;
        }
        Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        String packageName = s.getPackageName();
        intent.putExtra("package", packageName);
        intent.putExtra("android.provider.extra.APP_PACKAGE", packageName);
        intent.putExtra("app_package", packageName);
        int i = s.getApplicationInfo().uid;
        intent.putExtra("uid", i);
        intent.putExtra("app_uid", i);
        return intent;
    }

    public static Intent p() {
        return new Intent("android.settings.APPLICATION_SETTINGS");
    }

    private Context s() {
        Context ob = ox.ob();
        return (ob != null || getActivity() == null || getActivity().isFinishing()) ? ob : getActivity().getApplicationContext();
    }

    public Intent d() {
        Context s = s();
        if (s == null) {
            return null;
        }
        String packageName = s.getPackageName();
        String str = Build.MANUFACTURER;
        if (!TextUtils.isEmpty(str)) {
            String lowerCase = str.toLowerCase();
            if (lowerCase.contains(s.ox)) {
                Intent intent = new Intent();
                intent.putExtra(TTDownloadField.TT_PACKAGE_NAME, packageName);
                intent.setComponent(new ComponentName("com.color.safecenter", "com.color.safecenter.permission.PermissionManagerActivity"));
                return intent;
            }
            if (lowerCase.contains("vivo")) {
                Intent intent2 = new Intent();
                intent2.putExtra("packagename", packageName);
                if (Build.VERSION.SDK_INT >= 25) {
                    intent2.setComponent(new ComponentName("com.vivo.permissionmanager", "com.vivo.permissionmanager.activity.SoftPermissionDetailActivity"));
                    return intent2;
                }
                intent2.setComponent(new ComponentName("com.iqoo.secure", "com.iqoo.secure.safeguard.SoftPermissionDetailActivity"));
                return intent2;
            }
            if (lowerCase.contains("meizu") && Build.VERSION.SDK_INT < 25) {
                Intent intent3 = new Intent("com.meizu.safe.security.SHOW_APPSEC");
                intent3.putExtra(TTDownloadField.TT_PACKAGE_NAME, packageName);
                intent3.setComponent(new ComponentName("com.meizu.safe", "com.meizu.safe.security.AppSecActivity"));
                return intent3;
            }
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + s.getPackageName()));
    }

    public void dq() {
        try {
            try {
                try {
                    startActivityForResult(iw(), 1000);
                } catch (Throwable unused) {
                    startActivityForResult(ox(), 1000);
                }
            } catch (Throwable unused2) {
                startActivityForResult(p(), 1000);
            }
        } catch (Throwable unused3) {
            startActivityForResult(d(), 1000);
        }
    }

    @Override // android.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (p.dq()) {
            p.dq(true);
        } else {
            p.dq(false);
        }
    }

    public Intent ox() {
        Context s = s();
        if (s == null) {
            return null;
        }
        return new Intent("android.settings.APPLICATION_DETAILS_SETTINGS", Uri.parse("package:" + s.getPackageName()));
    }
}
