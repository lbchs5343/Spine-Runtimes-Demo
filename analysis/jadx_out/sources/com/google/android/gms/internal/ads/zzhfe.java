package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public abstract class zzhfe implements zzarc {
    public static final zzhfp i = zzhfp.zzb(zzhfe.class);
    public zzhfj j;
    public ByteBuffer l;
    public long m;
    public final String n;
    public long p = -1;
    public boolean k = true;
    public boolean o = true;

    public zzhfe(String str) {
        this.n = str;
    }

    public final synchronized void q() {
        try {
            if (this.k) {
                return;
            }
            try {
                zzhfp zzhfpVar = i;
                String str = this.n;
                zzhfpVar.zza(str.length() != 0 ? "mem mapping ".concat(str) : new String("mem mapping "));
                this.l = this.j.zzd(this.m, this.p);
                this.k = true;
            } catch (IOException e2) {
                throw new RuntimeException(e2);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarc
    public final String zza() {
        return this.n;
    }

    @Override // com.google.android.gms.internal.ads.zzarc
    public final void zzb(zzhfj zzhfjVar, ByteBuffer byteBuffer, long j, zzaqz zzaqzVar) throws IOException {
        this.m = zzhfjVar.zzb();
        byteBuffer.remaining();
        this.p = j;
        this.j = zzhfjVar;
        zzhfjVar.zze(zzhfjVar.zzb() + j);
        this.k = false;
        this.o = false;
        zzf();
    }

    public abstract void zze(ByteBuffer byteBuffer);

    public final synchronized void zzf() {
        try {
            q();
            zzhfp zzhfpVar = i;
            String str = this.n;
            zzhfpVar.zza(str.length() != 0 ? "parsing details of ".concat(str) : new String("parsing details of "));
            ByteBuffer byteBuffer = this.l;
            if (byteBuffer != null) {
                this.o = true;
                byteBuffer.rewind();
                zze(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    byteBuffer.slice();
                }
                this.l = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
