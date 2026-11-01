package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.ehb;

/* loaded from: classes3.dex */
public final class zzccj implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5181a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f5182b;

    /* renamed from: c, reason: collision with root package name */
    public final AudioManager f5183c;

    /* renamed from: d, reason: collision with root package name */
    public float f5184d = 1.0f;

    /* renamed from: e, reason: collision with root package name */
    public final ehb f5185e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f5186f;

    public zzccj(Context context, ehb ehbVar) {
        this.f5183c = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
        this.f5185e = ehbVar;
    }

    public final void g() {
        boolean z = this.f5181a;
        ehb ehbVar = this.f5185e;
        AudioManager audioManager = this.f5183c;
        if (!z || this.f5182b || this.f5184d <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            if (this.f5186f) {
                if (audioManager != null) {
                    this.f5186f = audioManager.abandonAudioFocus(this) == 0;
                }
                ehbVar.zzn();
                return;
            }
            return;
        }
        if (this.f5186f) {
            return;
        }
        if (audioManager != null) {
            this.f5186f = audioManager.requestAudioFocus(this, 3, 2) == 1;
        }
        ehbVar.zzn();
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.f5186f = i > 0;
        this.f5185e.zzn();
    }

    public final float zza() {
        return this.f5186f ? this.f5182b ? TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT : this.f5184d : TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
    }

    public final void zzb() {
        this.f5181a = true;
        g();
    }

    public final void zzc() {
        this.f5181a = false;
        g();
    }

    public final void zzd(boolean z) {
        this.f5182b = z;
        g();
    }

    public final void zze(float f2) {
        this.f5184d = f2;
        g();
    }
}
