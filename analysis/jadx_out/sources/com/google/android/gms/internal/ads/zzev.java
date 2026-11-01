package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
public class zzev {
    public final int zzd;

    public static String zze(int i) {
        StringBuilder sb = new StringBuilder();
        sb.append((char) ((i >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
        sb.append((char) ((i >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
        sb.append((char) ((i >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
        sb.append((char) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE));
        return sb.toString();
    }

    public String toString() {
        return zze(this.zzd);
    }
}
