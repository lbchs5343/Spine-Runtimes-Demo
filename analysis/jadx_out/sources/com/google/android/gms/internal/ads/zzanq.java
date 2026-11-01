package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes3.dex */
public final class zzanq {

    /* renamed from: a, reason: collision with root package name */
    public final List f4403a;

    /* renamed from: b, reason: collision with root package name */
    public final zzadx[] f4404b;

    /* renamed from: c, reason: collision with root package name */
    public final zzft f4405c = new zzft(new zzfr() { // from class: com.google.android.gms.internal.ads.zzanp
        @Override // com.google.android.gms.internal.ads.zzfr
        public final void zza(long j, zzed zzedVar) {
            zzacd.zza(j, zzedVar, zzanq.this.f4404b);
        }
    });

    public zzanq(List list) {
        this.f4403a = list;
        this.f4404b = new zzadx[list.size()];
    }

    public final void zza(long j, zzed zzedVar) {
        this.f4405c.zzb(j, zzedVar);
    }

    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        int i = 0;
        while (true) {
            zzadx[] zzadxVarArr = this.f4404b;
            if (i >= zzadxVarArr.length) {
                return;
            }
            zzaoaVar.zzc();
            zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 3);
            zzad zzadVar = (zzad) this.f4403a.get(i);
            String str = zzadVar.zzo;
            boolean z = true;
            if (!"application/cea-608".equals(str) && !"application/cea-708".equals(str)) {
                z = false;
            }
            zzdb.zze(z, "Invalid closed caption MIME type provided: ".concat(String.valueOf(str)));
            String str2 = zzadVar.zza;
            if (str2 == null) {
                str2 = zzaoaVar.zzb();
            }
            zzab zzabVar = new zzab();
            zzabVar.zzL(str2);
            zzabVar.zzZ(str);
            zzabVar.zzab(zzadVar.zze);
            zzabVar.zzP(zzadVar.zzd);
            zzabVar.zzx(zzadVar.zzH);
            zzabVar.zzM(zzadVar.zzr);
            zzw.zzl(zzabVar.zzaf());
            zzadxVarArr[i] = zzw;
            i++;
        }
    }

    public final void zzc() {
        this.f4405c.zzc();
    }

    public final void zze(int i) {
        this.f4405c.zzd(i);
    }
}
