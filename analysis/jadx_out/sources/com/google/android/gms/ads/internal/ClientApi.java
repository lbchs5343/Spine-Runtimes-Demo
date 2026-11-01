package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.os.Parcel;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.internal.ads.zzayd;
import com.google.android.gms.internal.ads.zzaye;
import com.google.android.gms.internal.ads.zzbgc;
import com.google.android.gms.internal.ads.zzbkp;
import com.google.android.gms.internal.ads.zzbkq;
import com.google.android.gms.internal.ads.zzbkt;
import com.google.android.gms.internal.ads.zzbpf;
import com.google.android.gms.internal.ads.zzbpg;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbtg;
import com.google.android.gms.internal.ads.zzbxc;
import com.google.android.gms.internal.ads.zzbzh;
import com.google.android.gms.internal.ads.zzchk;
import com.google.android.gms.internal.ads.zzdjs;
import com.google.android.gms.internal.ads.zzdju;
import com.google.android.gms.internal.ads.zzdtv;
import com.google.android.gms.internal.ads.zzelv;
import com.google.android.gms.internal.ads.zzezt;
import com.google.android.gms.internal.ads.zzfbh;
import com.google.android.gms.internal.ads.zzfcy;
import com.google.android.gms.internal.ads.zzfem;
import com.google.android.gms.internal.ads.zzfeq;
import g.akx;
import g.apq;
import g.bfd;
import g.bhk;
import g.bjq;
import g.bpp;
import g.deq;
import g.drf;
import g.dzg;
import g.eno;
import g.gbf;
import g.hav;
import g.km;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ClientApi extends zzayd implements drf {
    public ClientApi() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // g.drf
    public final dzg a(bjq bjqVar, zzbpg zzbpgVar, int i) {
        return zzchk.zzb((Context) bpp.b(bjqVar), zzbpgVar, i).zzA();
    }

    @Override // g.drf
    public final zzbgc b(bjq bjqVar, bjq bjqVar2) {
        return new zzdju((FrameLayout) bpp.b(bjqVar), (FrameLayout) bpp.b(bjqVar2), 243799000);
    }

    @Override // g.drf
    public final bhk c(bjq bjqVar, zzbpg zzbpgVar, int i) {
        return zzchk.zzb((Context) bpp.b(bjqVar), zzbpgVar, i).zzm();
    }

    @Override // g.drf
    public final apq d(bjq bjqVar, int i) {
        return zzchk.zzb((Context) bpp.b(bjqVar), null, i).zzc();
    }

    @Override // g.drf
    public final zzbxc e(bjq bjqVar, String str, zzbpg zzbpgVar, int i) {
        Context context = (Context) bpp.b(bjqVar);
        zzfem zzw = zzchk.zzb(context, zzbpgVar, i).zzw();
        zzw.mo18zzb(context);
        zzw.mo17zza(str);
        return zzw.mo19zzc().zza();
    }

    @Override // g.drf
    public final zzbkt f(bjq bjqVar, zzbpg zzbpgVar, int i, zzbkq zzbkqVar) {
        Context context = (Context) bpp.b(bjqVar);
        zzdtv zzk = zzchk.zzb(context, zzbpgVar, i).zzk();
        zzk.zzb(context);
        zzk.zza(zzbkqVar);
        return zzk.zzc().zzd();
    }

    @Override // g.drf
    public final deq g(bjq bjqVar, eno enoVar, String str, zzbpg zzbpgVar, int i) {
        Context context = (Context) bpp.b(bjqVar);
        zzfcy zzv = zzchk.zzb(context, zzbpgVar, i).zzv();
        zzv.mo9zzc(context);
        zzv.mo7zza(enoVar);
        zzv.mo8zzb(str);
        return zzv.mo10zzd().zza();
    }

    @Override // g.drf
    public final zzbzh h(bjq bjqVar, zzbpg zzbpgVar, int i) {
        return zzchk.zzb((Context) bpp.b(bjqVar), zzbpgVar, i).zzq();
    }

    @Override // g.drf
    public final deq i(bjq bjqVar, eno enoVar, String str, int i) {
        return new gbf((Context) bpp.b(bjqVar), enoVar, str, new akx(243799000, i, true, false));
    }

    @Override // g.drf
    public final deq j(bjq bjqVar, eno enoVar, String str, zzbpg zzbpgVar, int i) {
        Context context = (Context) bpp.b(bjqVar);
        zzfbh zzu = zzchk.zzb(context, zzbpgVar, i).zzu();
        zzu.zzc(context);
        zzu.zza(enoVar);
        zzu.zzb(str);
        return zzu.zzd().zza();
    }

    @Override // g.drf
    public final hav k(bjq bjqVar, String str, zzbpg zzbpgVar, int i) {
        Context context = (Context) bpp.b(bjqVar);
        return new zzelv(zzchk.zzb(context, zzbpgVar, i), context, str);
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                bjq d2 = bpp.d(parcel.readStrongBinder());
                eno enoVar = (eno) zzaye.zza(parcel, eno.CREATOR);
                String readString = parcel.readString();
                zzbpg zzf = zzbpf.zzf(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzaye.zzc(parcel);
                deq j = j(d2, enoVar, readString, zzf, readInt);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, j);
                return true;
            case 2:
                bjq d3 = bpp.d(parcel.readStrongBinder());
                eno enoVar2 = (eno) zzaye.zza(parcel, eno.CREATOR);
                String readString2 = parcel.readString();
                zzbpg zzf2 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzaye.zzc(parcel);
                deq g2 = g(d3, enoVar2, readString2, zzf2, readInt2);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, g2);
                return true;
            case 3:
                bjq d4 = bpp.d(parcel.readStrongBinder());
                String readString3 = parcel.readString();
                zzbpg zzf3 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt3 = parcel.readInt();
                zzaye.zzc(parcel);
                hav k = k(d4, readString3, zzf3, readInt3);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, k);
                return true;
            case 4:
                bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, null);
                return true;
            case 5:
                bjq d5 = bpp.d(parcel.readStrongBinder());
                bjq d6 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzbgc b2 = b(d5, d6);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, b2);
                return true;
            case 6:
                bjq d7 = bpp.d(parcel.readStrongBinder());
                zzbpg zzf4 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt4 = parcel.readInt();
                zzaye.zzc(parcel);
                Context context = (Context) bpp.b(d7);
                zzfem zzw = zzchk.zzb(context, zzf4, readInt4).zzw();
                zzw.mo18zzb(context);
                zzfeq zzb = zzw.mo19zzc().zzb();
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzb);
                return true;
            case 7:
                bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, null);
                return true;
            case 8:
                bjq d8 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzbtg zzn = zzn(d8);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzn);
                return true;
            case 9:
                bjq d9 = bpp.d(parcel.readStrongBinder());
                int readInt5 = parcel.readInt();
                zzaye.zzc(parcel);
                apq d10 = d(d9, readInt5);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, d10);
                return true;
            case 10:
                bjq d11 = bpp.d(parcel.readStrongBinder());
                eno enoVar3 = (eno) zzaye.zza(parcel, eno.CREATOR);
                String readString4 = parcel.readString();
                int readInt6 = parcel.readInt();
                zzaye.zzc(parcel);
                deq i2 = i(d11, enoVar3, readString4, readInt6);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, i2);
                return true;
            case 11:
                bjq d12 = bpp.d(parcel.readStrongBinder());
                bjq d13 = bpp.d(parcel.readStrongBinder());
                bjq d14 = bpp.d(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzdjs zzdjsVar = new zzdjs((View) bpp.b(d12), (HashMap) bpp.b(d13), (HashMap) bpp.b(d14));
                parcel2.writeNoException();
                zzaye.zzf(parcel2, zzdjsVar);
                return true;
            case 12:
                bjq d15 = bpp.d(parcel.readStrongBinder());
                String readString5 = parcel.readString();
                zzbpg zzf5 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt7 = parcel.readInt();
                zzaye.zzc(parcel);
                zzbxc e2 = e(d15, readString5, zzf5, readInt7);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, e2);
                return true;
            case 13:
                bjq d16 = bpp.d(parcel.readStrongBinder());
                eno enoVar4 = (eno) zzaye.zza(parcel, eno.CREATOR);
                String readString6 = parcel.readString();
                zzbpg zzf6 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt8 = parcel.readInt();
                zzaye.zzc(parcel);
                deq m = m(d16, enoVar4, readString6, zzf6, readInt8);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, m);
                return true;
            case 14:
                bjq d17 = bpp.d(parcel.readStrongBinder());
                zzbpg zzf7 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt9 = parcel.readInt();
                zzaye.zzc(parcel);
                zzbzh h = h(d17, zzf7, readInt9);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, h);
                return true;
            case 15:
                bjq d18 = bpp.d(parcel.readStrongBinder());
                zzbpg zzf8 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt10 = parcel.readInt();
                zzaye.zzc(parcel);
                zzbsz n = n(d18, zzf8, readInt10);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, n);
                return true;
            case 16:
                bjq d19 = bpp.d(parcel.readStrongBinder());
                zzbpg zzf9 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt11 = parcel.readInt();
                zzbkq zzc = zzbkp.zzc(parcel.readStrongBinder());
                zzaye.zzc(parcel);
                zzbkt f2 = f(d19, zzf9, readInt11, zzc);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, f2);
                return true;
            case 17:
                bjq d20 = bpp.d(parcel.readStrongBinder());
                zzbpg zzf10 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt12 = parcel.readInt();
                zzaye.zzc(parcel);
                bhk c2 = c(d20, zzf10, readInt12);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, c2);
                return true;
            case 18:
                bjq d21 = bpp.d(parcel.readStrongBinder());
                zzbpg zzf11 = zzbpf.zzf(parcel.readStrongBinder());
                int readInt13 = parcel.readInt();
                zzaye.zzc(parcel);
                dzg a2 = a(d21, zzf11, readInt13);
                parcel2.writeNoException();
                zzaye.zzf(parcel2, a2);
                return true;
            default:
                return false;
        }
    }

    @Override // g.drf
    public final deq m(bjq bjqVar, eno enoVar, String str, zzbpg zzbpgVar, int i) {
        Context context = (Context) bpp.b(bjqVar);
        zzezt zzt = zzchk.zzb(context, zzbpgVar, i).zzt();
        zzt.zza(str);
        zzt.zzb(context);
        return zzt.zzc().mo15zza();
    }

    @Override // g.drf
    public final zzbsz n(bjq bjqVar, zzbpg zzbpgVar, int i) {
        return zzchk.zzb((Context) bpp.b(bjqVar), zzbpgVar, i).zzn();
    }

    @Override // g.drf
    public final zzbtg zzn(bjq bjqVar) {
        Activity activity = (Activity) bpp.b(bjqVar);
        AdOverlayInfoParcel zza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (zza == null) {
            return new bfd(activity, 4);
        }
        int i = zza.zzk;
        return i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? new bfd(activity, 4) : new bfd(activity, 0) : new km(activity, zza) : new bfd(activity, 2) : new bfd(activity, 1) : new bfd(activity, 3);
    }
}
