package com.google.android.gms.internal.ads;

import android.os.Handler;
import g.bgs;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes3.dex */
public final class zzyp {

    /* renamed from: a, reason: collision with root package name */
    public final CopyOnWriteArrayList f8955a = new CopyOnWriteArrayList();

    public final void zza(Handler handler, zzyq zzyqVar) {
        zzc(zzyqVar);
        this.f8955a.add(new bgs(handler, zzyqVar));
    }

    public final void zzb(final int i, final long j, final long j2) {
        Iterator it = this.f8955a.iterator();
        while (it.hasNext()) {
            final bgs bgsVar = (bgs) it.next();
            if (!bgsVar.f11540c) {
                bgsVar.f11538a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzyn
                    @Override // java.lang.Runnable
                    public final void run() {
                        bgs.this.f11539b.zzY(i, j, j2);
                    }
                });
            }
        }
    }

    public final void zzc(zzyq zzyqVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f8955a;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            bgs bgsVar = (bgs) it.next();
            if (bgsVar.f11539b == zzyqVar) {
                bgsVar.f11540c = true;
                copyOnWriteArrayList.remove(bgsVar);
            }
        }
    }
}
