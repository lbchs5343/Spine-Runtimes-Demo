package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public final class zzfnn extends ContentObserver {

    /* renamed from: a, reason: collision with root package name */
    public final zzfnz f8062a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f8063b;

    /* renamed from: c, reason: collision with root package name */
    public final AudioManager f8064c;

    /* renamed from: d, reason: collision with root package name */
    public float f8065d;

    public zzfnn(Handler handler, Context context, zzfnl zzfnlVar, zzfnz zzfnzVar) {
        super(handler);
        this.f8063b = context;
        this.f8064c = (AudioManager) context.getSystemService(MediaFormat.KEY_AUDIO);
        this.f8062a = zzfnzVar;
    }

    public final float e() {
        AudioManager audioManager = this.f8064c;
        int streamVolume = audioManager.getStreamVolume(3);
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        float f2 = TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        if (streamMaxVolume > 0) {
            if (streamVolume <= 0) {
                return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
            }
            f2 = streamVolume / streamMaxVolume;
            if (f2 > 1.0f) {
                return 1.0f;
            }
        }
        return f2;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float e2 = e();
        if (e2 != this.f8065d) {
            this.f8065d = e2;
            this.f8062a.zze(e2);
        }
    }

    public final void zza() {
        float e2 = e();
        this.f8065d = e2;
        this.f8062a.zze(e2);
        this.f8063b.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void zzb() {
        this.f8063b.getContentResolver().unregisterContentObserver(this);
    }
}
