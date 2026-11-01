package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzawu extends zzaxt {
    public zzawu(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "GvR+eAwGnG9v3CGqMDhazUVumHdJLt60TSBx5Df5j9bg+ZMppmesgixP833S80RN", "cPmD560wQtvtgfdpMZNJUfXZwJNhRKcjeHNf5LBrqDo=", zzasfVar, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        this.i.zzm(-1L);
        this.i.zzl(-1L);
        int[] iArr = (int[]) this.j.invoke(null, this.k.zzb());
        synchronized (this.i) {
            try {
                this.i.zzm(iArr[0]);
                this.i.zzl(iArr[1]);
                int i = iArr[2];
                if (i != Integer.MIN_VALUE) {
                    this.i.zzk(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
