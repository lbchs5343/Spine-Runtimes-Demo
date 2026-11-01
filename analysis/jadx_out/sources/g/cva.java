package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzbbx;
import com.google.android.gms.internal.ads.zzbef;
import com.google.android.gms.internal.ads.zzgee;

/* loaded from: classes3.dex */
public final class cva implements zzgee {

    /* renamed from: a, reason: collision with root package name */
    public Context f13569a;

    public ab b() {
        Context context = this.f13569a;
        if (context == null) {
            throw new IllegalStateException(Context.class.getCanonicalName() + " must be set");
        }
        ab abVar = new ab();
        abVar.f9892d = gfs.d(eyt.x);
        eie eieVar = new eie(10, context);
        abVar.f9893e = eieVar;
        abVar.f9889a = gfs.d(new akj(eieVar, 12, new dcq(7, eieVar)));
        eie eieVar2 = abVar.f9893e;
        abVar.f9890b = new dcq(16, eieVar2);
        fcc d2 = gfs.d(new clx(9, abVar.f9890b, gfs.d(new eie(8, eieVar2)), false));
        abVar.f9891c = d2;
        fbc fbcVar = new fbc(11);
        eie eieVar3 = abVar.f9893e;
        fpd fpdVar = new fpd((Object) eieVar3, (Object) d2, (Object) fbcVar, 10, false);
        fcc fccVar = abVar.f9892d;
        fcc fccVar2 = abVar.f9889a;
        fzn fznVar = new fzn(fccVar, fccVar2, fpdVar, d2, d2, 3);
        fzm fzmVar = new fzm();
        fzmVar.f17723e = eieVar3;
        fzmVar.f17724f = fccVar2;
        fzmVar.f17720b = d2;
        fzmVar.f17721c = fpdVar;
        fzmVar.f17722d = fccVar;
        fzmVar.f17725g = d2;
        fzmVar.f17719a = d2;
        abVar.f9894f = gfs.d(new fpd((Object) fznVar, (Object) fzmVar, (Object) new duw(fccVar, d2, fpdVar, d2, 5), 13, false));
        return abVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        if (((Boolean) zzbef.zzh.zze()).booleanValue() && (th instanceof gya)) {
            zzbbx.zze(this.f13569a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public /* bridge */ /* synthetic */ void zzb(Object obj) {
        if (((Boolean) zzbef.zzj.zze()).booleanValue()) {
            zzbbx.zze(this.f13569a);
        }
    }
}
