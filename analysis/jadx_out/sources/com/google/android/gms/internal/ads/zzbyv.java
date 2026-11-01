package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import g.aeh;
import g.agd;
import g.cbv;
import g.dil;
import g.dxw;
import g.edt;
import g.gna;
import g.mx;
import g.pw;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import pkg.a.ModuleDescriptor;

/* loaded from: classes3.dex */
public final class zzbyv {

    /* renamed from: f, reason: collision with root package name */
    public final Object f5086f;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f5084d = new AtomicReference(null);

    /* renamed from: g, reason: collision with root package name */
    public final Object f5087g = new Object();
    public String h = null;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f5082b = new AtomicBoolean(false);

    /* renamed from: c, reason: collision with root package name */
    public final AtomicInteger f5083c = new AtomicInteger(-1);

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReference f5085e = new AtomicReference(null);
    public final AtomicReference i = new AtomicReference(null);

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f5081a = new ConcurrentHashMap(9);

    public zzbyv() {
        new AtomicReference(null);
        new ArrayBlockingQueue(20);
        this.f5086f = new Object();
    }

    public static final boolean j(Context context) {
        zzbce zzbceVar = zzbcn.zzas;
        edt edtVar = edt.f15376a;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
            return false;
        }
        if (dxw.r(context, ModuleDescriptor.MODULE_ID) < ((Integer) edtVar.f15379d.zza(zzbcn.zzat)).intValue()) {
            return false;
        }
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzau)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    public static final Bundle zzq(Map map) {
        Bundle bundle = new Bundle();
        if (map != null) {
            for (String str : map.keySet()) {
                try {
                    if (Objects.equals(str, "value")) {
                        bundle.putDouble(str, Double.parseDouble((String) map.get(str)));
                    } else {
                        bundle.putString(str, (String) map.get(str));
                    }
                } catch (NullPointerException | NumberFormatException unused) {
                }
            }
        }
        return bundle;
    }

    public final void k(Context context, String str, String str2) {
        AtomicReference atomicReference = this.f5085e;
        if (p(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
            ConcurrentHashMap concurrentHashMap = this.f5081a;
            Method method = (Method) concurrentHashMap.get(str2);
            if (method == null) {
                try {
                    method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str2, String.class);
                    concurrentHashMap.put(str2, method);
                } catch (Exception unused) {
                    m(str2, false);
                    method = null;
                }
            }
            try {
                method.invoke(atomicReference.get(), str);
                agd.e("Invoke Firebase method " + str2 + ", Ad Unit Id: " + str);
            } catch (Exception unused2) {
                m(str2, false);
            }
        }
    }

    public final void l(Context context, String str, String str2, Bundle bundle) {
        if (zzp(context)) {
            Bundle bundle2 = new Bundle();
            try {
                bundle2.putLong("_aeid", Long.parseLong(str2));
            } catch (NullPointerException | NumberFormatException e2) {
                agd.f("Invalid event ID: ".concat(String.valueOf(str2)), e2);
            }
            if ("_ac".equals(str)) {
                bundle2.putInt("_r", 1);
            }
            if (bundle != null) {
                bundle2.putAll(bundle);
            }
            AtomicReference atomicReference = this.f5085e;
            if (p(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
                ConcurrentHashMap concurrentHashMap = this.f5081a;
                Method method = (Method) concurrentHashMap.get("logEventInternal");
                if (method == null) {
                    try {
                        method = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
                        concurrentHashMap.put("logEventInternal", method);
                    } catch (Exception unused) {
                        m("logEventInternal", true);
                        method = null;
                    }
                }
                try {
                    method.invoke(atomicReference.get(), "am", str, bundle2);
                } catch (Exception unused2) {
                    m("logEventInternal", true);
                }
            }
        }
    }

    public final void m(String str, boolean z) {
        AtomicBoolean atomicBoolean = this.f5082b;
        if (atomicBoolean.get()) {
            return;
        }
        agd.b("Invoke Firebase method " + str + " error.");
        if (z) {
            agd.b("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            atomicBoolean.set(true);
        }
    }

    public final Object n(Context context, String str) {
        AtomicReference atomicReference = this.f5085e;
        if (!p(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
            return null;
        }
        try {
            return o(context, str).invoke(atomicReference.get(), null);
        } catch (Exception unused) {
            m(str, true);
            return null;
        }
    }

    public final Method o(Context context, String str) {
        ConcurrentHashMap concurrentHashMap = this.f5081a;
        Method method = (Method) concurrentHashMap.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, null);
            concurrentHashMap.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception unused) {
            m(str, false);
            return null;
        }
    }

    public final boolean p(Context context, String str, AtomicReference atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                zzbys.zza(atomicReference, null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception unused) {
                m("getInstance", z);
                return false;
            }
        }
        return true;
    }

    public final String zza(Context context) {
        Object n;
        if (zzp(context) && (n = n(context, "generateEventId")) != null) {
            return n.toString();
        }
        return null;
    }

    public final String zzb(final Context context) {
        if (zzp(context)) {
            zzbce zzbceVar = zzbcn.zzaq;
            edt edtVar = edt.f15376a;
            zzbcl zzbclVar = edtVar.f15379d;
            zzbcl zzbclVar2 = edtVar.f15379d;
            long longValue = ((Long) zzbclVar.zza(zzbceVar)).longValue();
            if (longValue < 0) {
                return (String) n(context, "getAppInstanceId");
            }
            AtomicReference atomicReference = this.f5084d;
            if (atomicReference.get() == null) {
                zzbce zzbceVar2 = zzbcn.zzar;
                zzbys.zza(atomicReference, null, new ThreadPoolExecutor(((Integer) zzbclVar2.zza(zzbceVar2)).intValue(), ((Integer) zzbclVar2.zza(zzbceVar2)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new dil(4)));
            }
            try {
                return (String) ((ExecutorService) atomicReference.get()).submit(new Callable() { // from class: com.google.android.gms.internal.ads.zzbyt
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return (String) zzbyv.this.n(context, "getAppInstanceId");
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused) {
                return "TIME_OUT";
            } catch (Exception unused2) {
            }
        }
        return null;
    }

    public final String zzc(Context context) {
        if (zzp(context)) {
            AtomicReference atomicReference = this.f5085e;
            if (p(context, "com.google.android.gms.measurement.AppMeasurement", atomicReference, true)) {
                try {
                    String str = (String) o(context, "getCurrentScreenName").invoke(atomicReference.get(), null);
                    if (str == null) {
                        str = (String) o(context, "getCurrentScreenClass").invoke(atomicReference.get(), null);
                    }
                    return str == null ? "" : str;
                } catch (Exception unused) {
                    m("getCurrentScreenName", false);
                }
            }
        }
        return "";
    }

    public final String zzd(Context context) {
        if (!zzp(context)) {
            return null;
        }
        synchronized (this.f5087g) {
            try {
                String str = this.h;
                if (str != null) {
                    return str;
                }
                String str2 = (String) n(context, "getGmpAppId");
                this.h = str2;
                return str2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zzf(Context context, String str) {
        if (zzp(context)) {
            k(context, str, "beginAdUnitExposure");
        }
    }

    public final void zzg(Context context, String str) {
        if (zzp(context)) {
            k(context, str, "endAdUnitExposure");
        }
    }

    public final void zzh(Context context, String str) {
        l(context, "_aa", str, null);
    }

    public final void zzi(Context context, String str) {
        l(context, "_aq", str, null);
    }

    public final void zzj(Context context, String str, Map map) {
        l(context, "_ac", str, zzq(map));
    }

    public final void zzk(Context context, String str, Map map) {
        l(context, "_ai", str, zzq(map));
    }

    public final void zzl(Context context, String str, String str2, String str3, int i) {
        if (zzp(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("reward_type", str3);
            bundle.putInt("reward_value", i);
            l(context, "_ar", str, bundle);
            agd.e("Log a Firebase reward video event, reward type: " + str3 + ", reward value: " + i);
        }
    }

    public final void zzm(Context context, aeh aehVar) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzax)).booleanValue() && zzp(context) && j(context)) {
            synchronized (this.f5086f) {
            }
        }
    }

    public final void zzn(Context context, pw pwVar) {
        zzbyw.zzd(context).b().zzc(pwVar);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzax)).booleanValue() && zzp(context) && j(context)) {
            synchronized (this.f5086f) {
            }
        }
    }

    @Deprecated
    public final void zzo(Context context, String str) {
        if (zzp(context) && (context instanceof Activity)) {
            AtomicReference atomicReference = this.i;
            if (p(context, "com.google.firebase.analytics.FirebaseAnalytics", atomicReference, false)) {
                ConcurrentHashMap concurrentHashMap = this.f5081a;
                Method method = (Method) concurrentHashMap.get("setCurrentScreen");
                if (method == null) {
                    try {
                        method = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod("setCurrentScreen", Activity.class, String.class, String.class);
                        concurrentHashMap.put("setCurrentScreen", method);
                    } catch (Exception unused) {
                        m("setCurrentScreen", false);
                        method = null;
                    }
                }
                try {
                    method.invoke(atomicReference.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception unused2) {
                    m("setCurrentScreen", false);
                }
            }
        }
    }

    public final boolean zzp(Context context) {
        int l;
        zzbce zzbceVar = zzbcn.zzak;
        edt edtVar = edt.f15376a;
        if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && !this.f5082b.get()) {
            if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzav)).booleanValue()) {
                AtomicInteger atomicInteger = this.f5083c;
                if (atomicInteger.get() == -1) {
                    mx mxVar = cbv.f12612a.f12615d;
                    gna gnaVar = gna.i;
                    if (gnaVar.l(context, 12451000) != 0 && ((l = gnaVar.l(context, 12451000)) == 0 || l == 2)) {
                        agd.b("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                        atomicInteger.set(0);
                    } else {
                        atomicInteger.set(1);
                    }
                }
                if (atomicInteger.get() == 1) {
                }
            }
            return true;
        }
        return false;
    }
}
