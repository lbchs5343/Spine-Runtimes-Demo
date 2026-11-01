package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;

/* loaded from: classes.dex */
public enum fwv {
    SAME_FRAME(0, 63),
    SAME_LOCALS_1_STACK(64, TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE),
    SAME_LOCALS_1_STACK_EXTENDED(MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_LOOPER_TIMEOUT, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_LOOPER_TIMEOUT),
    CHOP(MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_INTERRUPT, MediaPlayer.MEDIA_PLAYER_OPTION_TT_HLS_DRM),
    SAME_FRAME_EXTENDED(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR, MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_PROCESSOR_ADDR),
    APPEND(MediaPlayer.MEDIA_PLAYER_OPTION_HW_DEC_DROP_NON_REF, MediaPlayer.MEDIA_PLAYER_ADAPTIVE_WORK_AROUND_MODE),
    FULL(MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE, MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);


    /* renamed from: a, reason: collision with root package name */
    public static final fwv[] f17549a;
    private final int end;
    private final int start;

    static {
        fwv[] fwvVarArr = new fwv[256];
        for (fwv fwvVar : values()) {
            for (int i = fwvVar.start; i <= fwvVar.end; i++) {
                fwvVarArr[i] = fwvVar;
            }
        }
        f17549a = fwvVarArr;
    }

    fwv(int i, int i2) {
        this.start = i;
        this.end = i2;
    }
}
