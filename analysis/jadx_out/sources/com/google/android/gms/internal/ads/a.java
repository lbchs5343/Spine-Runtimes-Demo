package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.provider.Settings;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.google.android.gms.internal.ads.zzbbs;
import g.agd;
import g.cmo;
import g.ti;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class a implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f3929a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzect f3930b;

    public a(zzect zzectVar, boolean z) {
        this.f3929a = z;
        this.f3930b = zzectVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public final void zza(Throwable th) {
        agd.d("Failed to get signals bundle");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0094, code lost:
    
        if (r3.equals(com.bytedance.sdk.openadsdk.mediation.MediationConstant.RIT_TYPE_BANNER) != false) goto L38;
     */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00b2 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgee
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zzb(Object obj) {
        List list;
        List asList;
        final ArrayList arrayList;
        Iterator it;
        char c2;
        zzbbs.zzab.zzb zzbVar;
        Bundle bundle = (Bundle) obj;
        zzect zzectVar = this.f3930b;
        if (((cmo) zzectVar.f6822g).ax()) {
            return;
        }
        Object obj2 = bundle.get("ad_types");
        if (obj2 instanceof List) {
            asList = (List) obj2;
        } else if (obj2 instanceof String[]) {
            asList = Arrays.asList((String[]) obj2);
        } else {
            list = Collections.EMPTY_LIST;
            arrayList = new ArrayList();
            it = list.iterator();
            while (true) {
                c2 = 0;
                if (it.hasNext()) {
                    final zzbbs.zzaf.zzd zzdVar = (zzbbs.zzaf.zzd) zzect.f6816a.get(zzfgc.zza(zzfgc.zza(bundle, "device"), "network").getInt("active_network_state", -1), zzbbs.zzaf.zzd.UNSPECIFIED);
                    zzbbs.zzab.zza zza = zzbbs.zzab.zza();
                    int i = bundle.getInt("cnt", -2);
                    int i2 = bundle.getInt("gnt", 0);
                    if (i == -1) {
                        zzectVar.f6821f = zzbbs.zzq.ENUM_TRUE;
                    } else {
                        zzectVar.f6821f = zzbbs.zzq.ENUM_FALSE;
                        if (i == 0) {
                            zza.zzd(zzbbs.zzab.zzc.CELL);
                        } else if (i != 1) {
                            zza.zzd(zzbbs.zzab.zzc.NETWORKTYPE_UNSPECIFIED);
                        } else {
                            zza.zzd(zzbbs.zzab.zzc.WIFI);
                        }
                        switch (i2) {
                            case 1:
                            case 2:
                            case 4:
                            case 7:
                            case 11:
                            case 16:
                                zzbVar = zzbbs.zzab.zzb.TWO_G;
                                break;
                            case 3:
                            case 5:
                            case 6:
                            case 8:
                            case 9:
                            case 10:
                            case 12:
                            case 14:
                            case 15:
                            case 17:
                                zzbVar = zzbbs.zzab.zzb.THREE_G;
                                break;
                            case 13:
                                zzbVar = zzbbs.zzab.zzb.LTE;
                                break;
                            default:
                                zzbVar = zzbbs.zzab.zzb.CELLULAR_NETWORK_TYPE_UNSPECIFIED;
                                break;
                        }
                        zza.zzc(zzbVar);
                    }
                    final zzbbs.zzab zzbr = zza.zzbr();
                    zzectVar.h.zza(new zzfiv() { // from class: com.google.android.gms.internal.ads.zzecr
                        @Override // com.google.android.gms.internal.ads.zzfiv
                        public final Object zza(Object obj3) {
                            a aVar = a.this;
                            zzect zzectVar2 = aVar.f3930b;
                            zzecl zzeclVar = zzectVar2.f6819d;
                            SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj3;
                            if (((cmo) zzectVar2.f6822g).ax()) {
                                return null;
                            }
                            zzbbs.zzaf.zzd zzdVar2 = zzdVar;
                            zzbbs.zzab zzabVar = zzbr;
                            ArrayList arrayList2 = arrayList;
                            boolean z = aVar.f3929a;
                            zzbbs.zzaf.zza.C0208zza zzn = zzbbs.zzaf.zza.zzn();
                            zzn.zzn(arrayList2);
                            Context context = zzectVar2.f6820e;
                            zzn.zzD(Settings.Global.getInt(context.getContentResolver(), "airplane_mode_on", 0) != 0 ? zzbbs.zzq.ENUM_TRUE : zzbbs.zzq.ENUM_FALSE);
                            ti tiVar = ti.f20033a;
                            zzn.zzE(tiVar.k.e(context, zzectVar2.f6818c));
                            zzn.zzM(zzeclVar.zze());
                            zzn.zzL(zzeclVar.zzb());
                            zzn.zzG(zzeclVar.zza());
                            zzn.zzH(zzdVar2);
                            zzn.zzJ(zzabVar);
                            zzn.zzK(zzectVar2.f6821f);
                            zzn.zzN(z ? zzbbs.zzq.ENUM_TRUE : zzbbs.zzq.ENUM_FALSE);
                            zzn.zzP(zzeclVar.zzd());
                            tiVar.v.getClass();
                            zzn.zzO(System.currentTimeMillis());
                            zzn.zzQ(Settings.Global.getInt(context.getContentResolver(), "wifi_on", 0) != 0 ? zzbbs.zzq.ENUM_TRUE : zzbbs.zzq.ENUM_FALSE);
                            byte[] zzaV = zzn.zzbr().zzaV();
                            zzecw.zzf(sQLiteDatabase, z, true);
                            zzecw.zzc(sQLiteDatabase, zzeclVar.zzd(), zzaV);
                            return null;
                        }
                    });
                    return;
                }
                String str = (String) it.next();
                switch (str.hashCode()) {
                    case -1396342996:
                        break;
                    case -1052618729:
                        if (str.equals("native")) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -239580146:
                        if (str.equals("rewarded")) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 604727084:
                        if (str.equals(MediationConstant.RIT_TYPE_INTERSTITIAL)) {
                            c2 = 1;
                            break;
                        }
                        c2 = 65535;
                        break;
                    default:
                        c2 = 65535;
                        break;
                }
                arrayList.add(c2 != 0 ? c2 != 1 ? c2 != 2 ? c2 != 3 ? zzbbs.zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED : zzbbs.zzd.zza.REWARD_BASED_VIDEO_AD : zzbbs.zzd.zza.NATIVE_APP_INSTALL : zzbbs.zzd.zza.INTERSTITIAL : zzbbs.zzd.zza.BANNER);
            }
        }
        ArrayList arrayList2 = new ArrayList(asList.size());
        for (Object obj3 : asList) {
            if (obj3 instanceof String) {
                arrayList2.add((String) obj3);
            }
        }
        list = Collections.unmodifiableList(arrayList2);
        arrayList = new ArrayList();
        it = list.iterator();
        while (true) {
            c2 = 0;
            if (it.hasNext()) {
            }
            arrayList.add(c2 != 0 ? c2 != 1 ? c2 != 2 ? c2 != 3 ? zzbbs.zzd.zza.AD_FORMAT_TYPE_UNSPECIFIED : zzbbs.zzd.zza.REWARD_BASED_VIDEO_AD : zzbbs.zzd.zza.NATIVE_APP_INSTALL : zzbbs.zzd.zza.INTERSTITIAL : zzbbs.zzd.zza.BANNER);
        }
    }
}
