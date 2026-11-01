package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.JsonReader;
import g.aeh;
import g.agd;
import g.bah;
import g.bwx;
import g.ddh;
import g.edt;
import g.esy;
import g.ti;
import j$.util.Objects;
import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzdtt extends zzbks {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6506a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final zzdtw f6507b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdtr f6508c;

    public zzdtt(zzdtw zzdtwVar, zzdtr zzdtrVar) {
        this.f6507b = zzdtwVar;
        this.f6508c = zzdtrVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0183  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static aeh d(HashMap hashMap) {
        int i;
        Bundle bundle;
        char c2;
        Bundle bundle2 = new Bundle();
        ArrayList arrayList = new ArrayList();
        Bundle bundle3 = new Bundle();
        Bundle bundle4 = new Bundle();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        int b2 = ddh.DEFAULT.b();
        String str = (String) hashMap.get("ad_request");
        boolean z = false;
        int i2 = -1;
        String str2 = null;
        int i3 = 60000;
        if (str == null) {
            return new aeh(8, -1L, bundle2, -1, arrayList, false, -1, false, null, null, null, null, bundle3, bundle4, arrayList2, null, null, false, null, -1, null, arrayList3, 60000, null, b2, 0L);
        }
        JsonReader jsonReader = new JsonReader(new StringReader(Uri.decode(str)));
        try {
            jsonReader.beginObject();
            i = -1;
            while (jsonReader.hasNext()) {
                try {
                    String nextName = jsonReader.nextName();
                    switch (nextName.hashCode()) {
                        case -1289032093:
                            if (nextName.equals("extras")) {
                                c2 = 0;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -839117230:
                            if (nextName.equals("isTestDevice")) {
                                c2 = 2;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -733436947:
                            if (nextName.equals("tagForUnderAgeOfConsent")) {
                                c2 = 4;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case -99890337:
                            if (nextName.equals("httpTimeoutMillis")) {
                                c2 = 6;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 523149226:
                            if (nextName.equals("keywords")) {
                                c2 = 1;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 597632527:
                            if (nextName.equals("maxAdContentRating")) {
                                c2 = 5;
                                break;
                            }
                            c2 = 65535;
                            break;
                        case 1411582723:
                            if (nextName.equals("tagForChildDirectedTreatment")) {
                                c2 = 3;
                                break;
                            }
                            c2 = 65535;
                            break;
                        default:
                            c2 = 65535;
                            break;
                    }
                    switch (c2) {
                        case 0:
                            jsonReader.beginObject();
                            Bundle bundle5 = new Bundle();
                            while (jsonReader.hasNext()) {
                                bundle5.putString(jsonReader.nextName(), jsonReader.nextString());
                            }
                            jsonReader.endObject();
                            bundle2 = bundle5;
                            break;
                        case 1:
                            jsonReader.beginArray();
                            ArrayList arrayList4 = new ArrayList();
                            while (jsonReader.hasNext()) {
                                arrayList4.add(jsonReader.nextString());
                            }
                            jsonReader.endArray();
                            arrayList = arrayList4;
                            break;
                        case 2:
                            z = jsonReader.nextBoolean();
                            break;
                        case 3:
                            if (!jsonReader.nextBoolean()) {
                                i2 = 0;
                                break;
                            } else {
                                i2 = 1;
                                break;
                            }
                        case 4:
                            if (!jsonReader.nextBoolean()) {
                                i = 0;
                                break;
                            } else {
                                i = 1;
                                break;
                            }
                        case 5:
                            String nextString = jsonReader.nextString();
                            if (!bah.f11159a.contains(nextString)) {
                                break;
                            } else {
                                str2 = nextString;
                                break;
                            }
                        case 6:
                            i3 = jsonReader.nextInt();
                            break;
                        default:
                            jsonReader.skipValue();
                            break;
                    }
                } catch (IOException unused) {
                    agd.c("Ad Request json was malformed, parsing ended early.");
                    aeh aehVar = new aeh(8, -1L, bundle2, -1, arrayList, z, i2, false, null, null, null, null, bundle3, bundle4, arrayList2, null, null, false, null, i, str2, arrayList3, i3, null, b2, 0L);
                    bundle = aehVar.zzm.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
                    if (bundle == null) {
                    }
                    return new aeh(aehVar.zza, aehVar.zzb, bundle, aehVar.zzd, aehVar.zze, aehVar.zzf, aehVar.zzg, aehVar.zzh, aehVar.zzi, aehVar.zzj, aehVar.zzk, aehVar.zzl, aehVar.zzm, aehVar.zzn, aehVar.zzo, aehVar.zzp, aehVar.zzq, aehVar.zzr, aehVar.zzs, aehVar.zzt, aehVar.zzu, aehVar.zzv, aehVar.zzw, aehVar.zzx, aehVar.zzy, aehVar.zzz);
                }
            }
            jsonReader.endObject();
        } catch (IOException unused2) {
            i = -1;
        }
        aeh aehVar2 = new aeh(8, -1L, bundle2, -1, arrayList, z, i2, false, null, null, null, null, bundle3, bundle4, arrayList2, null, null, false, null, i, str2, arrayList3, i3, null, b2, 0L);
        bundle = aehVar2.zzm.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        if (bundle == null) {
            bundle = aehVar2.zzc;
            aehVar2.zzm.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle);
        }
        return new aeh(aehVar2.zza, aehVar2.zzb, bundle, aehVar2.zzd, aehVar2.zze, aehVar2.zzf, aehVar2.zzg, aehVar2.zzh, aehVar2.zzi, aehVar2.zzj, aehVar2.zzk, aehVar2.zzl, aehVar2.zzm, aehVar2.zzn, aehVar2.zzo, aehVar2.zzp, aehVar2.zzq, aehVar2.zzr, aehVar2.zzs, aehVar2.zzt, aehVar2.zzu, aehVar2.zzv, aehVar2.zzw, aehVar2.zzx, aehVar2.zzy, aehVar2.zzz);
    }

    @Override // com.google.android.gms.internal.ads.zzbkt
    public final void zze() {
        this.f6506a.clear();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.google.android.gms.internal.ads.zzbkt
    public final void zzf(String str) throws RemoteException {
        char c2;
        zzbce zzbceVar = zzbcn.zzjC;
        edt edtVar = edt.f15376a;
        zzbcl zzbclVar = edtVar.f15379d;
        zzbcl zzbclVar2 = edtVar.f15379d;
        if (((Boolean) zzbclVar.zza(zzbceVar)).booleanValue()) {
            agd.e("Received H5 gmsg: ".concat(String.valueOf(str)));
            Uri parse = Uri.parse(str);
            esy esyVar = ti.f20033a.z;
            HashMap u = esy.u(parse);
            String str2 = (String) u.get("action");
            if (TextUtils.isEmpty(str2)) {
                agd.c("H5 gmsg did not contain an action");
                return;
            }
            int hashCode = str2.hashCode();
            char c3 = 65535;
            if (hashCode != 579053441) {
                if (hashCode == 871091088 && str2.equals("initialize")) {
                    c2 = 0;
                }
                c2 = 65535;
            } else {
                if (str2.equals("dispose_all")) {
                    c2 = 1;
                }
                c2 = 65535;
            }
            zzdtr zzdtrVar = this.f6508c;
            HashMap hashMap = this.f6506a;
            if (c2 == 0) {
                hashMap.clear();
                zzdtrVar.zza();
                return;
            }
            if (c2 == 1) {
                Iterator it = hashMap.values().iterator();
                while (it.hasNext()) {
                    ((bwx) it.next()).zza();
                }
                hashMap.clear();
                return;
            }
            String str3 = (String) u.get("obj_id");
            try {
                Objects.requireNonNull(str3);
                long parseLong = Long.parseLong(str3);
                switch (str2.hashCode()) {
                    case -1790951212:
                        if (str2.equals("show_interstitial_ad")) {
                            c3 = 2;
                            break;
                        }
                        break;
                    case -1266374734:
                        if (str2.equals("show_rewarded_ad")) {
                            c3 = 5;
                            break;
                        }
                        break;
                    case -257098725:
                        if (str2.equals("load_rewarded_ad")) {
                            c3 = 4;
                            break;
                        }
                        break;
                    case 393881811:
                        if (str2.equals("create_interstitial_ad")) {
                            c3 = 0;
                            break;
                        }
                        break;
                    case 585513149:
                        if (str2.equals("load_interstitial_ad")) {
                            c3 = 1;
                            break;
                        }
                        break;
                    case 1671767583:
                        if (str2.equals("dispose")) {
                            c3 = 6;
                            break;
                        }
                        break;
                    case 2109237041:
                        if (str2.equals("create_rewarded_ad")) {
                            c3 = 3;
                            break;
                        }
                        break;
                }
                zzdtw zzdtwVar = this.f6507b;
                switch (c3) {
                    case 0:
                        if (hashMap.size() < ((Integer) zzbclVar2.zza(zzbcn.zzjD)).intValue()) {
                            Long valueOf = Long.valueOf(parseLong);
                            if (!hashMap.containsKey(valueOf)) {
                                String str4 = (String) u.get("ad_unit");
                                if (!TextUtils.isEmpty(str4)) {
                                    zzdtn zzb = zzdtwVar.zzb();
                                    zzb.zzb(parseLong);
                                    zzb.zza(str4);
                                    hashMap.put(valueOf, zzb.zzc().zza());
                                    zzdtrVar.zzh(parseLong);
                                    agd.e("Created H5 interstitial #" + parseLong + " with ad unit " + str4);
                                    break;
                                } else {
                                    agd.b("Could not create H5 ad, missing ad unit id");
                                    zzdtrVar.zzi(parseLong);
                                    break;
                                }
                            } else {
                                agd.c("Could not create H5 ad, object ID already exists");
                                zzdtrVar.zzi(parseLong);
                                break;
                            }
                        } else {
                            agd.b("Could not create H5 ad, too many existing objects");
                            zzdtrVar.zzi(parseLong);
                            break;
                        }
                    case 1:
                        bwx bwxVar = (bwx) hashMap.get(Long.valueOf(parseLong));
                        if (bwxVar != null) {
                            bwxVar.zzb(d(u));
                            break;
                        } else {
                            agd.c("Could not load H5 ad, object ID does not exist");
                            zzdtrVar.zzf(parseLong);
                            break;
                        }
                    case 2:
                        bwx bwxVar2 = (bwx) hashMap.get(Long.valueOf(parseLong));
                        if (bwxVar2 != null) {
                            bwxVar2.zzc();
                            break;
                        } else {
                            agd.c("Could not show H5 ad, object ID does not exist");
                            zzdtrVar.zzf(parseLong);
                            break;
                        }
                    case 3:
                        if (hashMap.size() < ((Integer) zzbclVar2.zza(zzbcn.zzjD)).intValue()) {
                            Long valueOf2 = Long.valueOf(parseLong);
                            if (!hashMap.containsKey(valueOf2)) {
                                String str5 = (String) u.get("ad_unit");
                                if (!TextUtils.isEmpty(str5)) {
                                    zzdtn zzb2 = zzdtwVar.zzb();
                                    zzb2.zzb(parseLong);
                                    zzb2.zza(str5);
                                    hashMap.put(valueOf2, zzb2.zzc().zzb());
                                    zzdtrVar.zzh(parseLong);
                                    agd.e("Created H5 rewarded #" + parseLong + " with ad unit " + str5);
                                    break;
                                } else {
                                    agd.b("Could not create H5 ad, missing ad unit id");
                                    zzdtrVar.zzi(parseLong);
                                    break;
                                }
                            } else {
                                agd.c("Could not create H5 ad, object ID already exists");
                                zzdtrVar.zzi(parseLong);
                                break;
                            }
                        } else {
                            agd.b("Could not create H5 ad, too many existing objects");
                            zzdtrVar.zzi(parseLong);
                            break;
                        }
                    case 4:
                        bwx bwxVar3 = (bwx) hashMap.get(Long.valueOf(parseLong));
                        if (bwxVar3 != null) {
                            bwxVar3.zzb(d(u));
                            break;
                        } else {
                            agd.c("Could not load H5 ad, object ID does not exist");
                            zzdtrVar.zzq(parseLong);
                            break;
                        }
                    case 5:
                        bwx bwxVar4 = (bwx) hashMap.get(Long.valueOf(parseLong));
                        if (bwxVar4 != null) {
                            bwxVar4.zzc();
                            break;
                        } else {
                            agd.c("Could not show H5 ad, object ID does not exist");
                            zzdtrVar.zzq(parseLong);
                            break;
                        }
                    case 6:
                        Long valueOf3 = Long.valueOf(parseLong);
                        bwx bwxVar5 = (bwx) hashMap.get(valueOf3);
                        if (bwxVar5 != null) {
                            bwxVar5.zza();
                            hashMap.remove(valueOf3);
                            agd.e("Disposed H5 ad #" + parseLong);
                            break;
                        } else {
                            agd.c("Could not dispose H5 ad, object ID does not exist");
                            break;
                        }
                    default:
                        agd.c("H5 gmsg contained invalid action: ".concat(str2));
                        break;
                }
            } catch (NullPointerException | NumberFormatException unused) {
                agd.c("H5 gmsg did not contain a valid object id: ".concat(String.valueOf(str3)));
            }
        }
    }
}
