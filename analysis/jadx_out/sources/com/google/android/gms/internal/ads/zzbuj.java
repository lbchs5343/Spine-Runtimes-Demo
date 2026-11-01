package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.mediation.init.MediationConfigUserInfoForSegment;
import g.agd;
import g.akx;
import g.awf;
import g.cbv;
import g.chk;
import g.dfu;
import g.edt;
import g.gna;
import g.hdw;
import g.mx;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Locale;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class zzbuj implements zzbul {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f5001a = new Object();

    /* renamed from: b, reason: collision with root package name */
    public static Boolean f5002b;

    /* renamed from: c, reason: collision with root package name */
    public static zzbul f5003c;

    /* renamed from: d, reason: collision with root package name */
    public static zzbul f5004d;
    public static zzbul zza;

    /* renamed from: e, reason: collision with root package name */
    public final String f5005e;

    /* renamed from: f, reason: collision with root package name */
    public final ExecutorService f5006f;

    /* renamed from: g, reason: collision with root package name */
    public final akx f5007g;
    public final PackageInfo i;
    public final AtomicBoolean j;
    public final Context k;
    public boolean l;
    public final String n;
    public final Object h = new Object();
    public final WeakHashMap m = new WeakHashMap();

    /* JADX WARN: Removed duplicated region for block: B:14:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbuj(Context context, akx akxVar) {
        PackageInfo packageInfo;
        zzbce zzbceVar;
        edt edtVar;
        zzftc.zza();
        this.f5006f = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
        this.j = new AtomicBoolean();
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.k = context;
        this.f5007g = akxVar;
        String str = null;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzhv)).booleanValue()) {
            zzftd zzftdVar = mx.f19684e;
            if (context != null && context.getApplicationInfo() != null) {
                try {
                    packageInfo = chk.c(context).c(0, context.getApplicationInfo().packageName);
                } catch (PackageManager.NameNotFoundException unused) {
                }
                this.i = packageInfo;
                zzbceVar = zzbcn.zzht;
                edtVar = edt.f15376a;
                this.n = !((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() ? Locale.getDefault().getCountry() : MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    str = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
                } else {
                    Context context2 = this.k;
                    zzftd zzftdVar2 = mx.f19684e;
                    if (context2 != null) {
                        try {
                            PackageInfo c2 = chk.c(context2).c(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, "com.android.vending");
                            if (c2 != null) {
                                str = Integer.toString(c2.versionCode);
                            }
                        } catch (PackageManager.NameNotFoundException unused2) {
                        }
                    }
                }
                this.f5005e = str;
            }
        }
        packageInfo = null;
        this.i = packageInfo;
        zzbceVar = zzbcn.zzht;
        edtVar = edt.f15376a;
        this.n = !((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() ? Locale.getDefault().getCountry() : MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
        }
        this.f5005e = str;
    }

    public static boolean o(Context context) {
        if (context == null) {
            return false;
        }
        zzbce zzbceVar = zzbcn.zzmv;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            if (((Boolean) zzbew.zze.zze()).booleanValue()) {
                if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzho)).booleanValue()) {
                    return true;
                }
            }
            return false;
        }
        synchronized (f5001a) {
            try {
                if (f5002b == null) {
                    f5002b = Boolean.valueOf(cbv.f12612a.f12614c.nextInt(100) < ((Integer) edtVar.f15379d.zza(zzbcn.zzms)).intValue());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (f5002b.booleanValue()) {
            if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzho)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public static zzbul zza(Context context) {
        synchronized (f5001a) {
            try {
                if (zza == null) {
                    if (o(context)) {
                        zza = new zzbuj(context, akx.forPackage());
                    } else {
                        zza = new zzbuk();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return zza;
    }

    public static zzbul zzb(Context context, akx akxVar) {
        synchronized (f5001a) {
            try {
                if (f5004d == null) {
                    boolean z = false;
                    if (((Boolean) zzbef.zzc.zze()).booleanValue()) {
                        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzho)).booleanValue() || ((Boolean) zzbef.zza.zze()).booleanValue()) {
                            z = true;
                        }
                    }
                    if (o(context)) {
                        zzbuj zzbujVar = new zzbuj(context, akxVar);
                        zzbujVar.q();
                        Thread.setDefaultUncaughtExceptionHandler(new hdw(zzbujVar, Thread.getDefaultUncaughtExceptionHandler(), 0));
                        f5004d = zzbujVar;
                    } else if (!z || context == null) {
                        f5004d = new zzbuk();
                    } else {
                        zzbuj zzbujVar2 = new zzbuj(context, akxVar);
                        zzbujVar2.l = true;
                        zzbujVar2.q();
                        Thread.setDefaultUncaughtExceptionHandler(new hdw(zzbujVar2, Thread.getDefaultUncaughtExceptionHandler(), 0));
                        f5004d = zzbujVar2;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f5004d;
    }

    public static zzbul zzc(Context context) {
        synchronized (f5001a) {
            try {
                if (f5003c == null) {
                    zzbce zzbceVar = zzbcn.zzhp;
                    edt edtVar = edt.f15376a;
                    if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                        if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzho)).booleanValue()) {
                            f5003c = new zzbuj(context, akx.forPackage());
                        }
                    }
                    f5003c = new zzbuk();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f5003c;
    }

    public static zzbul zzd(Context context, akx akxVar) {
        synchronized (f5001a) {
            try {
                if (f5003c == null) {
                    zzbce zzbceVar = zzbcn.zzhp;
                    edt edtVar = edt.f15376a;
                    if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                        if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzho)).booleanValue()) {
                            f5003c = new zzbuj(context, akxVar);
                        }
                    }
                    f5003c = new zzbuk();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return f5003c;
    }

    public static String zze(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static String zzf(Throwable th) {
        return zzfxf.zzc(mx.m(zze(th), "SHA-256"));
    }

    public final void p(Throwable th) {
        if (th != null) {
            boolean z = false;
            boolean z2 = false;
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    z |= mx.p(stackTraceElement.getClassName());
                    z2 |= zzbuj.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            if (!z || z2) {
                return;
            }
            if (!this.l) {
                zzh(th, "");
            }
            if (this.j.getAndSet(true) || !((Boolean) zzbef.zzc.zze()).booleanValue()) {
                return;
            }
            zzbbx.zzc(this.k);
        }
    }

    public final void q() {
        Thread thread = Looper.getMainLooper().getThread();
        if (thread == null) {
            return;
        }
        synchronized (this.h) {
            this.m.put(thread, Boolean.TRUE);
        }
        thread.setUncaughtExceptionHandler(new hdw(this, thread.getUncaughtExceptionHandler(), 1));
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    public final void zzh(Throwable th, String str) {
        if (this.l) {
            return;
        }
        zzi(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzbul
    public final void zzi(Throwable th, String str, float f2) {
        Throwable th2;
        boolean z;
        String str2;
        PackageInfo c2;
        ActivityManager activityManager;
        ActivityManager.MemoryInfo memoryInfo;
        Context context = this.k;
        if (this.l) {
            return;
        }
        zzftd zzftdVar = mx.f19684e;
        if (((Boolean) zzbew.zzf.zze()).booleanValue()) {
            th2 = th;
        } else {
            LinkedList linkedList = new LinkedList();
            for (Throwable th3 = th; th3 != null; th3 = th3.getCause()) {
                linkedList.push(th3);
            }
            th2 = null;
            while (!linkedList.isEmpty()) {
                Throwable th4 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th4.getStackTrace();
                boolean z2 = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcr)).booleanValue() && stackTrace != null && stackTrace.length == 0 && mx.p(th4.getClass().getName());
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th4.getClass().getName(), "<filtered>", "<filtered>", 1));
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (mx.p(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        z2 = true;
                    } else {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                            arrayList.add(stackTraceElement);
                        } else {
                            arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                        }
                    }
                }
                if (z2) {
                    th2 = th2 == null ? new Throwable(th4.getMessage()) : new Throwable(th4.getMessage(), th2);
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
            }
        }
        if (th2 != null) {
            String name = th.getClass().getName();
            String zze = zze(th);
            String zzf = ((Boolean) edt.f15376a.f15379d.zza(zzbcn.zziu)).booleanValue() ? zzf(th) : "";
            double d2 = f2;
            double random = Math.random();
            int i = f2 > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT ? (int) (1.0f / f2) : 1;
            if (random < d2) {
                ArrayList arrayList2 = new ArrayList();
                try {
                    z = chk.c(context).d();
                } catch (Throwable th5) {
                    agd.f("Error fetching instant app info", th5);
                    z = false;
                }
                try {
                    str2 = context.getPackageName();
                } catch (Throwable unused) {
                    agd.b("Cannot obtain package name, proceeding.");
                    str2 = MediationConfigUserInfoForSegment.GENDER_UNKNOWN;
                }
                Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z)).appendQueryParameter(TTDownloadField.TT_ID, "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE);
                int i2 = Build.VERSION.SDK_INT;
                Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("api", String.valueOf(i2));
                String str3 = Build.MANUFACTURER;
                String str4 = Build.MODEL;
                if (!str4.startsWith(str3)) {
                    str4 = awf.i(str3, " ", str4);
                }
                Uri.Builder appendQueryParameter3 = appendQueryParameter2.appendQueryParameter("device", str4);
                akx akxVar = this.f5007g;
                Uri.Builder appendQueryParameter4 = appendQueryParameter3.appendQueryParameter("js", akxVar.afmaVersion).appendQueryParameter("appid", str2).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", zze);
                edt edtVar = edt.f15376a;
                zzbcf zzbcfVar = edtVar.f15377b;
                zzbcl zzbclVar = edtVar.f15379d;
                Uri.Builder appendQueryParameter5 = appendQueryParameter4.appendQueryParameter("eids", TextUtils.join(",", zzbcfVar.zza())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "685849915").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzbew.zzc.zze()));
                gna.i.getClass();
                Uri.Builder appendQueryParameter6 = appendQueryParameter5.appendQueryParameter("gmscv", String.valueOf(gna.j(context))).appendQueryParameter("lite", true != akxVar.isLiteSdk ? "0" : "1");
                if (!TextUtils.isEmpty(zzf)) {
                    appendQueryParameter6.appendQueryParameter("hash", zzf);
                }
                if (((Boolean) zzbclVar.zza(zzbcn.zzhu)).booleanValue()) {
                    if (context == null || (activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY)) == null) {
                        memoryInfo = null;
                    } else {
                        memoryInfo = new ActivityManager.MemoryInfo();
                        try {
                            activityManager.getMemoryInfo(memoryInfo);
                        } catch (NullPointerException unused2) {
                            agd.b("Error retrieving the memory information.");
                        }
                    }
                    if (memoryInfo != null) {
                        appendQueryParameter6.appendQueryParameter("available_memory", Long.toString(memoryInfo.availMem));
                        appendQueryParameter6.appendQueryParameter("total_memory", Long.toString(memoryInfo.totalMem));
                        appendQueryParameter6.appendQueryParameter("is_low_memory", true != memoryInfo.lowMemory ? "0" : "1");
                    }
                }
                if (((Boolean) zzbclVar.zza(zzbcn.zzht)).booleanValue()) {
                    String str5 = this.n;
                    if (!TextUtils.isEmpty(str5)) {
                        appendQueryParameter6.appendQueryParameter("countrycode", str5);
                    }
                    String str6 = this.f5005e;
                    if (!TextUtils.isEmpty(str6)) {
                        appendQueryParameter6.appendQueryParameter("psv", str6);
                    }
                    if (i2 >= 26) {
                        c2 = WebView.getCurrentWebViewPackage();
                    } else {
                        if (context != null) {
                            try {
                                c2 = chk.c(context).c(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, "com.android.webview");
                            } catch (PackageManager.NameNotFoundException unused3) {
                            }
                        }
                        c2 = null;
                    }
                    if (c2 != null) {
                        appendQueryParameter6.appendQueryParameter("wvvc", Integer.toString(c2.versionCode));
                        appendQueryParameter6.appendQueryParameter("wvvn", c2.versionName);
                        appendQueryParameter6.appendQueryParameter("wvpn", c2.packageName);
                    }
                }
                PackageInfo packageInfo = this.i;
                if (packageInfo != null) {
                    appendQueryParameter6.appendQueryParameter("appvc", String.valueOf(packageInfo.versionCode));
                    appendQueryParameter6.appendQueryParameter("appvn", packageInfo.versionName);
                }
                arrayList2.add(appendQueryParameter6.toString());
                Iterator it = arrayList2.iterator();
                while (it.hasNext()) {
                    final String str7 = (String) it.next();
                    final dfu dfuVar = new dfu(null);
                    this.f5006f.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbug
                        @Override // java.lang.Runnable
                        public final void run() {
                            dfu.this.zza(str7);
                        }
                    });
                }
            }
        }
    }
}
