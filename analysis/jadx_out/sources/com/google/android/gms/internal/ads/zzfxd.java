package com.google.android.gms.internal.ads;

import g.bli;
import g.bpu;
import g.dnb;
import g.eco;
import g.ehc;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzfxd {

    /* renamed from: a, reason: collision with root package name */
    public final eco f8218a;

    public zzfxd(eco ecoVar) {
        this.f8218a = ecoVar;
    }

    public static zzfxd zza(int i) {
        return new zzfxd(new bli(22));
    }

    public static zzfxd zzb(zzfwf zzfwfVar) {
        return new zzfxd(new dnb(zzfwfVar));
    }

    public final Iterable zzc(CharSequence charSequence) {
        charSequence.getClass();
        return new ehc(this, charSequence);
    }

    public final List zze(CharSequence charSequence) {
        charSequence.getClass();
        Iterator y = this.f8218a.y(this, charSequence);
        ArrayList arrayList = new ArrayList();
        while (true) {
            bpu bpuVar = (bpu) y;
            if (!bpuVar.hasNext()) {
                return Collections.unmodifiableList(arrayList);
            }
            arrayList.add((String) bpuVar.next());
        }
    }
}
