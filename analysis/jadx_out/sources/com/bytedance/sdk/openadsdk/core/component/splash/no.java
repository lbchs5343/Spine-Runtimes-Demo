package com.bytedance.sdk.openadsdk.core.component.splash;

import android.animation.TypeEvaluator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes3.dex */
class no implements TypeEvaluator {
    @Override // android.animation.TypeEvaluator
    public Object evaluate(float f2, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        int i = (intValue >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i2 = (intValue >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i3 = (intValue >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i4 = intValue & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int intValue2 = ((Integer) obj2).intValue();
        return Integer.valueOf(((i + ((int) ((((intValue2 >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) - i) * f2))) << 24) | ((i2 + ((int) ((((intValue2 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) - i2) * f2))) << 16) | ((i3 + ((int) ((((intValue2 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) - i3) * f2))) << 8) | (i4 + ((int) (f2 * ((intValue2 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) - i4)))));
    }
}
