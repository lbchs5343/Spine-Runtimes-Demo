package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;

/* loaded from: classes3.dex */
public final class zzaxi extends zzaxt {
    public zzaxi(zzawf zzawfVar, String str, String str2, zzasf zzasfVar, int i, int i2) {
        super(zzawfVar, "znXH0RM1XxCTrwmP7d8xA6zmeZad4bsyeawjZRDuwEtKXTURGEnX+tv9VD8MEWrm", "W+zVAKx2eduhDPC6RoJgOXSegMcVlCiHMJF4lAq9BYw=", zzasfVar, i, 73);
    }

    @Override // com.google.android.gms.internal.ads.zzaxt
    public final void c() {
        zzasf zzasfVar = this.i;
        try {
            int i = 1;
            if (true == ((Boolean) this.j.invoke(null, this.k.zzb())).booleanValue()) {
                i = 2;
            }
            zzasfVar.zzaf(i);
        } catch (InvocationTargetException unused) {
            zzasfVar.zzaf(3);
        }
    }
}
