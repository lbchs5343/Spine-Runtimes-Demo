package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzfnq extends zzfnt {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfnq f8071a = new zzfnq();

    public static zzfnq zza() {
        return f8071a;
    }

    @Override // com.google.android.gms.internal.ads.zzfnt
    public final void zzb(boolean z) {
        Iterator it = zzfnr.zza().zzc().iterator();
        while (it.hasNext()) {
            ((zzfna) it.next()).zzg().zzk(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfnt
    public final boolean zzc() {
        Iterator it = zzfnr.zza().zzb().iterator();
        while (it.hasNext()) {
            View zzf = ((zzfna) it.next()).zzf();
            if (zzf != null && zzf.hasWindowFocus()) {
                return true;
            }
        }
        return false;
    }
}
