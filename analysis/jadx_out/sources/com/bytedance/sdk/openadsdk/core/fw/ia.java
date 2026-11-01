package com.bytedance.sdk.openadsdk.core.fw;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class ia {

    /* renamed from: d, reason: collision with root package name */
    private mn f2867d;
    private int dq = -1;
    private boolean iw = false;
    private int mn = -1;
    private dq ox;
    private final Context p;
    private final AudioManager s;

    public static class dq extends BroadcastReceiver {
        private WeakReference<ia> dq;

        public dq(ia iaVar) {
            this.dq = new WeakReference<>(iaVar);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ia iaVar;
            mn ox;
            int d2;
            try {
                if (!"android.media.VOLUME_CHANGED_ACTION".equals(intent.getAction()) || intent.getIntExtra("android.media.EXTRA_VOLUME_STREAM_TYPE", -1) != 3 || (iaVar = this.dq.get()) == null || (ox = iaVar.ox()) == null || (d2 = iaVar.d()) == iaVar.dq()) {
                    return;
                }
                iaVar.dq(d2);
                if (d2 >= 0) {
                    ox.dq(d2);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public ia(Context context) {
        this.p = context;
        this.s = (AudioManager) context.getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO);
    }

    public int d() {
        try {
            AudioManager audioManager = this.s;
            if (audioManager != null) {
                return audioManager.getStreamVolume(3);
            }
            return -1;
        } catch (Throwable unused) {
            return -1;
        }
    }

    public int dq() {
        return this.mn;
    }

    public void dq(int i) {
        this.mn = i;
    }

    public void dq(mn mnVar) {
        this.f2867d = mnVar;
    }

    public mn ox() {
        return this.f2867d;
    }

    public void registerReceiver() {
        if (this.iw) {
            return;
        }
        try {
            this.ox = new dq(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.media.VOLUME_CHANGED_ACTION");
            this.p.registerReceiver(this.ox, intentFilter);
            this.iw = true;
        } catch (Throwable unused) {
        }
    }

    public void unregisterReceiver() {
        if (this.iw) {
            try {
                this.p.unregisterReceiver(this.ox);
                this.f2867d = null;
                this.iw = false;
            } catch (Throwable unused) {
            }
        }
    }
}
