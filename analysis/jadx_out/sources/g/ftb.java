package g;

import com.google.android.gms.internal.ads.zzhm;
import com.google.android.gms.internal.ads.zzkj;
import com.google.android.gms.internal.ads.zzwf;
import com.google.android.gms.internal.ads.zzwg;
import com.google.android.gms.internal.ads.zzyw;

/* loaded from: classes3.dex */
public final class ftb implements zzwg {

    /* renamed from: a, reason: collision with root package name */
    public final int f17365a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fkd f17366b;

    public ftb(fkd fkdVar, int i) {
        this.f17366b = fkdVar;
        this.f17365a = i;
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final int zza(zzkj zzkjVar, zzhm zzhmVar, int i) {
        fkd fkdVar = this.f17366b;
        if (fkdVar.av()) {
            return -3;
        }
        int i2 = this.f17365a;
        fkdVar.as(i2);
        int zze = fkdVar.ak[i2].zze(zzkjVar, zzhmVar, i, fkdVar.q);
        if (zze == -3) {
            fkdVar.ax(i2);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final int zzb(long j) {
        fkd fkdVar = this.f17366b;
        if (fkdVar.av()) {
            return 0;
        }
        int i = this.f17365a;
        fkdVar.as(i);
        zzwf zzwfVar = fkdVar.ak[i];
        int zzc = zzwfVar.zzc(j, fkdVar.q);
        zzwfVar.zzv(zzc);
        if (zzc != 0) {
            return zzc;
        }
        fkdVar.ax(i);
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final void zzd() {
        int i = this.f17365a;
        fkd fkdVar = this.f17366b;
        fkdVar.ak[i].zzm();
        fkdVar.ae.zzi(zzyw.zza(fkdVar.ai));
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final boolean zze() {
        fkd fkdVar = this.f17366b;
        return !fkdVar.av() && fkdVar.ak[this.f17365a].zzx(fkdVar.q);
    }
}
