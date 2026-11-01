package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbih;
import com.google.android.gms.internal.ads.zzbij;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzcaj;
import com.google.android.gms.internal.ads.zzcfk;
import com.google.android.gms.internal.ads.zzcwz;
import com.google.android.gms.internal.ads.zzdel;
import g.akx;
import g.aso;
import g.bpp;
import g.cqu;
import g.dye;
import g.edt;
import g.egh;
import g.etg;
import g.evo;
import g.exk;
import g.fbp;
import g.fim;
import g.gst;
import g.ti;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes3.dex */
public final class AdOverlayInfoParcel extends exk implements ReflectedParcelable {
    public static final Parcelable.Creator<AdOverlayInfoParcel> CREATOR = new cqu(6);
    private static final AtomicLong zzy = new AtomicLong(0);
    private static final ConcurrentHashMap zzz = new ConcurrentHashMap();
    public final etg zza;
    public final evo zzb;
    public final fim zzc;
    public final zzcfk zzd;
    public final zzbij zze;
    public final String zzf;
    public final boolean zzg;
    public final String zzh;
    public final gst zzi;
    public final int zzj;
    public final int zzk;
    public final String zzl;
    public final akx zzm;
    public final String zzn;
    public final fbp zzo;
    public final zzbih zzp;
    public final String zzq;
    public final String zzr;
    public final String zzs;
    public final zzcwz zzt;
    public final zzdel zzu;
    public final zzbsz zzv;
    public final boolean zzw;
    public final long zzx;

    public AdOverlayInfoParcel(zzcfk zzcfkVar, akx akxVar, String str, String str2, int i, zzbsz zzbszVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = null;
        this.zzd = zzcfkVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzj = 14;
        this.zzk = 5;
        this.zzl = null;
        this.zzm = akxVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = str;
        this.zzr = str2;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = zzbszVar;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(etg etgVar, IBinder iBinder, IBinder iBinder2, IBinder iBinder3, IBinder iBinder4, String str, boolean z, String str2, IBinder iBinder5, int i, int i2, String str3, akx akxVar, String str4, fbp fbpVar, IBinder iBinder6, String str5, String str6, String str7, IBinder iBinder7, IBinder iBinder8, IBinder iBinder9, boolean z2, long j) {
        this.zza = etgVar;
        this.zzf = str;
        this.zzg = z;
        this.zzh = str2;
        this.zzj = i;
        this.zzk = i2;
        this.zzl = str3;
        this.zzm = akxVar;
        this.zzn = str4;
        this.zzo = fbpVar;
        this.zzq = str5;
        this.zzr = str6;
        this.zzs = str7;
        this.zzw = z2;
        this.zzx = j;
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmC)).booleanValue()) {
            this.zzb = (evo) bpp.b(bpp.d(iBinder));
            this.zzc = (fim) bpp.b(bpp.d(iBinder2));
            this.zzd = (zzcfk) bpp.b(bpp.d(iBinder3));
            this.zzp = (zzbih) bpp.b(bpp.d(iBinder6));
            this.zze = (zzbij) bpp.b(bpp.d(iBinder4));
            this.zzi = (gst) bpp.b(bpp.d(iBinder5));
            this.zzt = (zzcwz) bpp.b(bpp.d(iBinder7));
            this.zzu = (zzdel) bpp.b(bpp.d(iBinder8));
            this.zzv = (zzbsz) bpp.b(bpp.d(iBinder9));
            return;
        }
        aso asoVar = (aso) zzz.remove(Long.valueOf(j));
        if (asoVar == null) {
            throw new NullPointerException("AdOverlayObjects is null");
        }
        this.zzb = asoVar.f10752d;
        this.zzc = asoVar.f10755g;
        this.zzd = asoVar.i;
        this.zzp = asoVar.f10750b;
        this.zze = asoVar.f10751c;
        this.zzt = asoVar.j;
        this.zzu = asoVar.f10749a;
        this.zzv = asoVar.f10754f;
        this.zzi = asoVar.f10753e;
        asoVar.h.cancel(false);
    }

    public AdOverlayInfoParcel(etg etgVar, evo evoVar, fim fimVar, gst gstVar, akx akxVar, zzcfk zzcfkVar, zzdel zzdelVar) {
        this.zza = etgVar;
        this.zzb = evoVar;
        this.zzc = fimVar;
        this.zzd = zzcfkVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = gstVar;
        this.zzj = -1;
        this.zzk = 4;
        this.zzl = null;
        this.zzm = akxVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzdelVar;
        this.zzv = null;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(evo evoVar, fim fimVar, zzbih zzbihVar, zzbij zzbijVar, gst gstVar, zzcfk zzcfkVar, boolean z, int i, String str, akx akxVar, zzdel zzdelVar, zzbsz zzbszVar, boolean z2) {
        this.zza = null;
        this.zzb = evoVar;
        this.zzc = fimVar;
        this.zzd = zzcfkVar;
        this.zzp = zzbihVar;
        this.zze = zzbijVar;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = gstVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = str;
        this.zzm = akxVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzdelVar;
        this.zzv = zzbszVar;
        this.zzw = z2;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(evo evoVar, fim fimVar, zzbih zzbihVar, zzbij zzbijVar, gst gstVar, zzcfk zzcfkVar, boolean z, int i, String str, String str2, akx akxVar, zzdel zzdelVar, zzbsz zzbszVar) {
        this.zza = null;
        this.zzb = evoVar;
        this.zzc = fimVar;
        this.zzd = zzcfkVar;
        this.zzp = zzbihVar;
        this.zze = zzbijVar;
        this.zzf = str2;
        this.zzg = z;
        this.zzh = str;
        this.zzi = gstVar;
        this.zzj = i;
        this.zzk = 3;
        this.zzl = null;
        this.zzm = akxVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzdelVar;
        this.zzv = zzbszVar;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(evo evoVar, fim fimVar, gst gstVar, zzcfk zzcfkVar, int i, akx akxVar, String str, fbp fbpVar, String str2, String str3, String str4, zzcwz zzcwzVar, zzbsz zzbszVar) {
        this.zza = null;
        this.zzb = null;
        this.zzc = fimVar;
        this.zzd = zzcfkVar;
        this.zzp = null;
        this.zze = null;
        this.zzg = false;
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzaQ)).booleanValue()) {
            this.zzf = null;
            this.zzh = null;
        } else {
            this.zzf = str2;
            this.zzh = str3;
        }
        this.zzi = null;
        this.zzj = i;
        this.zzk = 1;
        this.zzl = null;
        this.zzm = akxVar;
        this.zzn = str;
        this.zzo = fbpVar;
        this.zzq = null;
        this.zzr = null;
        this.zzs = str4;
        this.zzt = zzcwzVar;
        this.zzu = null;
        this.zzv = zzbszVar;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(evo evoVar, fim fimVar, gst gstVar, zzcfk zzcfkVar, boolean z, int i, akx akxVar, zzdel zzdelVar, zzbsz zzbszVar) {
        this.zza = null;
        this.zzb = evoVar;
        this.zzc = fimVar;
        this.zzd = zzcfkVar;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = z;
        this.zzh = null;
        this.zzi = gstVar;
        this.zzj = i;
        this.zzk = 2;
        this.zzl = null;
        this.zzm = akxVar;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = zzdelVar;
        this.zzv = zzbszVar;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public AdOverlayInfoParcel(fim fimVar, zzcfk zzcfkVar, int i, akx akxVar) {
        this.zzc = fimVar;
        this.zzd = zzcfkVar;
        this.zzj = 1;
        this.zzm = akxVar;
        this.zza = null;
        this.zzb = null;
        this.zzp = null;
        this.zze = null;
        this.zzf = null;
        this.zzg = false;
        this.zzh = null;
        this.zzi = null;
        this.zzk = 1;
        this.zzl = null;
        this.zzn = null;
        this.zzo = null;
        this.zzq = null;
        this.zzr = null;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzv = null;
        this.zzw = false;
        this.zzx = zzy.getAndIncrement();
    }

    public static AdOverlayInfoParcel zza(Intent intent) {
        try {
            Bundle bundleExtra = intent.getBundleExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
            bundleExtra.setClassLoader(AdOverlayInfoParcel.class.getClassLoader());
            return (AdOverlayInfoParcel) bundleExtra.getParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo");
        } catch (Exception e2) {
            if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmC)).booleanValue()) {
                return null;
            }
            ti.f20033a.f20034ab.zzw(e2, "AdOverlayInfoParcel.getFromIntent");
            return null;
        }
    }

    private static final IBinder zzc(Object obj) {
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmC)).booleanValue()) {
            return null;
        }
        return new bpp(obj);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int af = egh.af(parcel, 20293);
        egh.u(parcel, 2, this.zza, i);
        egh.az(parcel, 3, zzc(this.zzb));
        egh.az(parcel, 4, zzc(this.zzc));
        egh.az(parcel, 5, zzc(this.zzd));
        egh.az(parcel, 6, zzc(this.zze));
        egh.p(parcel, 7, this.zzf);
        boolean z = this.zzg;
        egh.aq(parcel, 8, 4);
        parcel.writeInt(z ? 1 : 0);
        egh.p(parcel, 9, this.zzh);
        egh.az(parcel, 10, zzc(this.zzi));
        int i2 = this.zzj;
        egh.aq(parcel, 11, 4);
        parcel.writeInt(i2);
        int i3 = this.zzk;
        egh.aq(parcel, 12, 4);
        parcel.writeInt(i3);
        egh.p(parcel, 13, this.zzl);
        egh.u(parcel, 14, this.zzm, i);
        egh.p(parcel, 16, this.zzn);
        egh.u(parcel, 17, this.zzo, i);
        egh.az(parcel, 18, zzc(this.zzp));
        egh.p(parcel, 19, this.zzq);
        egh.p(parcel, 24, this.zzr);
        egh.p(parcel, 25, this.zzs);
        egh.az(parcel, 26, zzc(this.zzt));
        egh.az(parcel, 27, zzc(this.zzu));
        egh.az(parcel, 28, zzc(this.zzv));
        boolean z2 = this.zzw;
        egh.aq(parcel, 29, 4);
        parcel.writeInt(z2 ? 1 : 0);
        long j = this.zzx;
        egh.aq(parcel, 30, 8);
        parcel.writeLong(j);
        egh.s(parcel, af);
        if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzmC)).booleanValue()) {
            zzz.put(Long.valueOf(this.zzx), new aso(this.zzb, this.zzc, this.zzd, this.zzp, this.zze, this.zzi, this.zzt, this.zzu, this.zzv, zzcaj.zzd.schedule(new dye(this.zzx), ((Integer) r2.f15379d.zza(zzbcn.zzmE)).intValue(), TimeUnit.SECONDS)));
        }
    }
}
