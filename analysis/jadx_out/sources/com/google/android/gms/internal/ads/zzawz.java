package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzawz extends zzaxt {

    /* renamed from: a, reason: collision with root package name */
    public final zzawg f4571a;

    public zzawz(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2, zzawg zzawgVar) {
        super(zzawfVar, "F3b/A5v6wf4vIgkFPpHbBE4QF+7kAwNXBYNdW+58EM84yoPYR42ji8mEXh7tsTu8", "0hPI01hyl9gRqyFiGkD5f6txe9kPcrO1Amh2RTTvv44=", zzasfVar, i, 85);
        this.f4571a = zzawgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        long[] jArr = (long[]) this.j.invoke(null, Long.valueOf(this.f4571a.zzd()), Long.valueOf(this.f4571a.zzh()), Long.valueOf(this.f4571a.zzb()), Long.valueOf(this.f4571a.zzf()));
        synchronized (this.i) {
            this.i.zzv(jArr[0]);
            this.i.zzu(jArr[1]);
        }
    }
}
