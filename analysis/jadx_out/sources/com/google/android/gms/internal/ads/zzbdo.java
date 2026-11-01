package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import g.bpr;
import g.eab;
import g.hds;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbdo {

    /* renamed from: a, reason: collision with root package name */
    public zzbdn f4762a;

    /* renamed from: b, reason: collision with root package name */
    public bpr f4763b;

    /* renamed from: c, reason: collision with root package name */
    public eab f4764c;

    /* renamed from: d, reason: collision with root package name */
    public zzhgr f4765d;

    public static boolean zzg(Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("http://www.example.com"));
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 0);
            List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 65536);
            if (queryIntentActivities != null && resolveActivity != null) {
                for (int i = 0; i < queryIntentActivities.size(); i++) {
                    if (resolveActivity.activityInfo.name.equals(queryIntentActivities.get(i).activityInfo.name)) {
                        return resolveActivity.activityInfo.packageName.equals(zzhgq.zza(context));
                    }
                }
            }
        }
        return false;
    }

    public final bpr zza() {
        eab eabVar = this.f4764c;
        if (eabVar == null) {
            this.f4763b = null;
        } else if (this.f4763b == null) {
            this.f4763b = eabVar.d(null);
        }
        return this.f4763b;
    }

    public final void zzb(Activity activity) {
        String zza;
        if (this.f4764c == null && (zza = zzhgq.zza(activity)) != null) {
            zzhgr zzhgrVar = new zzhgr(this);
            this.f4765d = zzhgrVar;
            zzhgrVar.f19808f = activity.getApplicationContext();
            Intent intent = new Intent("android.support.customtabs.action.CustomTabsService");
            if (!TextUtils.isEmpty(zza)) {
                intent.setPackage(zza);
            }
            activity.bindService(intent, zzhgrVar, 33);
        }
    }

    public final void zzc(eab eabVar) {
        this.f4764c = eabVar;
        eabVar.getClass();
        try {
            ((hds) eabVar.f15169a).c();
        } catch (RemoteException unused) {
        }
        zzbdn zzbdnVar = this.f4762a;
        if (zzbdnVar != null) {
            zzbdnVar.zza();
        }
    }

    public final void zzd() {
        this.f4764c = null;
        this.f4763b = null;
    }

    public final void zze(zzbdn zzbdnVar) {
        this.f4762a = zzbdnVar;
    }

    public final void zzf(Activity activity) {
        zzhgr zzhgrVar = this.f4765d;
        if (zzhgrVar == null) {
            return;
        }
        activity.unbindService(zzhgrVar);
        this.f4764c = null;
        this.f4763b = null;
        this.f4765d = null;
    }
}
