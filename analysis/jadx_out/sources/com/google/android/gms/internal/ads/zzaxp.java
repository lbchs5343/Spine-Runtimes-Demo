package com.google.android.gms.internal.ads;

/* loaded from: classes3.dex */
public final class zzaxp extends zzaxt {
    public zzaxp(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "88ETcPLh1JYg+nQ5zdwp+6acsWFKzCMthjLOw7XatJOMkLvYw0fl0jJT3ig1Ktkw", "AW0WUdAlySbPNJG5w1IgQqYKXV7WN2hB/EQpNB2ZwfA=", zzasfVar, i, 48);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        this.i.zzag(3);
        boolean booleanValue = ((Boolean) this.j.invoke(null, this.k.zzb())).booleanValue();
        synchronized (this.i) {
            try {
                if (booleanValue) {
                    this.i.zzag(2);
                } else {
                    this.i.zzag(1);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
