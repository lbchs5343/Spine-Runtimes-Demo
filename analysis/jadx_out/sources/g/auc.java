package g;

import android.animation.TypeEvaluator;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public final class auc implements TypeEvaluator {

    /* renamed from: a, reason: collision with root package name */
    public static final auc f10852a = new auc();

    @Override // android.animation.TypeEvaluator
    public final Object evaluate(float f2, Object obj, Object obj2) {
        int intValue = ((Integer) obj).intValue();
        float f3 = ((intValue >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f4 = ((intValue >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f5 = ((intValue >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        int intValue2 = ((Integer) obj2).intValue();
        float f6 = ((intValue2 >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f7 = ((intValue2 >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float f8 = ((intValue2 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f;
        float pow = (float) Math.pow(f4, 2.2d);
        float pow2 = (float) Math.pow(f5, 2.2d);
        float pow3 = (float) Math.pow((intValue & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f, 2.2d);
        float pow4 = (float) Math.pow(f7, 2.2d);
        float pow5 = (float) Math.pow(f8, 2.2d);
        float pow6 = (float) Math.pow((intValue2 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE) / 255.0f, 2.2d);
        float g2 = awf.g(f6, f3, f2, f3);
        float g3 = awf.g(pow4, pow, f2, pow);
        float g4 = awf.g(pow5, pow2, f2, pow2);
        float g5 = awf.g(pow6, pow3, f2, pow3);
        float pow7 = ((float) Math.pow(g3, 0.45454545454545453d)) * 255.0f;
        float pow8 = ((float) Math.pow(g4, 0.45454545454545453d)) * 255.0f;
        return Integer.valueOf(Math.round(((float) Math.pow(g5, 0.45454545454545453d)) * 255.0f) | (Math.round(pow7) << 16) | (Math.round(g2 * 255.0f) << 24) | (Math.round(pow8) << 8));
    }
}
