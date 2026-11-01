package g;

import com.google.android.gms.internal.ads.zzck;
import com.google.android.gms.internal.ads.zzcl;
import com.google.android.gms.internal.ads.zzcn;
import com.google.android.gms.internal.ads.zzen;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class ckj extends zzcn {
    public int i;
    public int j;
    public long k;
    public byte[] l;
    public int m;
    public int n;
    public boolean o;

    @Override // com.google.android.gms.internal.ads.zzcn, com.google.android.gms.internal.ads.zzcm
    public final ByteBuffer zzb() {
        int i;
        if (super.zzh() && (i = this.m) > 0) {
            h(i).put(this.l, 0, this.m).flip();
            this.m = 0;
        }
        return super.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zze(ByteBuffer byteBuffer) {
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i = limit - position;
        if (i == 0) {
            return;
        }
        int min = Math.min(i, this.j);
        this.k += min / this.f5355c.zze;
        this.j -= min;
        byteBuffer.position(position + min);
        if (this.j <= 0) {
            int i2 = i - min;
            int length = (this.m + i2) - this.l.length;
            ByteBuffer h = h(length);
            int max = Math.max(0, Math.min(length, this.m));
            h.put(this.l, 0, max);
            int max2 = Math.max(0, Math.min(length - max, i2));
            byteBuffer.limit(byteBuffer.position() + max2);
            h.put(byteBuffer);
            byteBuffer.limit(limit);
            int i3 = i2 - max2;
            int i4 = this.m - max;
            this.m = i4;
            byte[] bArr = this.l;
            System.arraycopy(bArr, max, bArr, 0, i4);
            byteBuffer.get(this.l, this.m, i3);
            this.m += i3;
            h.flip();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcn, com.google.android.gms.internal.ads.zzcm
    public final boolean zzh() {
        return super.zzh() && this.m == 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck zzi(zzck zzckVar) {
        if (zzckVar.zzd != 2) {
            throw new zzcl("Unhandled input format:", zzckVar);
        }
        this.o = true;
        return (this.i == 0 && this.n == 0) ? zzck.zza : zzckVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzk() {
        if (this.o) {
            this.o = false;
            int i = this.n;
            int i2 = this.f5355c.zze;
            this.l = new byte[i * i2];
            this.j = this.i * i2;
        }
        this.m = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzl() {
        if (this.o) {
            if (this.m > 0) {
                this.k += r0 / this.f5355c.zze;
            }
            this.m = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzm() {
        this.l = zzen.zzf;
    }
}
