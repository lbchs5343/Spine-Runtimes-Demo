package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class zzcq extends zzcn {
    /* JADX WARN: Removed duplicated region for block: B:14:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e8 A[ADDED_TO_REGION, LOOP:6: B:42:0x00e8->B:43:0x00ea, LOOP_START, PHI: r0
      0x00e8: PHI (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:13:0x003d, B:43:0x00ea] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.google.android.gms.internal.ads.zzcm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void zze(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        int i3 = this.f5355c.zzd;
        if (i3 != 3) {
            if (i3 != 4) {
                if (i3 != 21) {
                    if (i3 != 22) {
                        if (i3 != 268435456) {
                            if (i3 != 1342177280) {
                                if (i3 != 1610612736) {
                                    throw new IllegalStateException();
                                }
                            }
                        }
                        ByteBuffer h = h(i2);
                        i = this.f5355c.zzd;
                        if (i == 3) {
                            while (position < limit) {
                                h.put((byte) 0);
                                h.put((byte) ((byteBuffer.get(position) & 255) - 128));
                                position++;
                            }
                        } else if (i == 4) {
                            while (position < limit) {
                                short max = (short) (Math.max(-1.0f, Math.min(byteBuffer.getFloat(position), 1.0f)) * 32767.0f);
                                h.put((byte) (max & 255));
                                h.put((byte) ((max >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
                                position += 4;
                            }
                        } else if (i == 21) {
                            while (position < limit) {
                                h.put(byteBuffer.get(position + 1));
                                h.put(byteBuffer.get(position + 2));
                                position += 3;
                            }
                        } else if (i == 22) {
                            while (position < limit) {
                                h.put(byteBuffer.get(position + 2));
                                h.put(byteBuffer.get(position + 3));
                                position += 4;
                            }
                        } else if (i == 268435456) {
                            while (position < limit) {
                                h.put(byteBuffer.get(position + 1));
                                h.put(byteBuffer.get(position));
                                position += 2;
                            }
                        } else if (i == 1342177280) {
                            while (position < limit) {
                                h.put(byteBuffer.get(position + 1));
                                h.put(byteBuffer.get(position));
                                position += 3;
                            }
                        } else {
                            if (i != 1610612736) {
                                throw new IllegalStateException();
                            }
                            while (position < limit) {
                                h.put(byteBuffer.get(position + 1));
                                h.put(byteBuffer.get(position));
                                position += 4;
                            }
                        }
                        byteBuffer.position(byteBuffer.limit());
                        h.flip();
                    }
                }
                i2 /= 3;
            }
            i2 /= 2;
            ByteBuffer h2 = h(i2);
            i = this.f5355c.zzd;
            if (i == 3) {
            }
            byteBuffer.position(byteBuffer.limit());
            h2.flip();
        }
        i2 += i2;
        ByteBuffer h22 = h(i2);
        i = this.f5355c.zzd;
        if (i == 3) {
        }
        byteBuffer.position(byteBuffer.limit());
        h22.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck zzi(zzck zzckVar) throws zzcl {
        int i = zzckVar.zzd;
        if (i != 3) {
            if (i == 2) {
                return zzck.zza;
            }
            if (i != 268435456 && i != 21 && i != 1342177280 && i != 22 && i != 1610612736 && i != 4) {
                throw new zzcl("Unhandled input format:", zzckVar);
            }
        }
        return new zzck(zzckVar.zzb, zzckVar.zzc, 2);
    }
}
