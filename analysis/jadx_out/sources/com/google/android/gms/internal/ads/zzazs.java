package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public final class zzazs extends zzazn {

    /* renamed from: d, reason: collision with root package name */
    public MessageDigest f4651d;

    public final byte[] zzb(String str) {
        byte[] bArr;
        byte[] bArr2;
        String[] split = str.split(" ");
        int length = split.length;
        int i = 4;
        if (length == 1) {
            int zza = zzazr.zza(split[0]);
            ByteBuffer allocate = ByteBuffer.allocate(4);
            allocate.order(ByteOrder.LITTLE_ENDIAN);
            allocate.putInt(zza);
            bArr2 = allocate.array();
        } else {
            if (length < 5) {
                bArr = new byte[length + length];
                for (int i2 = 0; i2 < split.length; i2++) {
                    int zza2 = zzazr.zza(split[i2]);
                    int i3 = (zza2 >> 16) ^ ((char) zza2);
                    byte b2 = (byte) i3;
                    byte b3 = (byte) (i3 >> 8);
                    int i4 = i2 + i2;
                    bArr[i4] = new byte[]{b2, b3}[0];
                    bArr[i4 + 1] = b3;
                }
            } else {
                bArr = new byte[length];
                for (int i5 = 0; i5 < split.length; i5++) {
                    int zza3 = zzazr.zza(split[i5]);
                    bArr[i5] = (byte) ((zza3 >> 24) ^ (((zza3 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) ^ ((zza3 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)) ^ ((zza3 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE)));
                }
            }
            bArr2 = bArr;
        }
        this.f4651d = c();
        synchronized (this.f4648b) {
            try {
                MessageDigest messageDigest = this.f4651d;
                if (messageDigest == null) {
                    return new byte[0];
                }
                messageDigest.reset();
                this.f4651d.update(bArr2);
                byte[] digest = this.f4651d.digest();
                int length2 = digest.length;
                if (length2 <= 4) {
                    i = length2;
                }
                byte[] bArr3 = new byte[i];
                System.arraycopy(digest, 0, bArr3, 0, i);
                return bArr3;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
