package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import g.awf;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class zzre extends zzcn {
    public int i;
    public long j;
    public byte[] n;
    public byte[] o;
    public boolean p;
    public int q;
    public int m = 0;
    public int l = 0;
    public int k = 0;

    public zzre() {
        byte[] bArr = zzen.zzf;
        this.o = bArr;
        this.n = bArr;
    }

    public final void r(int i, int i2) {
        int i3;
        if (i == 0) {
            return;
        }
        zzdb.zzd(this.k >= i);
        if (i2 == 2) {
            int i4 = this.l;
            int i5 = this.k;
            int i6 = i4 + i5;
            byte[] bArr = this.o;
            int length = bArr.length;
            if (i6 <= length) {
                System.arraycopy(bArr, i6 - i, this.n, 0, i);
            } else {
                int i7 = i5 - (length - i4);
                if (i7 >= i) {
                    System.arraycopy(bArr, i7 - i, this.n, 0, i);
                } else {
                    int i8 = i - i7;
                    System.arraycopy(bArr, length - i8, this.n, 0, i8);
                    System.arraycopy(this.o, 0, this.n, i8, i7);
                }
            }
        } else {
            int i9 = this.l;
            int i10 = i9 + i;
            byte[] bArr2 = this.o;
            int length2 = bArr2.length;
            if (i10 <= length2) {
                System.arraycopy(bArr2, i9, this.n, 0, i);
            } else {
                int i11 = length2 - i9;
                System.arraycopy(bArr2, i9, this.n, 0, i11);
                System.arraycopy(this.o, 0, this.n, i11, i - i11);
            }
        }
        zzdb.zze(i % this.i == 0, "sizeToOutput is not aligned to frame size: " + i);
        zzdb.zzf(this.l < this.o.length);
        byte[] bArr3 = this.n;
        zzdb.zze(i % this.i == 0, awf.ac(i, "byteOutput size is not aligned to frame size "));
        if (i2 != 3) {
            for (int i12 = 0; i12 < i; i12 += 2) {
                int i13 = i12 + 1;
                int i14 = (bArr3[i13] << 8) | (bArr3[i12] & 255);
                if (i2 == 0) {
                    i3 = ((((i12 * 1000) / (i - 1)) * (-90)) / 1000) + 100;
                } else {
                    i3 = 10;
                    if (i2 == 2) {
                        i3 = 10 + (((90000 * i12) / (i - 1)) / 1000);
                    }
                }
                int i15 = (i14 * i3) / 100;
                if (i15 >= 32767) {
                    bArr3[i12] = -1;
                    bArr3[i13] = Byte.MAX_VALUE;
                } else if (i15 <= -32768) {
                    bArr3[i12] = 0;
                    bArr3[i13] = Byte.MIN_VALUE;
                } else {
                    bArr3[i12] = (byte) (i15 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
                    bArr3[i13] = (byte) (i15 >> 8);
                }
            }
        }
        h(i).put(bArr3, 0, i).flip();
    }

    public final int s(int i) {
        int length = ((((int) ((2000000 * this.f5355c.zzb) / C.MICROS_PER_SECOND)) - this.m) * this.i) - (this.o.length >> 1);
        zzdb.zzf(length >= 0);
        int min = (int) Math.min((i * 0.2f) + 0.5f, length);
        int i2 = this.i;
        return (min / i2) * i2;
    }

    public final void t(boolean z) {
        int i;
        int i2;
        int i3 = this.k;
        int length = this.o.length;
        if (i3 != length) {
            if (!z) {
                return;
            } else {
                z = true;
            }
        }
        if (this.m == 0) {
            if (z) {
                r(i3, 3);
                i2 = i3;
            } else {
                zzdb.zzf(i3 >= (length >> 1));
                i2 = this.o.length >> 1;
                r(i2, 0);
            }
            i = i2;
        } else {
            int i4 = length >> 1;
            int i5 = i3 - i4;
            if (z) {
                int s = s(i5) + (this.o.length >> 1);
                r(s, 2);
                int i6 = i4 + i5;
                i = s;
                i2 = i6;
            } else {
                int s2 = s(i5);
                r(s2, 1);
                i = s2;
                i2 = i5;
            }
        }
        zzdb.zzg(i2 % this.i == 0, "bytesConsumed is not aligned to frame size: %s" + i2);
        zzdb.zzf(i3 >= i);
        this.k -= i2;
        int i7 = this.l + i2;
        this.l = i7;
        this.l = i7 % this.o.length;
        this.m = (i / this.i) + this.m;
        this.j += (i2 - i) / r2;
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zze(ByteBuffer byteBuffer) {
        int limit;
        int i;
        int position;
        while (byteBuffer.hasRemaining() && !this.f5356d.hasRemaining()) {
            if (this.q != 0) {
                zzdb.zzf(this.l < this.o.length);
                int limit2 = byteBuffer.limit();
                int position2 = byteBuffer.position() + 1;
                while (true) {
                    if (position2 >= byteBuffer.limit()) {
                        limit = byteBuffer.limit();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(position2) << 8) | (byteBuffer.get(position2 - 1) & 255)) > 1024) {
                        int i2 = this.i;
                        limit = (position2 / i2) * i2;
                        break;
                    }
                    position2 += 2;
                }
                int position3 = limit - byteBuffer.position();
                int i3 = this.l;
                int i4 = this.k;
                int i5 = i3 + i4;
                int length = this.o.length;
                if (i5 < length) {
                    i = length - i5;
                } else {
                    i5 = i4 - (length - i3);
                    i = i3 - i5;
                }
                int min = Math.min(position3, i);
                byteBuffer.limit(byteBuffer.position() + min);
                byteBuffer.get(this.o, i5, min);
                int i6 = this.k + min;
                this.k = i6;
                zzdb.zzf(i6 <= this.o.length);
                boolean z = limit < limit2 && position3 < i;
                t(z);
                if (z) {
                    this.q = 0;
                    this.m = 0;
                }
                byteBuffer.limit(limit2);
            } else {
                int limit3 = byteBuffer.limit();
                byteBuffer.limit(Math.min(limit3, byteBuffer.position() + this.o.length));
                int limit4 = byteBuffer.limit() - 1;
                while (true) {
                    if (limit4 < byteBuffer.position()) {
                        position = byteBuffer.position();
                        break;
                    }
                    if (Math.abs((byteBuffer.get(limit4) << 8) | (byteBuffer.get(limit4 - 1) & 255)) > 1024) {
                        int i7 = this.i;
                        position = ((limit4 / i7) * i7) + i7;
                        break;
                    }
                    limit4 -= 2;
                }
                if (position == byteBuffer.position()) {
                    this.q = 1;
                } else {
                    byteBuffer.limit(Math.min(position, byteBuffer.capacity()));
                    h(byteBuffer.remaining()).put(byteBuffer).flip();
                }
                byteBuffer.limit(limit3);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcn, com.google.android.gms.internal.ads.zzcm
    public final boolean zzg() {
        return super.zzg() && this.p;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck zzi(zzck zzckVar) {
        if (zzckVar.zzd == 2) {
            return zzckVar.zzb == -1 ? zzck.zza : zzckVar;
        }
        throw new zzcl("Unhandled input format:", zzckVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzk() {
        if (zzg()) {
            int i = this.f5355c.zzc;
            int i2 = i + i;
            this.i = i2;
            int i3 = ((((int) ((100000 * r0.zzb) / C.MICROS_PER_SECOND)) / 2) / i2) * i2;
            int i4 = i3 + i3;
            if (this.o.length != i4) {
                this.o = new byte[i4];
                this.n = new byte[i4];
            }
        }
        this.q = 0;
        this.j = 0L;
        this.m = 0;
        this.l = 0;
        this.k = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzl() {
        if (this.k > 0) {
            t(true);
            this.m = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzm() {
        this.p = false;
        byte[] bArr = zzen.zzf;
        this.o = bArr;
        this.n = bArr;
    }

    public final long zzo() {
        return this.j;
    }

    public final void zzp(boolean z) {
        this.p = z;
    }
}
