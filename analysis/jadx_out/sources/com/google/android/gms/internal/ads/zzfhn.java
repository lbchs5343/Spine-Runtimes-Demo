package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import g.aeh;
import g.gby;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;

/* loaded from: classes3.dex */
public final class zzfhn implements zzfhm {

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f7896a;

    public zzfhn(aeh aehVar, String str, int i, String str2, gby gbyVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(aehVar.zzb));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(b(aehVar.zzc));
        } else if (hashSet.contains("npa")) {
            arrayList.add(aehVar.zzc.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(aehVar.zzd));
        }
        if (hashSet.contains("keywords")) {
            List list = aehVar.zze;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(aehVar.zzf));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(aehVar.zzg));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(aehVar.zzh));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(aehVar.zzi);
        }
        if (hashSet.contains("location")) {
            Location location = aehVar.zzk;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(aehVar.zzl);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(b(aehVar.zzm));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(b(aehVar.zzn));
        }
        if (hashSet.contains("categoryExclusions")) {
            List list2 = aehVar.zzo;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(aehVar.zzp);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(aehVar.zzq);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(aehVar.zzr));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(aehVar.zzt));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(aehVar.zzu);
        }
        if (hashSet.contains("orientation")) {
            if (gbyVar != null) {
                arrayList.add(Integer.valueOf(gbyVar.zza));
            } else {
                arrayList.add(null);
            }
        }
        this.f7896a = arrayList.toArray();
    }

    public static String b(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? b((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzfhm
    public final boolean equals(Object obj) {
        if (obj instanceof zzfhn) {
            return Arrays.equals(this.f7896a, ((zzfhn) obj).f7896a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfhm
    public final int hashCode() {
        return Arrays.hashCode(this.f7896a);
    }

    public final String toString() {
        Object[] objArr = this.f7896a;
        return "[PoolKey#" + Arrays.hashCode(objArr) + " " + Arrays.toString(objArr) + "]";
    }
}
