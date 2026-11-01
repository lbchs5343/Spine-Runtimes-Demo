package g;

import com.google.android.gms.internal.ads.zzed;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class bwi extends bgf {

    /* renamed from: a, reason: collision with root package name */
    public long f12315a;

    /* renamed from: b, reason: collision with root package name */
    public long[] f12316b;

    /* renamed from: c, reason: collision with root package name */
    public long[] f12317c;

    public static String g(zzed zzedVar) {
        int zzq = zzedVar.zzq();
        int zzd = zzedVar.zzd();
        zzedVar.zzM(zzq);
        return new String(zzedVar.zzN(), zzd, zzq);
    }

    public static HashMap h(zzed zzedVar) {
        int zzp = zzedVar.zzp();
        HashMap hashMap = new HashMap(zzp);
        for (int i = 0; i < zzp; i++) {
            String g2 = g(zzedVar);
            Serializable j = j(zzedVar.zzm(), zzedVar);
            if (j != null) {
                hashMap.put(g2, j);
            }
        }
        return hashMap;
    }

    public static Serializable j(int i, zzed zzedVar) {
        if (i == 0) {
            return Double.valueOf(Double.longBitsToDouble(zzedVar.zzt()));
        }
        if (i == 1) {
            return Boolean.valueOf(zzedVar.zzm() == 1);
        }
        if (i == 2) {
            return g(zzedVar);
        }
        if (i != 3) {
            if (i == 8) {
                return h(zzedVar);
            }
            if (i != 10) {
                if (i != 11) {
                    return null;
                }
                Date date = new Date((long) Double.longBitsToDouble(zzedVar.zzt()));
                zzedVar.zzM(2);
                return date;
            }
            int zzp = zzedVar.zzp();
            ArrayList arrayList = new ArrayList(zzp);
            for (int i2 = 0; i2 < zzp; i2++) {
                Serializable j = j(zzedVar.zzm(), zzedVar);
                if (j != null) {
                    arrayList.add(j);
                }
            }
            return arrayList;
        }
        HashMap hashMap = new HashMap();
        while (true) {
            String g2 = g(zzedVar);
            int zzm = zzedVar.zzm();
            if (zzm == 9) {
                return hashMap;
            }
            Serializable j2 = j(zzm, zzedVar);
            if (j2 != null) {
                hashMap.put(g2, j2);
            }
        }
    }
}
