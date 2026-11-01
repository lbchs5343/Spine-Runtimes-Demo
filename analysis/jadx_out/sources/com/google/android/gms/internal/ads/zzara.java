package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes3.dex */
public final class zzara extends zzhfi implements Closeable {
    static {
        zzhfp.zzb(zzara.class);
    }

    public zzara(zzhfj zzhfjVar, zzaqz zzaqzVar) throws IOException {
        zze(zzhfjVar, zzhfjVar.zzc(), zzaqzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhfi, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
    }

    @Override // com.google.android.gms.internal.ads.zzhfi
    public final String toString() {
        String obj = this.f8724g.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(obj).length() + 7);
        sb.append("model(");
        sb.append(obj);
        sb.append(")");
        return sb.toString();
    }
}
