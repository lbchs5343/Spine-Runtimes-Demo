package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzrd {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8866a = {79, 103, 103, 83, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 28, -43, -59, -9, 1, 19, 79, 112, 117, 115, 72, 101, 97, 100, 1, 2, 56, 1, Byte.MIN_VALUE, -69, 0, 0, 0, 0, 0};

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f8867b = {79, 103, 103, 83, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 11, -103, 87, 83, 1, 16, 79, 112, 117, 115, 84, 97, 103, 115, 0, 0, 0, 0, 0, 0, 0, 0};

    /* renamed from: c, reason: collision with root package name */
    public ByteBuffer f8868c = zzcm.zza;

    /* renamed from: e, reason: collision with root package name */
    public int f8870e = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f8869d = 2;

    public static final void f(ByteBuffer byteBuffer, long j, int i, int i2, boolean z) {
        byteBuffer.put((byte) 79);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 103);
        byteBuffer.put((byte) 83);
        byteBuffer.put((byte) 0);
        byteBuffer.put(true != z ? (byte) 0 : (byte) 2);
        byteBuffer.putLong(j);
        byteBuffer.putInt(0);
        byteBuffer.putInt(i);
        byteBuffer.putInt(0);
        byteBuffer.put(zzgcu.zza(i2));
    }

    public final void zza(zzhm zzhmVar, List list) {
        int i;
        ByteBuffer byteBuffer;
        ByteBuffer byteBuffer2 = zzhmVar.zzc;
        byteBuffer2.getClass();
        if (byteBuffer2.limit() - zzhmVar.zzc.position() == 0) {
            return;
        }
        byte[] bArr = null;
        if (this.f8869d == 2 && (list.size() == 1 || list.size() == 3)) {
            bArr = (byte[]) list.get(0);
        }
        ByteBuffer byteBuffer3 = zzhmVar.zzc;
        int position = byteBuffer3.position();
        int limit = byteBuffer3.limit();
        int i2 = limit - position;
        int i3 = this.f8869d;
        int i4 = (i2 + MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i5 = i4 + 27 + i2;
        if (i3 == 2) {
            i = bArr != null ? bArr.length + 28 : 47;
            i5 += i + 44;
        } else {
            i = 0;
        }
        if (this.f8868c.capacity() < i5) {
            this.f8868c = ByteBuffer.allocate(i5).order(ByteOrder.LITTLE_ENDIAN);
        } else {
            this.f8868c.clear();
        }
        ByteBuffer byteBuffer4 = this.f8868c;
        if (this.f8869d == 2) {
            if (bArr != null) {
                byteBuffer = byteBuffer4;
                f(byteBuffer, 0L, 0, 1, true);
                int length = bArr.length;
                byteBuffer.put(zzgcu.zza(length));
                byteBuffer.put(bArr);
                int i6 = length + 28;
                byteBuffer.putInt(22, zzen.zzf(byteBuffer.array(), byteBuffer.arrayOffset(), i6, 0));
                byteBuffer.position(i6);
            } else {
                byteBuffer = byteBuffer4;
                byteBuffer.put(f8866a);
            }
            byteBuffer.put(f8867b);
        } else {
            byteBuffer = byteBuffer4;
        }
        int zzc = this.f8870e + zzadm.zzc(byteBuffer3);
        this.f8870e = zzc;
        ByteBuffer byteBuffer5 = byteBuffer;
        f(byteBuffer5, zzc, this.f8869d, i4, false);
        for (int i7 = 0; i7 < i4; i7++) {
            if (i2 >= 255) {
                byteBuffer5.put((byte) -1);
                i2 -= 255;
            } else {
                byteBuffer5.put((byte) i2);
                i2 = 0;
            }
        }
        while (position < limit) {
            byteBuffer5.put(byteBuffer3.get(position));
            position++;
        }
        byteBuffer3.position(byteBuffer3.limit());
        byteBuffer5.flip();
        if (this.f8869d == 2) {
            byteBuffer5.putInt(i + 66, zzen.zzf(byteBuffer5.array(), byteBuffer5.arrayOffset() + i + 44, byteBuffer5.limit() - byteBuffer5.position(), 0));
        } else {
            byteBuffer5.putInt(22, zzen.zzf(byteBuffer5.array(), byteBuffer5.arrayOffset(), byteBuffer5.limit() - byteBuffer5.position(), 0));
        }
        this.f8869d++;
        this.f8868c = byteBuffer5;
        zzhmVar.zzb();
        zzhmVar.zzj(this.f8868c.remaining());
        zzhmVar.zzc.put(this.f8868c);
        zzhmVar.zzk();
    }

    public final void zzb() {
        this.f8868c = zzcm.zza;
        this.f8870e = 0;
        this.f8869d = 2;
    }
}
