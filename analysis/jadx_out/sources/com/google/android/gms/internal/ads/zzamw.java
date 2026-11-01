package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzamw implements zzamm {

    /* renamed from: b, reason: collision with root package name */
    public int f4351b;

    /* renamed from: d, reason: collision with root package name */
    public int f4353d;

    /* renamed from: e, reason: collision with root package name */
    public zzadx f4354e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4355f;

    /* renamed from: c, reason: collision with root package name */
    public final zzed f4352c = new zzed(10);

    /* renamed from: a, reason: collision with root package name */
    public long f4350a = -9223372036854775807L;

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zza(zzed zzedVar) {
        zzdb.zzb(this.f4354e);
        if (this.f4355f) {
            int zzb = zzedVar.zzb();
            int i = this.f4353d;
            if (i < 10) {
                int min = Math.min(zzb, 10 - i);
                byte[] zzN = zzedVar.zzN();
                int zzd = zzedVar.zzd();
                zzed zzedVar2 = this.f4352c;
                System.arraycopy(zzN, zzd, zzedVar2.zzN(), this.f4353d, min);
                if (this.f4353d + min == 10) {
                    zzedVar2.zzL(0);
                    if (zzedVar2.zzm() != 73 || zzedVar2.zzm() != 68 || zzedVar2.zzm() != 51) {
                        zzdt.zzf("Id3Reader", "Discarding invalid ID3 tag");
                        this.f4355f = false;
                        return;
                    } else {
                        zzedVar2.zzM(3);
                        this.f4351b = zzedVar2.zzl() + 10;
                    }
                }
            }
            int min2 = Math.min(zzb, this.f4351b - this.f4353d);
            this.f4354e.zzq(zzedVar, min2);
            this.f4353d += min2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzb(zzacu zzacuVar, zzaoa zzaoaVar) {
        zzaoaVar.zzc();
        zzadx zzw = zzacuVar.zzw(zzaoaVar.zza(), 5);
        this.f4354e = zzw;
        zzab zzabVar = new zzab();
        zzabVar.zzL(zzaoaVar.zzb());
        zzabVar.zzZ("application/id3");
        zzw.zzl(zzabVar.zzaf());
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzc(boolean z) {
        int i;
        zzdb.zzb(this.f4354e);
        if (this.f4355f && (i = this.f4351b) != 0 && this.f4353d == i) {
            zzdb.zzf(this.f4350a != -9223372036854775807L);
            this.f4354e.zzs(this.f4350a, 1, this.f4351b, 0, null);
            this.f4355f = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.f4355f = true;
        this.f4350a = j;
        this.f4351b = 0;
        this.f4353d = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzamm
    public final void zze() {
        this.f4355f = false;
        this.f4350a = -9223372036854775807L;
    }
}
