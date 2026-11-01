package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import g.agd;
import g.akx;
import g.ddk;
import g.esy;
import g.gis;
import g.gpo;
import g.ti;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public final class zzfgk {

    /* renamed from: a, reason: collision with root package name */
    public static zzfgk f7878a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f7879b;

    /* renamed from: c, reason: collision with root package name */
    public final gis f7880c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReference f7881d = new AtomicReference();

    public zzfgk(Context context, gis gisVar) {
        this.f7879b = context;
        this.f7880c = gisVar;
    }

    public static zzfgk zzd(Context context) {
        synchronized (zzfgk.class) {
            try {
                zzfgk zzfgkVar = f7878a;
                if (zzfgkVar != null) {
                    return zzfgkVar;
                }
                Context applicationContext = context.getApplicationContext();
                long longValue = ((Long) zzbeo.zzb.zze()).longValue();
                gis gisVar = null;
                if (longValue > 0 && longValue <= 243799202) {
                    try {
                        gisVar = ddk.asInterface((IBinder) applicationContext.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(applicationContext));
                    } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e2) {
                        agd.f("Failed to retrieve lite SDK info.", e2);
                    }
                }
                zzfgk zzfgkVar2 = new zzfgk(applicationContext, gisVar);
                f7878a = zzfgkVar2;
                return zzfgkVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final zzbpg zzb() {
        return (zzbpg) this.f7881d.get();
    }

    public final akx zzc(int i, boolean z, int i2) {
        esy esyVar = ti.f20033a.z;
        boolean s = esy.s(this.f7879b);
        akx akxVar = new akx(243799000, i2, true, s);
        if (!((Boolean) zzbeo.zzc.zze()).booleanValue()) {
            return akxVar;
        }
        gpo gpoVar = null;
        gis gisVar = this.f7880c;
        if (gisVar != null) {
            try {
                gpoVar = gisVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
        }
        return gpoVar != null ? new akx(243799000, gpoVar.zza(), true, s) : akxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000e  */
    /* JADX WARN: Removed duplicated region for block: B:8:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String zze() {
        gpo liteSdkVersion;
        gis gisVar = this.f7880c;
        if (gisVar != null) {
            try {
                liteSdkVersion = gisVar.getLiteSdkVersion();
            } catch (RemoteException unused) {
            }
            if (liteSdkVersion == null) {
                return liteSdkVersion.zzb();
            }
            return null;
        }
        liteSdkVersion = null;
        if (liteSdkVersion == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzf(zzbpg zzbpgVar) {
        zzbpg adapterCreator;
        boolean booleanValue = ((Boolean) zzbeo.zza.zze()).booleanValue();
        AtomicReference atomicReference = this.f7881d;
        if (!booleanValue) {
            zzfgj.zza(atomicReference, null, zzbpgVar);
            return;
        }
        gis gisVar = this.f7880c;
        if (gisVar != null) {
            try {
                adapterCreator = gisVar.getAdapterCreator();
            } catch (RemoteException unused) {
            }
            if (adapterCreator != null) {
                zzbpgVar = adapterCreator;
            }
            zzfgj.zza(atomicReference, null, zzbpgVar);
        }
        adapterCreator = null;
        if (adapterCreator != null) {
        }
        zzfgj.zza(atomicReference, null, zzbpgVar);
    }
}
