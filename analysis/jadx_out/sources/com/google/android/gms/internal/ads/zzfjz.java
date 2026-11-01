package com.google.android.gms.internal.ads;

import android.content.Context;
import g.aeh;
import g.dzm;

/* loaded from: classes3.dex */
public final /* synthetic */ class zzfjz {
    public static zzfka zza(Context context, int i) {
        boolean booleanValue;
        if (zzfko.zza()) {
            int i2 = i - 2;
            if (i2 != 20 && i2 != 21) {
                switch (i2) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        booleanValue = ((Boolean) zzbeg.zzc.zze()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        booleanValue = ((Boolean) zzbeg.zzd.zze()).booleanValue();
                        break;
                    case 5:
                        booleanValue = ((Boolean) zzbeg.zzb.zze()).booleanValue();
                        break;
                }
            } else {
                booleanValue = ((Boolean) zzbeg.zze.zze()).booleanValue();
            }
            if (booleanValue) {
                return new zzfkc(context, i);
            }
        }
        return new zzfle();
    }

    public static zzfka zzb(Context context, int i, int i2, aeh aehVar) {
        zzfka zza = zza(context, i);
        if (zza instanceof zzfkc) {
            zza.zzi();
            zza.zzn(i2);
            zza.zzf(dzm.aa(aehVar.zzm));
            if (zzfkk.zze(aehVar.zzp)) {
                zza.zze(aehVar.zzp);
            }
        }
        return zza;
    }
}
