package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzcdk implements Iterable {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f5208a = new ArrayList();

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.f5208a.iterator();
    }

    public final void zzb(zzcdj zzcdjVar) {
        this.f5208a.add(zzcdjVar);
    }

    public final void zzc(zzcdj zzcdjVar) {
        this.f5208a.remove(zzcdjVar);
    }

    public final boolean zzd(zzccf zzccfVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            zzcdj zzcdjVar = (zzcdj) it.next();
            if (zzcdjVar.f5205a == zzccfVar) {
                arrayList.add(zzcdjVar);
            }
        }
        if (arrayList.isEmpty()) {
            return false;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((zzcdj) it2.next()).f5206b.zzf();
        }
        return true;
    }
}
