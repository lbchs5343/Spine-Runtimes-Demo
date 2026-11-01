package com.bykv.vk.component.ttvideo.playerwrapper;

import android.content.Context;
import android.media.AudioManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class PlayerSetting {
    private final Context mContext;
    private float mCurrentPlayerVolume = 1.0f;
    private float mLastVolume;
    private MediaPlayer mPlayer;

    public PlayerSetting(Context context, MediaPlayer mediaPlayer) {
        this.mPlayer = mediaPlayer;
        this.mContext = context;
    }

    public float getMaxVolume() {
        Context context = this.mContext;
        if (context == null) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
        return (audioManager != null ? audioManager.getStreamMaxVolume(3) : 0) >= 0 ? r0 : 0;
    }

    public float getPlayerVolume() {
        return this.mCurrentPlayerVolume;
    }

    public float getVolume() {
        Context context = this.mContext;
        if (context == null) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        AudioManager audioManager = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
        return (audioManager != null ? audioManager.getStreamVolume(3) : 0) >= 0 ? r0 : 0;
    }

    public boolean isMute() {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer == null) {
            return false;
        }
        return mediaPlayer.isOSPlayer() ? getVolume() < 0.001f : this.mPlayer.isMute();
    }

    public void setMute(boolean z) {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer == null) {
            return;
        }
        if (!mediaPlayer.isOSPlayer()) {
            this.mPlayer.setIsMute(z);
            return;
        }
        float maxVolume = getMaxVolume();
        if (maxVolume > TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            this.mLastVolume = getVolume() / maxVolume;
        }
        if (z) {
            this.mPlayer.setVolume(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            return;
        }
        MediaPlayer mediaPlayer2 = this.mPlayer;
        float f2 = this.mLastVolume;
        mediaPlayer2.setVolume(f2, f2);
    }

    public void setPlayer(MediaPlayer mediaPlayer) {
        this.mPlayer = mediaPlayer;
    }

    public void setPlayerVolume(float f2) {
        MediaPlayer mediaPlayer = this.mPlayer;
        if (mediaPlayer == null) {
            return;
        }
        if (f2 < TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        } else if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        this.mCurrentPlayerVolume = f2;
        mediaPlayer.setVolume(f2, f2);
    }

    public void setVolume(float f2) {
        AudioManager audioManager;
        if (this.mPlayer == null || (audioManager = (AudioManager) this.mContext.getSystemService(MediaFormat.KEY_AUDIO)) == null) {
            return;
        }
        audioManager.setStreamVolume(3, (int) f2, 0);
    }
}
