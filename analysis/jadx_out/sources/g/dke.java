package g;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.LocaleList;
import android.os.StatFs;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzevz;
import com.google.android.gms.internal.ads.zzges;
import g.awt;
import g.cbv;
import g.chk;
import g.dke;
import g.edt;
import g.esy;
import g.mx;
import g.ti;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class dke implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final zzges f14301a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f14302b;

    public dke(zzges zzgesVar, Context context) {
        this.f14301a = zzgesVar;
        this.f14302b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 38;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f14301a.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzewj
            /* JADX WARN: Can't wrap try/catch for region: R(25:0|1|(3:3|(1:6)|7)|8|(3:63|64|(20:66|11|12|13|(14:15|16|17|(3:20|(3:23|(2:26|27)(1:25)|21)|56)|57|28|(1:55)(1:32)|33|(8:46|47|(1:51)|53|(1:38)(1:45)|(1:40)(1:44)|41|42)(1:35)|36|(0)(0)|(0)(0)|41|42)|59|16|17|(3:20|(1:21)|56)|57|28|(1:30)|55|33|(0)(0)|36|(0)(0)|(0)(0)|41|42))|10|11|12|13|(0)|59|16|17|(0)|57|28|(0)|55|33|(0)(0)|36|(0)(0)|(0)(0)|41|42) */
            /* JADX WARN: Incorrect condition in loop: B:5:0x0062 */
            /* JADX WARN: Removed duplicated region for block: B:15:0x00bd A[Catch: Exception -> 0x00d6, TRY_LEAVE, TryCatch #1 {Exception -> 0x00d6, blocks: (B:13:0x00b1, B:15:0x00bd), top: B:12:0x00b1 }] */
            /* JADX WARN: Removed duplicated region for block: B:19:0x00f3 A[ADDED_TO_REGION] */
            /* JADX WARN: Removed duplicated region for block: B:23:0x00fc  */
            /* JADX WARN: Removed duplicated region for block: B:30:0x0152  */
            /* JADX WARN: Removed duplicated region for block: B:35:0x0190  */
            /* JADX WARN: Removed duplicated region for block: B:38:0x0195  */
            /* JADX WARN: Removed duplicated region for block: B:40:0x019a  */
            /* JADX WARN: Removed duplicated region for block: B:44:0x019c  */
            /* JADX WARN: Removed duplicated region for block: B:45:0x0197  */
            /* JADX WARN: Removed duplicated region for block: B:46:0x016d A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final Object call() {
                ActivityInfo activityInfo;
                PackageInfo c2;
                String str;
                String str2;
                List<ResolveInfo> queryIntentActivities;
                boolean z;
                edt edtVar;
                String str3;
                String string;
                int i;
                PackageInfo c3;
                LocaleList localeList;
                int size;
                Locale locale;
                Context context = dke.this.f14302b;
                PackageManager packageManager = context.getPackageManager();
                Locale locale2 = Locale.getDefault();
                ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("geo:0,0?q=donuts")), 65536);
                ResolveInfo resolveActivity2 = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("http://www.google.com")), 65536);
                String country = locale2.getCountry();
                esy esyVar = ti.f20033a.z;
                mx mxVar = cbv.f12612a.f12615d;
                boolean l = mx.l();
                boolean aa = awt.aa(context);
                boolean u = awt.u(context);
                String language = locale2.getLanguage();
                ArrayList arrayList = new ArrayList();
                if (Build.VERSION.SDK_INT >= 24) {
                    localeList = LocaleList.getDefault();
                    for (int i2 = 0; i2 < size; i2++) {
                        locale = localeList.get(i2);
                        arrayList.add(locale.getLanguage());
                    }
                }
                ResolveInfo resolveActivity3 = packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=com.google.android.gms.ads")), 65536);
                if (resolveActivity3 != null && (activityInfo = resolveActivity3.activityInfo) != null) {
                    try {
                        c2 = chk.c(context).c(0, activityInfo.packageName);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                    if (c2 != null) {
                        str = c2.versionCode + "." + activityInfo.packageName;
                        c3 = chk.c(context).c(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, "com.android.vending");
                        if (c3 != null) {
                            str2 = c3.versionCode + "." + c3.packageName;
                            String str4 = Build.FINGERPRINT;
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
                            ResolveInfo resolveActivity4 = packageManager.resolveActivity(intent, 0);
                            queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
                            if (queryIntentActivities != null && resolveActivity4 != null) {
                                for (i = 0; i < queryIntentActivities.size(); i++) {
                                    if (resolveActivity4.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                                        z = resolveActivity4.activityInfo.packageName.equals(zzhgq.zza(context));
                                        break;
                                    }
                                }
                            }
                            z = false;
                            esy esyVar2 = ti.f20033a.z;
                            long availableBytes = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
                            zzbce zzbceVar = zzbcn.zzkY;
                            edtVar = edt.f15376a;
                            boolean z2 = !((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && esy.ag(context);
                            if (((Boolean) edtVar.f15379d.zza(zzbcn.zzlc)).booleanValue()) {
                                try {
                                    Bundle bundle = chk.c(context).b(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, context.getPackageName()).metaData;
                                    string = (bundle != null && bundle.containsKey("com.google.unity.ads.UNITY_VERSION")) ? bundle.getString("com.google.unity.ads.UNITY_VERSION") : "";
                                } catch (PackageManager.NameNotFoundException unused2) {
                                }
                                str3 = null;
                                return new zzewi(resolveActivity == null, resolveActivity2 == null, country, l, aa, u, language, arrayList, str, str2, str4, z, Build.MODEL, availableBytes, z2, str3, Build.VERSION.SDK_INT);
                            }
                            str3 = string;
                            if (resolveActivity2 == null) {
                            }
                            return new zzewi(resolveActivity == null, resolveActivity2 == null, country, l, aa, u, language, arrayList, str, str2, str4, z, Build.MODEL, availableBytes, z2, str3, Build.VERSION.SDK_INT);
                        }
                        str2 = null;
                        String str42 = Build.FINGERPRINT;
                        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
                        ResolveInfo resolveActivity42 = packageManager.resolveActivity(intent2, 0);
                        queryIntentActivities = packageManager.queryIntentActivities(intent2, 65536);
                        if (queryIntentActivities != null) {
                            while (i < queryIntentActivities.size()) {
                            }
                        }
                        z = false;
                        esy esyVar22 = ti.f20033a.z;
                        long availableBytes2 = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
                        zzbce zzbceVar2 = zzbcn.zzkY;
                        edtVar = edt.f15376a;
                        if (((Boolean) edtVar.f15379d.zza(zzbceVar2)).booleanValue()) {
                        }
                        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzlc)).booleanValue()) {
                        }
                        str3 = string;
                        if (resolveActivity2 == null) {
                        }
                        return new zzewi(resolveActivity == null, resolveActivity2 == null, country, l, aa, u, language, arrayList, str, str2, str42, z, Build.MODEL, availableBytes2, z2, str3, Build.VERSION.SDK_INT);
                    }
                }
                str = null;
                c3 = chk.c(context).c(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, "com.android.vending");
                if (c3 != null) {
                }
                str2 = null;
                String str422 = Build.FINGERPRINT;
                Intent intent22 = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
                ResolveInfo resolveActivity422 = packageManager.resolveActivity(intent22, 0);
                queryIntentActivities = packageManager.queryIntentActivities(intent22, 65536);
                if (queryIntentActivities != null) {
                }
                z = false;
                esy esyVar222 = ti.f20033a.z;
                long availableBytes22 = new StatFs(Environment.getDataDirectory().getAbsolutePath()).getAvailableBytes() / 1024;
                zzbce zzbceVar22 = zzbcn.zzkY;
                edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar22)).booleanValue()) {
                }
                if (((Boolean) edtVar.f15379d.zza(zzbcn.zzlc)).booleanValue()) {
                }
                str3 = string;
                if (resolveActivity2 == null) {
                }
                return new zzewi(resolveActivity == null, resolveActivity2 == null, country, l, aa, u, language, arrayList, str, str2, str422, z, Build.MODEL, availableBytes22, z2, str3, Build.VERSION.SDK_INT);
            }
        });
    }
}
