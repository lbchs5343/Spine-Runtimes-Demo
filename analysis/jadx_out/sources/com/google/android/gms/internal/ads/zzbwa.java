package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.awt;
import g.cbv;
import g.chk;
import g.dyd;
import g.edt;
import g.esy;
import g.mx;
import g.ti;
import java.util.Locale;

/* loaded from: classes3.dex */
public final class zzbwa {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f5022a;

    /* renamed from: b, reason: collision with root package name */
    public final float f5023b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5024c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f5025d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5026e;

    /* renamed from: f, reason: collision with root package name */
    public final String f5027f;

    /* renamed from: g, reason: collision with root package name */
    public int f5028g;
    public final boolean h;
    public final int i;
    public final String j;
    public int k;
    public final String l;
    public final boolean m;
    public final boolean n;

    /* JADX WARN: Can't wrap try/catch for region: R(14:0|1|(1:3)(1:34)|4|(1:6)|7|(3:28|29|(7:31|10|11|12|(1:14)|16|(2:20|21)(1:23)))|9|10|11|12|(0)|16|(1:24)(3:18|20|21)) */
    /* JADX WARN: Removed duplicated region for block: B:14:0x009c A[Catch: Exception -> 0x00b3, TRY_LEAVE, TryCatch #1 {Exception -> 0x00b3, blocks: (B:12:0x008e, B:14:0x009c), top: B:11:0x008e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzbwa(Context context) {
        ActivityInfo activityInfo;
        PackageInfo c2;
        String str;
        Resources resources;
        DisplayMetrics displayMetrics;
        PackageInfo c3;
        PackageManager packageManager = context.getPackageManager();
        zzbcn.zza(context);
        q(context);
        p(context);
        r(context);
        Locale locale = Locale.getDefault();
        this.m = o(packageManager, "geo:0,0?q=donuts") != null;
        this.f5025d = o(packageManager, "http://www.google.com") != null;
        this.f5027f = locale.getCountry();
        esy esyVar = ti.f20033a.z;
        mx mxVar = cbv.f12612a.f12615d;
        this.h = mx.l();
        this.n = awt.aa(context);
        this.f5022a = awt.u(context);
        this.j = locale.getLanguage();
        ResolveInfo o = o(packageManager, "market://details?id=com.google.android.gms.ads");
        String str2 = null;
        if (o != null && (activityInfo = o.activityInfo) != null) {
            try {
                c2 = chk.c(context).c(0, activityInfo.packageName);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (c2 != null) {
                str = c2.versionCode + "." + activityInfo.packageName;
                this.l = str;
                c3 = chk.c(context).c(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, "com.android.vending");
                if (c3 != null) {
                    str2 = c3.versionCode + "." + c3.packageName;
                }
                this.f5024c = str2;
                resources = context.getResources();
                if (resources == null && (displayMetrics = resources.getDisplayMetrics()) != null) {
                    this.f5023b = displayMetrics.density;
                    this.f5026e = displayMetrics.widthPixels;
                    this.i = displayMetrics.heightPixels;
                }
                return;
            }
        }
        str = null;
        this.l = str;
        c3 = chk.c(context).c(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME, "com.android.vending");
        if (c3 != null) {
        }
        this.f5024c = str2;
        resources = context.getResources();
        if (resources == null) {
            return;
        }
        this.f5023b = displayMetrics.density;
        this.f5026e = displayMetrics.widthPixels;
        this.i = displayMetrics.heightPixels;
    }

    public zzbwa(Context context, zzbwb zzbwbVar) {
        zzbcn.zza(context);
        q(context);
        p(context);
        r(context);
        String str = Build.FINGERPRINT;
        String str2 = Build.DEVICE;
        zzbdo.zzg(context);
        this.m = zzbwbVar.zza;
        this.f5025d = zzbwbVar.zzb;
        this.f5027f = zzbwbVar.zzc;
        this.h = zzbwbVar.zzd;
        this.n = zzbwbVar.zze;
        this.f5022a = zzbwbVar.zzf;
        this.j = zzbwbVar.zzg;
        this.l = zzbwbVar.zzh;
        this.f5024c = zzbwbVar.zzi;
        this.f5023b = zzbwbVar.zzl;
        this.f5026e = zzbwbVar.zzm;
        this.i = zzbwbVar.zzn;
    }

    public static ResolveInfo o(PackageManager packageManager, String str) {
        try {
            return packageManager.resolveActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)), 65536);
        } catch (Throwable th) {
            ti.f20033a.f20034ab.zzw(th, "DeviceInfo.getResolveInfo");
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0045  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(Context context) {
        int networkType;
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        telephonyManager.getNetworkOperator();
        if (dyd.aq()) {
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzik)).booleanValue()) {
                networkType = 0;
                this.k = networkType;
                telephonyManager.getPhoneType();
                this.f5028g = -2;
                esy esyVar = ti.f20033a.z;
                if (esy.w(context, "android.permission.ACCESS_NETWORK_STATE")) {
                    return;
                }
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null) {
                    this.f5028g = activeNetworkInfo.getType();
                    activeNetworkInfo.getDetailedState().ordinal();
                } else {
                    this.f5028g = -1;
                }
                connectivityManager.isActiveNetworkMetered();
                return;
            }
        }
        networkType = telephonyManager.getNetworkType();
        this.k = networkType;
        telephonyManager.getPhoneType();
        this.f5028g = -2;
        esy esyVar2 = ti.f20033a.z;
        if (esy.w(context, "android.permission.ACCESS_NETWORK_STATE")) {
        }
    }

    public final void q(Context context) {
        AudioManager audioManager = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
        if (audioManager != null) {
            try {
                audioManager.getMode();
                audioManager.isMusicActive();
                audioManager.isSpeakerphoneOn();
                audioManager.getStreamVolume(3);
                audioManager.getRingerMode();
                audioManager.getStreamVolume(2);
            } catch (Throwable th) {
                ti.f20033a.f20034ab.zzw(th, "DeviceInfo.gatherAudioInfo");
            }
        }
    }

    public final void r(Context context) {
        IntentFilter intentFilter = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        Intent registerReceiver = (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzkG)).booleanValue() || Build.VERSION.SDK_INT < 33) ? context.registerReceiver(null, intentFilter) : context.registerReceiver(null, intentFilter, 4);
        if (registerReceiver != null) {
            registerReceiver.getIntExtra("status", -1);
            registerReceiver.getIntExtra("level", -1);
            registerReceiver.getIntExtra("scale", -1);
        }
    }

    public final zzbwb zza() {
        return new zzbwb(this.m, this.f5025d, this.f5027f, this.h, this.n, this.f5022a, this.j, this.l, this.f5024c, this.f5028g, this.k, this.f5023b, this.f5026e, this.i);
    }
}
