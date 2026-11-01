package com.google.android.gms.internal.ads;

import g.edt;

/* loaded from: classes3.dex */
public final class zzaxh extends zzaxt {
    public zzaxh(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "5M/doPlP18zj3rcFgQUszE+WSqXh/st9yUF5JdFdktMd87cDlxgzyepiU5bej2uF", "KwLCo2LsichRi68Y4oRLpNy6fN1z6Wq88wujVx/pAjo=", zzasfVar, i, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        Boolean bool = (Boolean) edt.f15376a.f15379d.zza(zzbcn.zzcU);
        bool.booleanValue();
        zzavl zzavlVar = new zzavl((String) this.j.invoke(null, this.k.zzb(), bool));
        synchronized (this.i) {
            this.i.zzj(zzavlVar.zza);
            this.i.zzC(zzavlVar.zzb);
        }
    }
}
