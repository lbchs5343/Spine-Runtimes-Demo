package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import g.agd;
import g.akx;
import g.cvb;
import g.czz;
import g.dzz;
import g.edt;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzfln {

    /* renamed from: a, reason: collision with root package name */
    public final cvb f7970a;

    /* renamed from: b, reason: collision with root package name */
    public final String f7971b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7972c;

    /* renamed from: d, reason: collision with root package name */
    public final zzeiv f7973d;

    /* renamed from: e, reason: collision with root package name */
    public final zzffg f7974e;

    /* renamed from: f, reason: collision with root package name */
    public final zzavc f7975f;

    /* renamed from: g, reason: collision with root package name */
    public final String f7976g;
    public final String h;
    public final zzffh i;

    public zzfln(zzeiv zzeivVar, akx akxVar, String str, String str2, Context context, zzffg zzffgVar, zzffh zzffhVar, cvb cvbVar, zzavc zzavcVar) {
        this.f7973d = zzeivVar;
        this.f7976g = akxVar.afmaVersion;
        this.h = str;
        this.f7971b = str2;
        this.f7972c = context;
        this.f7974e = zzffgVar;
        this.i = zzffhVar;
        this.f7970a = cvbVar;
        this.f7975f = zzavcVar;
    }

    public static String j(String str, String str2, String str3) {
        if (true == TextUtils.isEmpty(str3)) {
            str3 = "";
        }
        return str.replaceAll(str2, str3);
    }

    public static final List zzf(int i, int i2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(j((String) it.next(), "@gw_mpe@", "2." + i2));
        }
        return arrayList;
    }

    public static final List zzg(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(j((String) it.next(), "@gw_adnetstatus@", str));
        }
        return arrayList;
    }

    public static final List zzh(List list, long j) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(j((String) it.next(), "@gw_ttr@", Long.toString(j, 10)));
        }
        return arrayList;
    }

    public final List zzc(zzfff zzfffVar, zzfet zzfetVar, List list) {
        return zzd(zzfffVar, zzfetVar, false, "", "", list);
    }

    public final List zzd(zzfff zzfffVar, zzfet zzfetVar, boolean z, String str, String str2, List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            boolean z2 = true;
            String j = j(j(j((String) it.next(), "@gw_adlocid@", zzfffVar.zza.zza.zzf), "@gw_adnetrefresh@", true != z ? "0" : "1"), "@gw_sdkver@", this.f7976g);
            if (zzfetVar != null) {
                j = zzbyx.zzc(j(j(j(j, "@gw_qdata@", zzfetVar.zzy), "@gw_adnetid@", zzfetVar.zzx), "@gw_allocid@", zzfetVar.zzw), this.f7972c, zzfetVar.zzW, zzfetVar.zzaw);
            }
            zzeiv zzeivVar = this.f7973d;
            String j2 = j(j(j(j(j, "@gw_adnetstatus@", zzeivVar.zzg()), "@gw_ttr@", Long.toString(zzeivVar.zza(), 10)), "@gw_seqnum@", this.h), "@gw_sessid@", this.f7971b);
            boolean z3 = false;
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdD)).booleanValue() && !TextUtils.isEmpty(str)) {
                z3 = true;
            }
            boolean isEmpty = TextUtils.isEmpty(str2);
            boolean z4 = !isEmpty;
            if (z3) {
                z2 = z4;
            } else if (isEmpty) {
                arrayList.add(j2);
            }
            if (this.f7975f.zzf(Uri.parse(j2))) {
                Uri.Builder buildUpon = Uri.parse(j2).buildUpon();
                if (z3) {
                    buildUpon = buildUpon.appendQueryParameter("ms", str);
                }
                if (z2) {
                    buildUpon = buildUpon.appendQueryParameter("attok", str2);
                }
                j2 = buildUpon.build().toString();
            }
            arrayList.add(j2);
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006b A[LOOP:0: B:10:0x0065->B:12:0x006b, LOOP_END] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List zze(zzfet zzfetVar, List list, zzbwj zzbwjVar) {
        zzffg zzffgVar;
        zzfwo zzd;
        Iterator it;
        ArrayList arrayList = new ArrayList();
        ((czz) this.f7970a).getClass();
        long currentTimeMillis = System.currentTimeMillis();
        try {
            String zzc = zzbwjVar.zzc();
            String num = Integer.toString(zzbwjVar.zzb());
            if (((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzdE)).booleanValue()) {
                zzffh zzffhVar = this.i;
                if (zzffhVar == null) {
                    zzd = zzfwo.zzc();
                    String str = (String) zzd.zza(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfll
                        @Override // com.google.android.gms.internal.ads.zzfwh
                        public final Object apply(Object obj) {
                            String str2 = ((zzffg) obj).zza;
                            return TextUtils.isEmpty(str2) ? "" : dzz.g() ? "fakeForAdDebugLog" : str2;
                        }
                    }).zzb("");
                    String str2 = (String) zzd.zza(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzflm
                        @Override // com.google.android.gms.internal.ads.zzfwh
                        public final Object apply(Object obj) {
                            String str3 = ((zzffg) obj).zzb;
                            return TextUtils.isEmpty(str3) ? "" : dzz.g() ? "fakeForAdDebugLog" : str3;
                        }
                    }).zzb("");
                    it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(zzbyx.zzc(j(j(j(j(j(j((String) it.next(), "@gw_rwd_userid@", Uri.encode(str)), "@gw_rwd_custom_data@", Uri.encode(str2)), "@gw_tmstmp@", Long.toString(currentTimeMillis)), "@gw_rwd_itm@", Uri.encode(zzc)), "@gw_rwd_amt@", num), "@gw_sdkver@", this.f7976g), this.f7972c, zzfetVar.zzW, zzfetVar.zzaw));
                    }
                    return arrayList;
                }
                zzffgVar = zzffhVar.zza;
            } else {
                zzffgVar = this.f7974e;
            }
            zzd = zzfwo.zzd(zzffgVar);
            String str3 = (String) zzd.zza(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzfll
                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object apply(Object obj) {
                    String str22 = ((zzffg) obj).zza;
                    return TextUtils.isEmpty(str22) ? "" : dzz.g() ? "fakeForAdDebugLog" : str22;
                }
            }).zzb("");
            String str22 = (String) zzd.zza(new zzfwh() { // from class: com.google.android.gms.internal.ads.zzflm
                @Override // com.google.android.gms.internal.ads.zzfwh
                public final Object apply(Object obj) {
                    String str32 = ((zzffg) obj).zzb;
                    return TextUtils.isEmpty(str32) ? "" : dzz.g() ? "fakeForAdDebugLog" : str32;
                }
            }).zzb("");
            it = list.iterator();
            while (it.hasNext()) {
            }
            return arrayList;
        } catch (RemoteException e2) {
            agd.f("Unable to determine award type and amount.", e2);
            return arrayList;
        }
    }
}
