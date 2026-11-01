package com.bytedance.sdk.openadsdk.h;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.core.wp;
import g.ahq;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private AudioFocusRequest f3759d;
    private AudioAttributes dq;
    private AudioManager ox;
    private AudioManager.OnAudioFocusChangeListener p;
    private boolean s;

    public dq() {
        this.s = false;
        boolean k = wp.d().k();
        this.s = k;
        if (k) {
            this.p = new AudioManager.OnAudioFocusChangeListener() { // from class: com.bytedance.sdk.openadsdk.h.dq.1
                @Override // android.media.AudioManager.OnAudioFocusChangeListener
                public void onAudioFocusChange(int i) {
                }
            };
            this.ox = (AudioManager) wp.getContext().getSystemService(MediaFormat.KEY_AUDIO);
        }
    }

    public void d() {
        if (this.s) {
            if (Build.VERSION.SDK_INT >= 26) {
                AudioManager audioManager = this.ox;
                if (audioManager != null) {
                    audioManager.abandonAudioFocusRequest(this.f3759d);
                    return;
                }
                return;
            }
            AudioManager audioManager2 = this.ox;
            if (audioManager2 != null) {
                audioManager2.abandonAudioFocus(this.p);
            }
        }
    }

    public int dq() {
        AudioFocusRequest.Builder willPauseWhenDucked;
        AudioFocusRequest.Builder acceptsDelayedFocusGain;
        AudioFocusRequest.Builder onAudioFocusChangeListener;
        AudioFocusRequest.Builder audioAttributes;
        AudioFocusRequest build;
        int requestAudioFocus;
        if (!this.s) {
            return -1;
        }
        int i = Build.VERSION.SDK_INT;
        this.dq = new AudioAttributes.Builder().setUsage(1).setContentType(2).build();
        if (i < 26) {
            AudioManager audioManager = this.ox;
            if (audioManager != null) {
                return audioManager.requestAudioFocus(this.p, 3, 2);
            }
            return -1;
        }
        willPauseWhenDucked = ahq.b().setWillPauseWhenDucked(true);
        acceptsDelayedFocusGain = willPauseWhenDucked.setAcceptsDelayedFocusGain(true);
        onAudioFocusChangeListener = acceptsDelayedFocusGain.setOnAudioFocusChangeListener(this.p);
        audioAttributes = onAudioFocusChangeListener.setAudioAttributes(this.dq);
        build = audioAttributes.build();
        this.f3759d = build;
        AudioManager audioManager2 = this.ox;
        if (audioManager2 == null) {
            return -1;
        }
        requestAudioFocus = audioManager2.requestAudioFocus(build);
        return requestAudioFocus;
    }
}
