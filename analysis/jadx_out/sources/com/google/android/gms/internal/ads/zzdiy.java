package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.view.View;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.agd;
import g.bcp;
import g.bjq;
import g.bpp;
import g.cbz;
import g.dcy;
import g.gqh;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzdiy {

    /* renamed from: a, reason: collision with root package name */
    public Bundle f6058a;

    /* renamed from: b, reason: collision with root package name */
    public zzcfk f6059b;

    /* renamed from: c, reason: collision with root package name */
    public View f6060c;

    /* renamed from: d, reason: collision with root package name */
    public String f6061d;

    /* renamed from: e, reason: collision with root package name */
    public zzcao f6062e;

    /* renamed from: f, reason: collision with root package name */
    public View f6063f;

    /* renamed from: g, reason: collision with root package name */
    public zzeew f6064g;
    public List h;
    public int i;
    public String j;
    public final bcp k = new bcp(0);
    public final bcp l = new bcp(0);
    public List m = Collections.EMPTY_LIST;
    public zzbfy n;
    public View o;
    public dcy p;
    public zzcfk q;
    public cbz r;
    public zzcfk s;
    public bjq t;
    public zzbfy u;
    public zzbfr v;
    public float w;
    public gqh x;
    public double y;

    public static Object aa(bjq bjqVar) {
        if (bjqVar == null) {
            return null;
        }
        return bpp.b(bjqVar);
    }

    public static zzdiy z(zzdix zzdixVar, zzbfr zzbfrVar, View view, String str, List list, String str2, Bundle bundle, String str3, View view2, bjq bjqVar, String str4, String str5, double d2, zzbfy zzbfyVar, String str6, float f2) {
        zzdiy zzdiyVar = new zzdiy();
        zzdiyVar.i = 6;
        zzdiyVar.r = zzdixVar;
        zzdiyVar.v = zzbfrVar;
        zzdiyVar.f6063f = view;
        zzdiyVar.zzZ("headline", str);
        zzdiyVar.h = list;
        zzdiyVar.zzZ("body", str2);
        zzdiyVar.f6058a = bundle;
        zzdiyVar.zzZ("call_to_action", str3);
        zzdiyVar.f6060c = view2;
        zzdiyVar.t = bjqVar;
        zzdiyVar.zzZ("store", str4);
        zzdiyVar.zzZ("price", str5);
        zzdiyVar.y = d2;
        zzdiyVar.n = zzbfyVar;
        zzdiyVar.zzZ("advertiser", str6);
        zzdiyVar.zzR(f2);
        return zzdiyVar;
    }

    public static zzdiy zzag(zzbpr zzbprVar) {
        zzdiy zzdiyVar;
        zzdix zzdixVar;
        zzbfr zzh;
        View view;
        String zzo;
        List zzr;
        String zzm;
        Bundle zzf;
        String zzn;
        View view2;
        bjq zzl;
        String zzq;
        String zzp;
        double zze;
        zzbfy zzi;
        try {
            cbz zzg = zzbprVar.zzg();
            zzdixVar = zzg == null ? null : new zzdix(zzg, null);
            zzh = zzbprVar.zzh();
            view = (View) aa(zzbprVar.zzj());
            zzo = zzbprVar.zzo();
            zzr = zzbprVar.zzr();
            zzm = zzbprVar.zzm();
            zzf = zzbprVar.zzf();
            zzn = zzbprVar.zzn();
            view2 = (View) aa(zzbprVar.zzk());
            zzl = zzbprVar.zzl();
            zzq = zzbprVar.zzq();
            zzp = zzbprVar.zzp();
            zze = zzbprVar.zze();
            zzi = zzbprVar.zzi();
            zzdiyVar = null;
        } catch (RemoteException unused) {
            zzdiyVar = null;
        }
        try {
            zzdiy zzdiyVar2 = new zzdiy();
            zzdiyVar2.i = 2;
            zzdiyVar2.r = zzdixVar;
            zzdiyVar2.v = zzh;
            zzdiyVar2.f6063f = view;
            zzdiyVar2.zzZ("headline", zzo);
            zzdiyVar2.h = zzr;
            zzdiyVar2.zzZ("body", zzm);
            zzdiyVar2.f6058a = zzf;
            zzdiyVar2.zzZ("call_to_action", zzn);
            zzdiyVar2.f6060c = view2;
            zzdiyVar2.t = zzl;
            zzdiyVar2.zzZ("store", zzq);
            zzdiyVar2.zzZ("price", zzp);
            zzdiyVar2.y = zze;
            zzdiyVar2.n = zzi;
            return zzdiyVar2;
        } catch (RemoteException unused2) {
            zzfxd zzfxdVar = agd.f10175a;
            return zzdiyVar;
        }
    }

    public static zzdiy zzah(zzbps zzbpsVar) {
        try {
            cbz zzf = zzbpsVar.zzf();
            zzdix zzdixVar = zzf == null ? null : new zzdix(zzf, null);
            zzbfr zzg = zzbpsVar.zzg();
            View view = (View) aa(zzbpsVar.zzi());
            String zzo = zzbpsVar.zzo();
            List zzp = zzbpsVar.zzp();
            String zzm = zzbpsVar.zzm();
            Bundle zze = zzbpsVar.zze();
            String zzn = zzbpsVar.zzn();
            View view2 = (View) aa(zzbpsVar.zzj());
            bjq zzk = zzbpsVar.zzk();
            String zzl = zzbpsVar.zzl();
            zzbfy zzh = zzbpsVar.zzh();
            zzdiy zzdiyVar = new zzdiy();
            zzdiyVar.i = 1;
            zzdiyVar.r = zzdixVar;
            zzdiyVar.v = zzg;
            zzdiyVar.f6063f = view;
            zzdiyVar.zzZ("headline", zzo);
            zzdiyVar.h = zzp;
            zzdiyVar.zzZ("body", zzm);
            zzdiyVar.f6058a = zze;
            zzdiyVar.zzZ("call_to_action", zzn);
            zzdiyVar.f6060c = view2;
            zzdiyVar.t = zzk;
            zzdiyVar.zzZ("advertiser", zzl);
            zzdiyVar.u = zzh;
            return zzdiyVar;
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }

    public static zzdiy zzai(zzbpr zzbprVar) {
        try {
            cbz zzg = zzbprVar.zzg();
            return z(zzg == null ? null : new zzdix(zzg, null), zzbprVar.zzh(), (View) aa(zzbprVar.zzj()), zzbprVar.zzo(), zzbprVar.zzr(), zzbprVar.zzm(), zzbprVar.zzf(), zzbprVar.zzn(), (View) aa(zzbprVar.zzk()), zzbprVar.zzl(), zzbprVar.zzq(), zzbprVar.zzp(), zzbprVar.zze(), zzbprVar.zzi(), null, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }

    public static zzdiy zzaj(zzbps zzbpsVar) {
        try {
            cbz zzf = zzbpsVar.zzf();
            return z(zzf == null ? null : new zzdix(zzf, null), zzbpsVar.zzg(), (View) aa(zzbpsVar.zzi()), zzbpsVar.zzo(), zzbpsVar.zzp(), zzbpsVar.zzm(), zzbpsVar.zze(), zzbpsVar.zzn(), (View) aa(zzbpsVar.zzj()), zzbpsVar.zzk(), null, null, -1.0d, zzbpsVar.zzh(), zzbpsVar.zzl(), TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }

    public static zzdiy zzt(zzbpv zzbpvVar) {
        zzdix zzdixVar;
        zzbpv zzbpvVar2;
        try {
            cbz zzj = zzbpvVar.zzj();
            if (zzj == null) {
                zzbpvVar2 = zzbpvVar;
                zzdixVar = null;
            } else {
                zzbpvVar2 = zzbpvVar;
                zzdixVar = new zzdix(zzj, zzbpvVar2);
            }
            return z(zzdixVar, zzbpvVar2.zzk(), (View) aa(zzbpvVar2.zzm()), zzbpvVar2.zzs(), zzbpvVar2.zzv(), zzbpvVar2.zzq(), zzbpvVar2.zzi(), zzbpvVar2.zzr(), (View) aa(zzbpvVar2.zzn()), zzbpvVar2.zzo(), zzbpvVar2.zzu(), zzbpvVar2.zzt(), zzbpvVar2.zze(), zzbpvVar2.zzl(), zzbpvVar2.zzp(), zzbpvVar2.zzf());
        } catch (RemoteException unused) {
            zzfxd zzfxdVar = agd.f10175a;
            return null;
        }
    }

    public final synchronized String zzA() {
        return this.j;
    }

    public final synchronized String zzB() {
        return zzF("headline");
    }

    public final synchronized String zzC() {
        return this.f6061d;
    }

    public final synchronized String zzD() {
        return zzF("price");
    }

    public final synchronized String zzE() {
        return zzF("store");
    }

    public final synchronized String zzF(String str) {
        return (String) this.l.get(str);
    }

    public final synchronized List zzG() {
        return this.h;
    }

    public final synchronized List zzH() {
        return this.m;
    }

    public final synchronized void zzI() {
        try {
            zzcfk zzcfkVar = this.q;
            if (zzcfkVar != null) {
                zzcfkVar.destroy();
                this.q = null;
            }
            zzcfk zzcfkVar2 = this.s;
            if (zzcfkVar2 != null) {
                zzcfkVar2.destroy();
                this.s = null;
            }
            zzcfk zzcfkVar3 = this.f6059b;
            if (zzcfkVar3 != null) {
                zzcfkVar3.destroy();
                this.f6059b = null;
            }
            dcy dcyVar = this.p;
            if (dcyVar != null) {
                dcyVar.cancel(false);
                this.p = null;
            }
            zzcao zzcaoVar = this.f6062e;
            if (zzcaoVar != null) {
                zzcaoVar.cancel(false);
                this.f6062e = null;
            }
            this.f6064g = null;
            this.k.clear();
            this.l.clear();
            this.r = null;
            this.v = null;
            this.f6063f = null;
            this.h = null;
            this.f6058a = null;
            this.f6060c = null;
            this.o = null;
            this.t = null;
            this.n = null;
            this.u = null;
            this.j = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzJ(zzbfr zzbfrVar) {
        this.v = zzbfrVar;
    }

    public final synchronized void zzK(String str) {
        this.j = str;
    }

    public final synchronized void zzL(gqh gqhVar) {
        this.x = gqhVar;
    }

    public final synchronized void zzM(zzbfy zzbfyVar) {
        this.n = zzbfyVar;
    }

    public final synchronized void zzN(String str, zzbfl zzbflVar) {
        if (zzbflVar == null) {
            this.k.remove(str);
        } else {
            this.k.put(str, zzbflVar);
        }
    }

    public final synchronized void zzO(zzcfk zzcfkVar) {
        this.s = zzcfkVar;
    }

    public final synchronized void zzP(List list) {
        this.h = list;
    }

    public final synchronized void zzQ(zzbfy zzbfyVar) {
        this.u = zzbfyVar;
    }

    public final synchronized void zzR(float f2) {
        this.w = f2;
    }

    public final synchronized void zzS(List list) {
        this.m = list;
    }

    public final synchronized void zzT(zzcfk zzcfkVar) {
        this.f6059b = zzcfkVar;
    }

    public final synchronized void zzU(dcy dcyVar) {
        this.p = dcyVar;
    }

    public final synchronized void zzV(String str) {
        this.f6061d = str;
    }

    public final synchronized void zzW(zzeew zzeewVar) {
        this.f6064g = zzeewVar;
    }

    public final synchronized void zzX(zzcao zzcaoVar) {
        this.f6062e = zzcaoVar;
    }

    public final synchronized void zzY(double d2) {
        this.y = d2;
    }

    public final synchronized void zzZ(String str, String str2) {
        if (str2 == null) {
            this.l.remove(str);
        } else {
            this.l.put(str, str2);
        }
    }

    public final synchronized double zza() {
        return this.y;
    }

    public final synchronized void zzaa(int i) {
        this.i = i;
    }

    public final synchronized void zzab(cbz cbzVar) {
        this.r = cbzVar;
    }

    public final synchronized void zzac(View view) {
        this.f6060c = view;
    }

    public final synchronized void zzad(zzcfk zzcfkVar) {
        this.q = zzcfkVar;
    }

    public final synchronized void zzae(View view) {
        this.o = view;
    }

    public final synchronized boolean zzaf() {
        return this.s != null;
    }

    public final synchronized float zzb() {
        return this.w;
    }

    public final synchronized int zzc() {
        return this.i;
    }

    public final synchronized Bundle zzd() {
        try {
            if (this.f6058a == null) {
                this.f6058a = new Bundle();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.f6058a;
    }

    public final synchronized View zze() {
        return this.f6063f;
    }

    public final synchronized View zzf() {
        return this.f6060c;
    }

    public final synchronized View zzg() {
        return this.o;
    }

    public final synchronized bcp zzh() {
        return this.k;
    }

    public final synchronized bcp zzi() {
        return this.l;
    }

    public final synchronized cbz zzj() {
        return this.r;
    }

    public final synchronized gqh zzk() {
        return this.x;
    }

    public final synchronized zzbfr zzl() {
        return this.v;
    }

    public final zzbfy zzm() {
        List list = this.h;
        if (list == null || list.isEmpty()) {
            return null;
        }
        Object obj = this.h.get(0);
        if (obj instanceof IBinder) {
            return zzbfx.zzg((IBinder) obj);
        }
        return null;
    }

    public final synchronized zzbfy zzn() {
        return this.n;
    }

    public final synchronized zzbfy zzo() {
        return this.u;
    }

    public final synchronized zzcao zzp() {
        return this.f6062e;
    }

    public final synchronized zzcfk zzq() {
        return this.s;
    }

    public final synchronized zzcfk zzr() {
        return this.f6059b;
    }

    public final synchronized zzcfk zzs() {
        return this.q;
    }

    public final synchronized zzeew zzu() {
        return this.f6064g;
    }

    public final synchronized bjq zzv() {
        return this.t;
    }

    public final synchronized dcy zzw() {
        return this.p;
    }

    public final synchronized String zzx() {
        return zzF("advertiser");
    }

    public final synchronized String zzy() {
        return zzF("body");
    }

    public final synchronized String zzz() {
        return zzF("call_to_action");
    }
}
