package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.RemoteException;
import g.agd;
import g.akx;
import g.cbv;
import g.cqq;
import g.dcy;
import g.dub;
import g.edt;
import g.fdy;
import g.ffr;
import g.ti;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.Callable;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzebg extends zzbve {

    /* renamed from: a, reason: collision with root package name */
    public final zzbwf f6758a;

    /* renamed from: b, reason: collision with root package name */
    public final zzeby f6759b;

    /* renamed from: c, reason: collision with root package name */
    public final zzclo f6760c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayDeque f6761d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f6762e;

    /* renamed from: f, reason: collision with root package name */
    public final zzges f6763f;

    /* renamed from: g, reason: collision with root package name */
    public final zzfko f6764g;

    public zzebg(Context context, zzges zzgesVar, zzbwf zzbwfVar, zzclo zzcloVar, zzeby zzebyVar, ArrayDeque arrayDeque, zzebv zzebvVar, zzfko zzfkoVar) {
        zzbcn.zza(context);
        this.f6762e = context;
        this.f6763f = zzgesVar;
        this.f6758a = zzbwfVar;
        this.f6759b = zzebyVar;
        this.f6760c = zzcloVar;
        this.f6761d = arrayDeque;
        this.f6764g = zzfkoVar;
    }

    public static zzfix h(final zzbvx zzbvxVar, zzfjr zzfjrVar, final zzexc zzexcVar) {
        zzgdp zzgdpVar = new zzgdp() { // from class: com.google.android.gms.internal.ads.zzear
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzexc.this.zzb().zza(cbv.f12612a.f12615d.w((Bundle) obj), zzbvxVar.zzm);
            }
        };
        return zzfjrVar.zzb(zzfjl.GMS_SIGNALS, zzgei.zzh(zzbvxVar.zza)).zzf(zzgdpVar).zze(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzeas
            @Override // com.google.android.gms.internal.ads.zzfiv
            public final Object zza(Object obj) {
                JSONObject jSONObject = (JSONObject) obj;
                agd.e("Ad request signals:");
                agd.e(jSONObject.toString(2));
                return jSONObject;
            }
        }).zza();
    }

    public static zzfix i(zzfix zzfixVar, zzfjr zzfjrVar, zzboi zzboiVar, zzfkl zzfklVar, zzfka zzfkaVar) {
        zzbny zza = zzboiVar.zza("AFMA_getAdDictionary", zzbof.zza, new zzboa() { // from class: com.google.android.gms.internal.ads.zzeax
            @Override // com.google.android.gms.internal.ads.zzboa
            public final Object zza(JSONObject jSONObject) {
                return new zzbvz(jSONObject);
            }
        });
        zzfkk.zzd(zzfixVar, zzfkaVar);
        zzfix zza2 = zzfjrVar.zzb(zzfjl.BUILD_URL, zzfixVar).zzf(zza).zza();
        zzfkk.zzc(zza2, zzfklVar, zzfkaVar);
        return zza2;
    }

    public final synchronized void j() {
        int intValue = ((Long) zzbeu.zzc.zze()).intValue();
        while (this.f6761d.size() >= intValue) {
            this.f6761d.removeFirst();
        }
    }

    public final synchronized zzebd k(String str) {
        Iterator it = this.f6761d.iterator();
        while (it.hasNext()) {
            zzebd zzebdVar = (zzebd) it.next();
            if (zzebdVar.zzc.equals(str)) {
                it.remove();
                return zzebdVar;
            }
        }
        return null;
    }

    public final void m(dcy dcyVar, zzbvp zzbvpVar, zzbvx zzbvxVar) {
        zzgei.zzr(zzgei.zzn(dcyVar, new zzgdp(this) { // from class: com.google.android.gms.internal.ads.zzeay
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzgei.zzh(zzfgp.zza((InputStream) obj));
            }
        }, zzcaj.zza), new ffr(zzbvxVar, 19, zzbvpVar), zzcaj.zzf);
    }

    public final dcy zzb(final zzbvx zzbvxVar, int i) {
        if (!((Boolean) zzbeu.zza.zze()).booleanValue()) {
            return zzgei.zzg(new Exception("Split request is disabled."));
        }
        zzfhj zzfhjVar = zzbvxVar.zzi;
        if (zzfhjVar == null) {
            return zzgei.zzg(new Exception("Pool configuration missing from request."));
        }
        if (zzfhjVar.zzc == 0 || zzfhjVar.zzd == 0) {
            return zzgei.zzg(new Exception("Caching is disabled."));
        }
        zzbnz zzbnzVar = ti.f20033a.w;
        akx forPackage = akx.forPackage();
        Context context = this.f6762e;
        zzboi zzb = zzbnzVar.zzb(context, forPackage, this.f6764g);
        zzexc zzr = this.f6760c.zzr(zzbvxVar, i);
        zzfjr zzc = zzr.zzc();
        final zzfix h = h(zzbvxVar, zzc, zzr);
        zzfkl zzd = zzr.zzd();
        final zzfka zza = zzfjz.zza(context, 9);
        final zzfix i2 = i(h, zzc, zzb, zzd, zza);
        return zzc.zza(zzfjl.GET_URL_AND_CACHE_KEY, h, i2).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeav
            @Override // java.util.concurrent.Callable
            public final Object call() {
                zzebg zzebgVar = zzebg.this;
                dcy dcyVar = i2;
                dcy dcyVar2 = h;
                zzbvx zzbvxVar2 = zzbvxVar;
                zzfka zzfkaVar = zza;
                zzebgVar.getClass();
                String zze = ((zzbvz) dcyVar.get()).zze();
                zzebd zzebdVar = new zzebd((zzbvz) dcyVar.get(), (JSONObject) dcyVar2.get(), zzbvxVar2.zzh, zze, zzfkaVar);
                synchronized (zzebgVar) {
                    zzebgVar.j();
                    zzebgVar.f6761d.addLast(zzebdVar);
                }
                return new ByteArrayInputStream(zze.getBytes(StandardCharsets.UTF_8));
            }
        }).zza();
    }

    public final dcy zzc(final zzbvx zzbvxVar, int i) {
        zzebd k;
        zzfix zza;
        zzbnz zzbnzVar = ti.f20033a.w;
        akx forPackage = akx.forPackage();
        zzfko zzfkoVar = this.f6764g;
        Context context = this.f6762e;
        zzboi zzb = zzbnzVar.zzb(context, forPackage, zzfkoVar);
        zzexc zzr = this.f6760c.zzr(zzbvxVar, i);
        zzbny zza2 = zzb.zza("google.afma.response.normalize", zzebf.zza, zzbof.zzb);
        if (((Boolean) zzbeu.zza.zze()).booleanValue()) {
            k = k(zzbvxVar.zzh);
            if (k == null) {
                agd.e("Request contained a PoolKey but no matching parameters were found.");
            }
        } else {
            String str = zzbvxVar.zzj;
            k = null;
            if (str != null && !str.isEmpty()) {
                agd.e("Request contained a PoolKey but split request is disabled.");
            }
        }
        zzfka zza3 = k == null ? zzfjz.zza(context, 9) : k.zzd;
        zzfkl zzd = zzr.zzd();
        zzd.zzd(zzbvxVar.zza.getStringArrayList("ad_types"));
        zzebx zzebxVar = new zzebx(zzbvxVar.zzg, zzd, zza3);
        zzebu zzebuVar = new zzebu(context, zzbvxVar.zzb.afmaVersion, this.f6758a, i);
        zzfjr zzc = zzr.zzc();
        zzfka zza4 = zzfjz.zza(context, 11);
        if (k == null) {
            final zzfix h = h(zzbvxVar, zzc, zzr);
            final zzfix i2 = i(h, zzc, zzb, zzd, zza3);
            zzfka zza5 = zzfjz.zza(context, 10);
            final zzfix zza6 = zzc.zza(zzfjl.HTTP, i2, h).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeat
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzbvx zzbvxVar2;
                    Bundle bundle;
                    zzbvz zzbvzVar = (zzbvz) dcy.this.get();
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzci)).booleanValue() && (bundle = (zzbvxVar2 = zzbvxVar).zzm) != null) {
                        bundle.putLong(zzdrv.GET_AD_DICTIONARY_SDKCORE_START.zza(), zzbvzVar.zzc());
                        zzbvxVar2.zzm.putLong(zzdrv.GET_AD_DICTIONARY_SDKCORE_END.zza(), zzbvzVar.zzb());
                    }
                    return new zzebw((JSONObject) h.get(), zzbvzVar);
                }
            }).zze(zzebxVar).zze(new zzfkg(zza5)).zze(zzebuVar).zza();
            zzfkk.zza(zza6, zzd, zza5);
            zzfkk.zzd(zza6, zza4);
            zza = zzc.zza(zzfjl.PRE_PROCESS, h, i2, zza6).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeau
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    Bundle bundle;
                    if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzci)).booleanValue() && (bundle = zzbvx.this.zzm) != null) {
                        dub.m(ti.f20033a.v, bundle, zzdrv.HTTP_RESPONSE_READY.zza());
                    }
                    return new zzebf((zzebt) zza6.get(), (JSONObject) h.get(), (zzbvz) i2.get());
                }
            }).zzf(zza2).zza();
        } else {
            zzebw zzebwVar = new zzebw(k.zzb, k.zza);
            zzfka zza7 = zzfjz.zza(context, 10);
            final zzfix zza8 = zzc.zzb(zzfjl.HTTP, zzgei.zzh(zzebwVar)).zze(zzebxVar).zze(new zzfkg(zza7)).zze(zzebuVar).zza();
            zzfkk.zza(zza8, zzd, zza7);
            final dcy zzh = zzgei.zzh(k);
            zzfkk.zzd(zza8, zza4);
            zza = zzc.zza(zzfjl.PRE_PROCESS, zza8, zzh).zza(new Callable() { // from class: com.google.android.gms.internal.ads.zzeaq
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    zzebt zzebtVar = (zzebt) dcy.this.get();
                    dcy dcyVar = zzh;
                    return new zzebf(zzebtVar, ((zzebd) dcyVar.get()).zzb, ((zzebd) dcyVar.get()).zza);
                }
            }).zzf(zza2).zza();
        }
        zzfkk.zza(zza, zzd, zza4);
        return zza;
    }

    public final dcy zzd(final zzbvx zzbvxVar, int i) {
        zzbnz zzbnzVar = ti.f20033a.w;
        akx forPackage = akx.forPackage();
        zzfko zzfkoVar = this.f6764g;
        Context context = this.f6762e;
        zzboi zzb = zzbnzVar.zzb(context, forPackage, zzfkoVar);
        if (!((Boolean) zzbez.zza.zze()).booleanValue()) {
            return zzgei.zzg(new Exception("Signal collection disabled."));
        }
        zzexc zzr = this.f6760c.zzr(zzbvxVar, i);
        final zzewc zza = zzr.zza();
        zzbny zza2 = zzb.zza("google.afma.request.getSignals", zzbof.zza, zzbof.zzb);
        zzfka zza3 = zzfjz.zza(context, 22);
        zzfix zza4 = zzr.zzc().zzb(zzfjl.GET_SIGNALS, zzgei.zzh(zzbvxVar.zza)).zze(new zzfkg(zza3)).zzf(new zzgdp() { // from class: com.google.android.gms.internal.ads.zzeaz
            @Override // com.google.android.gms.internal.ads.zzgdp
            public final dcy zza(Object obj) {
                return zzewc.this.zza(cbv.f12612a.f12615d.w((Bundle) obj), zzbvxVar.zzm);
            }
        }).zzb(zzfjl.JS_SIGNALS).zzf(zza2).zza();
        zzfkl zzd = zzr.zzd();
        zzd.zzd(zzbvxVar.zza.getStringArrayList("ad_types"));
        zzd.zzf(zzbvxVar.zza.getBundle("extras"));
        zzfkk.zzb(zza4, zzd, zza3);
        if (((Boolean) zzben.zzg.zze()).booleanValue()) {
            zzeby zzebyVar = this.f6759b;
            Objects.requireNonNull(zzebyVar);
            zza4.addListener(new zzeaw(zzebyVar), this.f6763f);
        }
        return zza4;
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zze(zzbvx zzbvxVar, zzbvp zzbvpVar) {
        m(zzb(zzbvxVar, Binder.getCallingUid()), zzbvpVar, zzbvxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zzf(zzbvx zzbvxVar, zzbvp zzbvpVar) {
        Bundle bundle;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzci)).booleanValue() && (bundle = zzbvxVar.zzm) != null) {
            dub.m(ti.f20033a.v, bundle, zzdrv.SERVICE_CONNECTED.zza());
        }
        m(zzd(zzbvxVar, Binder.getCallingUid()), zzbvpVar, zzbvxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zzg(zzbvx zzbvxVar, zzbvp zzbvpVar) {
        Bundle bundle;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzci)).booleanValue() && (bundle = zzbvxVar.zzm) != null) {
            dub.m(ti.f20033a.v, bundle, zzdrv.SERVICE_CONNECTED.zza());
        }
        dcy zzc = zzc(zzbvxVar, Binder.getCallingUid());
        m(zzc, zzbvpVar, zzbvxVar);
        if (((Boolean) zzben.zze.zze()).booleanValue()) {
            zzeby zzebyVar = this.f6759b;
            Objects.requireNonNull(zzebyVar);
            zzc.addListener(new zzeaw(zzebyVar), this.f6763f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zzh(String str, zzbvp zzbvpVar) {
        m(zzj(str), zzbvpVar, null);
    }

    @Override // com.google.android.gms.internal.ads.zzbvf
    public final void zzi(zzbuz zzbuzVar, zzbvq zzbvqVar) {
        if (((Boolean) zzbfb.zza.zze()).booleanValue()) {
            this.f6760c.zzF();
            String str = zzbuzVar.zza;
            zzgei.zzr(zzgei.zzh(null), new fdy(28, zzbvqVar, zzbuzVar, false), zzcaj.zzf);
        } else {
            try {
                zzbvqVar.zzf("", zzbuzVar);
            } catch (RemoteException unused) {
                agd.h();
            }
        }
    }

    public final dcy zzj(String str) {
        if (((Boolean) zzbeu.zza.zze()).booleanValue()) {
            return k(str) == null ? zzgei.zzg(new Exception("URL to be removed not found for cache key: ".concat(String.valueOf(str)))) : zzgei.zzh(new cqq());
        }
        return zzgei.zzg(new Exception("Split request is disabled."));
    }
}
