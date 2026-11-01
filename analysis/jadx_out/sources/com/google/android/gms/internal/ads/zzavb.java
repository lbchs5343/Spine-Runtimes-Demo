package com.google.android.gms.internal.ads;

import android.content.Context;
import g.edt;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public final class zzavb extends zzava {
    public static zzavb zzu(Context context, zzauz zzauzVar) {
        synchronized (zzava.class) {
            try {
                if (!zzava.ah) {
                    zzava.aj = System.currentTimeMillis() / 1000;
                    zzauy.f4511a = zzava.an(context, zzauzVar.f4518a);
                    zzbce zzbceVar = zzbcn.zzdv;
                    edt edtVar = edt.f15376a;
                    if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                        zzava.ai = zzavi.zzc(context);
                    }
                    ExecutorService zzk = zzauy.f4511a.zzk();
                    if (((Boolean) edtVar.f15379d.zza(zzbcn.zzdw)).booleanValue() && zzk != null) {
                        zzava.ae = zzawo.zzd(context, zzk);
                    }
                    if (((Boolean) edtVar.f15379d.zza(zzbcn.zzcL)).booleanValue()) {
                        zzava.ad = new zzawg();
                    }
                    if (((Boolean) edtVar.f15379d.zza(zzbcn.zzcQ)).booleanValue()) {
                        zzava.af = new zzavf(context, zzk);
                    }
                    if (((Boolean) edtVar.f15379d.zza(zzbcn.zzcM)).booleanValue() || zzauzVar.f4520c.zzg()) {
                        zzava.ag = new zzatx(context, zzk, zzauzVar.f4520c, zzava.af);
                    }
                    zzava.ah = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return new zzavb(context, zzauzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzava
    public final ArrayList ar(zzawf zzawfVar, Context context, zzasf zzasfVar) {
        if (zzawfVar.zzk() == null || !this.ak.f4518a) {
            return super.ar(zzawfVar, context, zzasfVar);
        }
        int zza = zzawfVar.zza();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.ar(zzawfVar, context, zzasfVar));
        arrayList.add(new zzawx(zzawfVar, "I548ixRBwSg+qVTan0l7SrCz1ZaKKX3ZWtyXgu8y1OX29GkbAkB2rT1/ilUIPvFa", "lJ7kzsnnwzWch0Zt9duIk9QjvlIbpzkFDyarwE3sjFc=", zzasfVar, zza, 24));
        return arrayList;
    }
}
