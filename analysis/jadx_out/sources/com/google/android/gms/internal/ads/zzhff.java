package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class zzhff extends zzhfi implements zzarc {

    /* renamed from: a, reason: collision with root package name */
    public final String f8718a = "moov";

    public zzhff(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzarc
    public final String zza() {
        return this.f8718a;
    }

    @Override // com.google.android.gms.internal.ads.zzarc
    public final void zzb(zzhfj zzhfjVar, ByteBuffer byteBuffer, long j, zzaqz zzaqzVar) throws IOException {
        zzhfjVar.zzb();
        byteBuffer.remaining();
        byteBuffer.remaining();
        this.f8724g = zzhfjVar;
        this.f8721d = zzhfjVar.zzb();
        zzhfjVar.zze(zzhfjVar.zzb() + j);
        this.f8722e = zzhfjVar.zzb();
        this.f8723f = zzaqzVar;
    }
}
