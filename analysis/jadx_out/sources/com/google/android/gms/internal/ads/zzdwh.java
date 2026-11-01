package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.ViewGroup;
import com.google.android.gms.ads.nativead.NativeAd;
import g.aaj;
import g.afs;
import g.agd;
import g.aia;
import g.akj;
import g.awb;
import g.awn;
import g.bfi;
import g.bhk;
import g.bjq;
import g.bof;
import g.bpp;
import g.bya;
import g.cbv;
import g.cca;
import g.ckd;
import g.coc;
import g.dcq;
import g.dth;
import g.ed;
import g.edt;
import g.eju;
import g.eks;
import g.esy;
import g.etf;
import g.eti;
import g.fnu;
import g.fqz;
import g.gcq;
import g.gin;
import g.gkf;
import g.gtb;
import g.hav;
import g.ls;
import g.ph;
import g.qu;
import g.ti;
import g.wz;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class zzdwh extends zzayd implements bhk {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f6602a;

    /* renamed from: b, reason: collision with root package name */
    public final zzdvv f6603b;

    /* renamed from: c, reason: collision with root package name */
    public final zzges f6604c;

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f6605d;

    /* renamed from: e, reason: collision with root package name */
    public final Context f6606e;

    /* renamed from: f, reason: collision with root package name */
    public zzdvk f6607f;

    public zzdwh(Context context, WeakReference weakReference, zzdvv zzdvvVar, zzges zzgesVar) {
        super("com.google.android.gms.ads.internal.client.IOutOfContextTester");
        this.f6605d = new HashMap();
        this.f6606e = context;
        this.f6602a = weakReference;
        this.f6603b = zzdvvVar;
        this.f6604c = zzgesVar;
    }

    public static String g(Object obj) {
        bof responseInfo;
        gcq gcqVar;
        if (obj instanceof bfi) {
            responseInfo = ((bfi) obj).f11447a;
        } else if (obj instanceof ls) {
            responseInfo = ((ls) obj).getResponseInfo();
        } else if (obj instanceof eti) {
            responseInfo = ((eti) obj).getResponseInfo();
        } else if (obj instanceof dth) {
            responseInfo = ((dth) obj).getResponseInfo();
        } else if (obj instanceof eks) {
            responseInfo = ((eks) obj).getResponseInfo();
        } else if (obj instanceof aia) {
            responseInfo = ((aia) obj).getResponseInfo();
        } else {
            if (!(obj instanceof NativeAd)) {
                return "";
            }
            responseInfo = ((NativeAd) obj).getResponseInfo();
        }
        if (responseInfo == null || (gcqVar = responseInfo.f11905a) == null) {
            return "";
        }
        try {
            return gcqVar.zzh();
        } catch (RemoteException unused) {
            return "";
        }
    }

    public static awn h() {
        Bundle bundle = new Bundle();
        bundle.putString("request_origin", "inspector_ooct");
        dcq dcqVar = new dcq(3);
        dcqVar.h(bundle);
        return new awn(dcqVar);
    }

    public final synchronized void i(String str, String str2, Object obj) {
        this.f6605d.put(str, obj);
        j(g(obj), str2);
    }

    public final synchronized void j(String str, String str2) {
        try {
            zzgei.zzr(this.f6607f.zzb(str), new akj(29, this, str2, false), this.f6604c);
        } catch (NullPointerException e2) {
            ti.f20033a.f20034ab.zzw(e2, "OutOfContextTester.setAdAsOutOfContext");
            this.f6603b.zzk(str2);
        }
    }

    public final Context k() {
        Context context = (Context) this.f6602a.get();
        return context == null ? this.f6606e : context;
    }

    @Override // com.google.android.gms.internal.ads.zzayd
    public final boolean l(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            return false;
        }
        String readString = parcel.readString();
        bjq d2 = bpp.d(parcel.readStrongBinder());
        bjq d3 = bpp.d(parcel.readStrongBinder());
        zzaye.zzc(parcel);
        zze(readString, d2, d3);
        parcel2.writeNoException();
        return true;
    }

    public final synchronized void m(String str, String str2) {
        try {
            zzgei.zzr(this.f6607f.zzb(str), new gtb(20, this, str2, false), this.f6604c);
        } catch (NullPointerException e2) {
            ti.f20033a.f20034ab.zzw(e2, "OutOfContextTester.setAdAsShown");
            this.f6603b.zzk(str2);
        }
    }

    @Override // g.bhk
    public final void zze(String str, bjq bjqVar, bjq bjqVar2) {
        Context context = (Context) bpp.b(bjqVar);
        ViewGroup viewGroup = (ViewGroup) bpp.b(bjqVar2);
        if (context == null || viewGroup == null) {
            return;
        }
        HashMap hashMap = this.f6605d;
        Object obj = hashMap.get(str);
        if (obj != null) {
            hashMap.remove(str);
        }
        if (obj instanceof aia) {
            zzdwi.zza(context, viewGroup, (aia) obj);
        } else if (obj instanceof NativeAd) {
            zzdwi.zzb(context, viewGroup, (NativeAd) obj);
        }
    }

    public final void zzf(zzdvk zzdvkVar) {
        this.f6607f = zzdvkVar;
    }

    public final synchronized void zzh(final String str, String str2, final String str3) {
        char c2;
        bya byaVar;
        try {
            switch (str2.hashCode()) {
                case -1999289321:
                    if (str2.equals("NATIVE")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1372958932:
                    if (str2.equals("INTERSTITIAL")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -428325382:
                    if (str2.equals("APP_OPEN_AD")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 543046670:
                    if (str2.equals("REWARDED")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1854800829:
                    if (str2.equals("REWARDED_INTERSTITIAL")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1951953708:
                    if (str2.equals("BANNER")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                ls.load(k(), str, h(), 1, new awb(this, str, str3));
                return;
            }
            if (c2 == 1) {
                aia aiaVar = new aia(k());
                aiaVar.setAdSize(gin.f18199a);
                aiaVar.setAdUnitId(str);
                aiaVar.setAdListener(new aaj(this, str, aiaVar, str3));
                aiaVar.b(h());
                return;
            }
            if (c2 == 2) {
                eti.load(k(), str, h(), new eju(this, str, str3));
                return;
            }
            if (c2 != 3) {
                if (c2 == 4) {
                    dth.load(k(), str, h(), new etf(this, str, str3));
                    return;
                } else {
                    if (c2 != 5) {
                        return;
                    }
                    eks.load(k(), str, h(), new wz(this, str, str3));
                    return;
                }
            }
            Context k = k();
            ckd.w(k, "context cannot be null");
            ph phVar = cbv.f12612a.f12616e;
            zzbpc zzbpcVar = new zzbpc();
            phVar.getClass();
            hav havVar = (hav) new ed(phVar, k, str, zzbpcVar).j(k, false);
            try {
                havVar.zzk(new zzbsv(new qu() { // from class: com.google.android.gms.internal.ads.zzdvw
                    @Override // g.qu
                    public final void onNativeAdLoaded(NativeAd nativeAd) {
                        zzdwh.this.i(str, str3, nativeAd);
                    }
                }));
            } catch (RemoteException unused) {
                zzfxd zzfxdVar = agd.f10175a;
            }
            try {
                havVar.zzl(new fnu(new cca(this, str3)));
            } catch (RemoteException unused2) {
                zzfxd zzfxdVar2 = agd.f10175a;
            }
            try {
                byaVar = new bya(k, havVar.zze());
            } catch (RemoteException e2) {
                agd.f("Failed to build AdLoader.", e2);
                byaVar = new bya(k, new afs(new gkf()));
            }
            byaVar.c(h());
        } finally {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0049 A[Catch: all -> 0x0036, TRY_LEAVE, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:9:0x000b, B:11:0x0013, B:13:0x0025, B:15:0x0029, B:17:0x002d, B:19:0x0031, B:22:0x003e, B:24:0x0049, B:27:0x0050, B:29:0x0054, B:32:0x005b, B:34:0x005f, B:37:0x006b, B:39:0x006f, B:42:0x007b, B:44:0x0089, B:46:0x008d, B:48:0x0091, B:51:0x0039), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0050 A[Catch: all -> 0x0036, TRY_ENTER, TryCatch #0 {all -> 0x0036, blocks: (B:3:0x0001, B:9:0x000b, B:11:0x0013, B:13:0x0025, B:15:0x0029, B:17:0x002d, B:19:0x0031, B:22:0x003e, B:24:0x0049, B:27:0x0050, B:29:0x0054, B:32:0x005b, B:34:0x005f, B:37:0x006b, B:39:0x006f, B:42:0x007b, B:44:0x0089, B:46:0x008d, B:48:0x0091, B:51:0x0039), top: B:2:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized void zzi(String str, String str2) {
        Object obj;
        try {
            Activity zzg = this.f6603b.zzg();
            if (zzg != null && (obj = this.f6605d.get(str)) != null) {
                zzbce zzbceVar = zzbcn.zziY;
                edt edtVar = edt.f15376a;
                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                    if (!(obj instanceof ls)) {
                        if (!(obj instanceof eti)) {
                            if (!(obj instanceof dth)) {
                                if (obj instanceof eks) {
                                }
                                m(g(obj), str2);
                                if (!(obj instanceof ls)) {
                                    ((ls) obj).show(zzg);
                                    return;
                                }
                                if (obj instanceof eti) {
                                    ((eti) obj).show(zzg);
                                    return;
                                }
                                if (obj instanceof dth) {
                                    ((dth) obj).show(zzg, new fqz() { // from class: com.google.android.gms.internal.ads.zzdvx
                                        @Override // g.fqz
                                        public final void onUserEarnedReward(coc cocVar) {
                                        }
                                    });
                                    return;
                                }
                                if (obj instanceof eks) {
                                    ((eks) obj).show(zzg, new fqz() { // from class: com.google.android.gms.internal.ads.zzdvy
                                        @Override // g.fqz
                                        public final void onUserEarnedReward(coc cocVar) {
                                        }
                                    });
                                    return;
                                }
                                if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() && ((obj instanceof aia) || (obj instanceof NativeAd))) {
                                    Intent intent = new Intent();
                                    Context k = k();
                                    intent.setClassName(k, "com.google.android.gms.ads.OutOfContextTestingActivity");
                                    intent.putExtra("adUnit", str);
                                    esy esyVar = ti.f20033a.z;
                                    esy.ad(k, intent);
                                    return;
                                }
                            }
                        }
                    }
                }
                this.f6605d.remove(str);
                m(g(obj), str2);
                if (!(obj instanceof ls)) {
                }
            }
        } finally {
        }
    }
}
