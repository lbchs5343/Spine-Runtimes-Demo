package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class zzhm extends zzhg {

    /* renamed from: c, reason: collision with root package name */
    public final int f8749c;
    public zzad zza;
    public final zzhj zzb = new zzhj();
    public ByteBuffer zzc;
    public boolean zzd;
    public long zze;
    public ByteBuffer zzf;

    static {
        zzax.zzb("media3.decoder");
    }

    public zzhm(int i, int i2) {
        this.f8749c = i;
    }

    public final ByteBuffer d(int i) {
        int i2 = this.f8749c;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.zzc;
        throw new zzhl(byteBuffer == null ? 0 : byteBuffer.capacity(), i);
    }

    @Override // com.google.android.gms.internal.ads.zzhg
    public void zzb() {
        super.zzb();
        ByteBuffer byteBuffer = this.zzc;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.zzf;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.zzd = false;
    }

    public final void zzj(int i) {
        ByteBuffer byteBuffer = this.zzc;
        if (byteBuffer == null) {
            this.zzc = d(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (capacity >= i2) {
            this.zzc = byteBuffer;
            return;
        }
        ByteBuffer d2 = d(i2);
        d2.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            d2.put(byteBuffer);
        }
        this.zzc = d2;
    }

    public final void zzk() {
        ByteBuffer byteBuffer = this.zzc;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.zzf;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean zzl() {
        return b(C.ENCODING_PCM_32BIT);
    }
}
