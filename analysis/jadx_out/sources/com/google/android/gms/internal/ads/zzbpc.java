package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.mediation.customevent.CustomEventAdapter;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import g.agd;
import g.aqq;
import g.dn;
import g.xm;

/* loaded from: classes3.dex */
public final class zzbpc extends zzbpf {
    @Override // com.google.android.gms.internal.ads.zzbpg
    public final zzbpj zzb(String str) throws RemoteException {
        try {
            try {
                Class<?> cls = Class.forName(str, false, zzbpc.class.getClassLoader());
                if (xm.class.isAssignableFrom(cls)) {
                    return new zzbqh((xm) cls.getDeclaredConstructor(null).newInstance(null));
                }
                if (dn.class.isAssignableFrom(cls)) {
                    return new zzbqh((dn) cls.getDeclaredConstructor(null).newInstance(null));
                }
                agd.b("Could not instantiate mediation adapter: " + str + " (not a valid adapter).");
                throw new RemoteException();
            } catch (Throwable unused) {
                zzfxd zzfxdVar = agd.f10175a;
                throw new RemoteException();
            }
        } catch (Throwable unused2) {
            agd.c("Reflection failed, retrying using direct instantiation");
            if ("com.google.ads.mediation.admob.AdMobAdapter".equals(str)) {
                return new zzbqh(new AdMobAdapter());
            }
            if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(str)) {
                return new zzbqh(new CustomEventAdapter());
            }
            throw new RemoteException();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpg
    public final zzbrf zzc(String str) throws RemoteException {
        return new zzbrs((RtbAdapter) Class.forName(str, false, zzbrj.class.getClassLoader()).getDeclaredConstructor(null).newInstance(null));
    }

    @Override // com.google.android.gms.internal.ads.zzbpg
    public final boolean zzd(String str) throws RemoteException {
        try {
            return dn.class.isAssignableFrom(Class.forName(str, false, zzbpc.class.getClassLoader()));
        } catch (Throwable unused) {
            agd.b("Could not load custom event implementation class as Adapter: " + str + ", assuming old custom event implementation.");
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpg
    public final boolean zze(String str) throws RemoteException {
        try {
            return aqq.class.isAssignableFrom(Class.forName(str, false, zzbpc.class.getClassLoader()));
        } catch (Throwable unused) {
            agd.b("Could not load custom event implementation class: " + str + ", trying Adapter implementation class.");
            return false;
        }
    }
}
