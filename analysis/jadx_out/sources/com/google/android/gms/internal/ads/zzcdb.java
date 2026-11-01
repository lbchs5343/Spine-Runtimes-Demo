package com.google.android.gms.internal.ads;

import g.ghb;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class zzcdb {

    /* renamed from: a, reason: collision with root package name */
    public long f5202a;

    public final long zza(ByteBuffer byteBuffer) {
        zzarf zzarfVar;
        zzare zzareVar;
        long j = this.f5202a;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator it = new zzara(new ghb(duplicate), u.f3985a).zzd().iterator();
            while (true) {
                zzarfVar = null;
                if (!it.hasNext()) {
                    zzareVar = null;
                    break;
                }
                zzarc zzarcVar = (zzarc) it.next();
                if (zzarcVar instanceof zzare) {
                    zzareVar = (zzare) zzarcVar;
                    break;
                }
            }
            Iterator it2 = zzareVar.zzd().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzarc zzarcVar2 = (zzarc) it2.next();
                if (zzarcVar2 instanceof zzarf) {
                    zzarfVar = (zzarf) zzarcVar2;
                    break;
                }
            }
            long zzc = (zzarfVar.zzc() * 1000) / zzarfVar.zzd();
            this.f5202a = zzc;
            return zzc;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
