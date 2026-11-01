package com.bytedance.embedapplog;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.IBinder;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.embedapplog.hy;
import com.bytedance.embedapplog.o;
import com.bytedance.embedapplog.w;

/* loaded from: classes.dex */
final class tv implements hy {

    /* renamed from: d, reason: collision with root package name */
    private static final io<Boolean> f743d = new io<Boolean>() { // from class: com.bytedance.embedapplog.tv.1
        @Override // com.bytedance.embedapplog.io
        /* renamed from: ox, reason: merged with bridge method [inline-methods] */
        public Boolean dq(Object... objArr) {
            return Boolean.valueOf(nt.dq((Context) objArr[0]));
        }
    };
    private String dq;

    public static class dq extends hy.dq {
        long dq = 0;
    }

    private static int dq(Context context, String str) {
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(str, 0);
            if (packageInfo != null) {
                return packageInfo.versionCode;
            }
            return 0;
        } catch (PackageManager.NameNotFoundException e2) {
            jo.dq(e2);
            return 0;
        }
    }

    private Pair<String, Boolean> iw(Context context) {
        if (TextUtils.isEmpty(this.dq)) {
            return null;
        }
        return (Pair) new o(context, new Intent("com.uodis.opendevice.OPENIDS_SERVICE").setPackage(this.dq), new o.d<w, Pair<String, Boolean>>() { // from class: com.bytedance.embedapplog.tv.2
            @Override // com.bytedance.embedapplog.o.d
            /* renamed from: d, reason: merged with bridge method [inline-methods] */
            public w dq(IBinder iBinder) {
                return w.dq.dq(iBinder);
            }

            @Override // com.bytedance.embedapplog.o.d
            public Pair<String, Boolean> dq(w wVar) {
                if (wVar == null) {
                    return null;
                }
                return new Pair<>(wVar.dq(), Boolean.valueOf(wVar.d()));
            }
        }).dq();
    }

    public static boolean ox(Context context) {
        if (context == null) {
            return false;
        }
        return f743d.d(context).booleanValue();
    }

    private boolean s(Context context) {
        PackageManager packageManager;
        if (context == null) {
            return false;
        }
        try {
            packageManager = context.getPackageManager();
        } catch (PackageManager.NameNotFoundException | Exception unused) {
        }
        if (packageManager.getPackageInfo("com.huawei.hwid", 0) != null) {
            this.dq = "com.huawei.hwid";
            return true;
        }
        if (packageManager.getPackageInfo("com.huawei.hwid.tv", 0) != null) {
            this.dq = "com.huawei.hwid.tv";
            return true;
        }
        this.dq = "com.huawei.hms";
        return packageManager.getPackageInfo("com.huawei.hms", 0) != null;
    }

    @Override // com.bytedance.embedapplog.hy
    public boolean dq(Context context) {
        return s(context);
    }

    @Override // com.bytedance.embedapplog.hy
    /* renamed from: p, reason: merged with bridge method [inline-methods] */
    public dq d(Context context) {
        dq dqVar = new dq();
        if (Build.VERSION.SDK_INT >= 24) {
            try {
                String string = Settings.Global.getString(context.getContentResolver(), "pps_oaid");
                String string2 = Settings.Global.getString(context.getContentResolver(), "pps_track_limit");
                if (!TextUtils.isEmpty(string)) {
                    dqVar.f721d = string;
                    dqVar.ox = Boolean.parseBoolean(string2);
                    dqVar.dq = 202003021704L;
                    return dqVar;
                }
            } catch (Throwable th) {
                jo.dq(th);
            }
        }
        Pair<String, Boolean> iw = iw(context);
        if (iw != null) {
            dqVar.f721d = (String) iw.first;
            dqVar.ox = ((Boolean) iw.second).booleanValue();
            dqVar.dq = dq(context, this.dq);
        }
        return dqVar;
    }
}
