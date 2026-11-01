package com.bykv.vk.openvk.component.video.dq.p;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.Surface;
import android.view.SurfaceHolder;
import com.bytedance.component.sdk.annotation.RequiresApi;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.io.FileDescriptor;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public class d extends com.bykv.vk.openvk.component.video.dq.p.dq {

    /* renamed from: d, reason: collision with root package name */
    private final MediaPlayer f563d;
    private final Object iw;
    private volatile boolean mn;
    private final dq ox;
    private com.bykv.vk.openvk.component.video.dq.dq.dq p;
    private Surface s;

    public static class dq implements MediaPlayer.OnBufferingUpdateListener, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnInfoListener, MediaPlayer.OnPreparedListener, MediaPlayer.OnSeekCompleteListener, MediaPlayer.OnVideoSizeChangedListener {
        private final WeakReference<d> dq;

        public dq(d dVar) {
            this.dq = new WeakReference<>(dVar);
        }

        @Override // android.media.MediaPlayer.OnBufferingUpdateListener
        public void onBufferingUpdate(MediaPlayer mediaPlayer, int i) {
            try {
                d dVar = this.dq.get();
                if (dVar != null) {
                    dVar.dq(i);
                }
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onBufferingUpdate error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            try {
                d dVar = this.dq.get();
                if (dVar != null) {
                    dVar.ox();
                }
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onCompletion error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            try {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO", "onError: ", Integer.valueOf(i), Integer.valueOf(i2));
                d dVar = this.dq.get();
                if (dVar != null) {
                    if (dVar.dq(i, i2)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onError error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnInfoListener
        public boolean onInfo(MediaPlayer mediaPlayer, int i, int i2) {
            try {
                com.bykv.vk.openvk.component.video.api.iw.ox.dq("CSJ_VIDEO", "onInfo: ");
                d dVar = this.dq.get();
                if (dVar != null) {
                    if (dVar.d(i, i2)) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onInfo error: ", th);
                return false;
            }
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            try {
                d dVar = this.dq.get();
                if (dVar != null) {
                    dVar.d();
                }
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onPrepared error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnSeekCompleteListener
        public void onSeekComplete(MediaPlayer mediaPlayer) {
            try {
                d dVar = this.dq.get();
                if (dVar != null) {
                    dVar.p();
                }
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onSeekComplete error: ", th);
            }
        }

        @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
        public void onVideoSizeChanged(MediaPlayer mediaPlayer, int i, int i2) {
            try {
                d dVar = this.dq.get();
                if (dVar != null) {
                    dVar.dq(i, i2, 1, 1);
                }
            } catch (Throwable th) {
                com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "AndroidMediaPlayerListenerHolder.onVideoSizeChanged error: ", th);
            }
        }
    }

    public d() {
        MediaPlayer mediaPlayer;
        Object obj = new Object();
        this.iw = obj;
        synchronized (obj) {
            mediaPlayer = new MediaPlayer();
            this.f563d = mediaPlayer;
        }
        dq(mediaPlayer);
        try {
            mediaPlayer.setAudioStreamType(3);
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "setAudioStreamType error: ", th);
        }
        this.ox = new dq(this);
        f();
    }

    private void dq(MediaPlayer mediaPlayer) {
        if (Build.VERSION.SDK_INT >= 28) {
            return;
        }
        try {
            Class<?> cls = Class.forName("android.media.MediaTimeProvider");
            Class<?> cls2 = Class.forName("android.media.SubtitleController");
            Class<?> cls3 = Class.forName("android.media.SubtitleController$Anchor");
            Object newInstance = cls2.getConstructor(Context.class, cls, Class.forName("android.media.SubtitleController$Listener")).newInstance(com.bykv.vk.openvk.component.video.api.ox.getContext(), null, null);
            Field declaredField = cls2.getDeclaredField("mHandler");
            declaredField.setAccessible(true);
            try {
                declaredField.set(newInstance, new Handler());
                declaredField.setAccessible(false);
                mediaPlayer.getClass().getMethod("setSubtitleAnchor", cls2, cls3).invoke(mediaPlayer, newInstance, null);
            } catch (Throwable th) {
                try {
                    com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "subtitleInstance error: ", th);
                } finally {
                    declaredField.setAccessible(false);
                }
            }
        } catch (Throwable th2) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "setSubtitleController error: ", th2);
        }
    }

    private void f() {
        this.f563d.setOnPreparedListener(this.ox);
        this.f563d.setOnBufferingUpdateListener(this.ox);
        this.f563d.setOnCompletionListener(this.ox);
        this.f563d.setOnSeekCompleteListener(this.ox);
        this.f563d.setOnVideoSizeChangedListener(this.ox);
        this.f563d.setOnErrorListener(this.ox);
        this.f563d.setOnInfoListener(this.ox);
    }

    private void fw() {
        try {
            Surface surface = this.s;
            if (surface != null) {
                surface.release();
                this.s = null;
            }
        } catch (Throwable unused) {
        }
    }

    private void jy() {
        com.bykv.vk.openvk.component.video.dq.dq.dq dqVar;
        if (Build.VERSION.SDK_INT < 23 || (dqVar = this.p) == null) {
            return;
        }
        try {
            dqVar.close();
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "releaseMediaDataSource error: ", th);
        }
        this.p = null;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void d(boolean z) throws Throwable {
        this.f563d.setScreenOnWhilePlaying(z);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void dq(long j, int i) throws Throwable {
        if (Build.VERSION.SDK_INT < 26) {
            this.f563d.seekTo((int) j);
            return;
        }
        if (i == 0) {
            this.f563d.seekTo((int) j, 0);
            return;
        }
        if (i == 1) {
            this.f563d.seekTo((int) j, 1);
            return;
        }
        if (i == 2) {
            this.f563d.seekTo((int) j, 2);
        } else if (i != 3) {
            this.f563d.seekTo((int) j);
        } else {
            this.f563d.seekTo((int) j, 3);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    @TargetApi(14)
    public void dq(Surface surface) {
        fw();
        this.s = surface;
        this.f563d.setSurface(surface);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void dq(SurfaceHolder surfaceHolder) throws Throwable {
        synchronized (this.iw) {
            try {
                if (!this.mn && surfaceHolder != null && surfaceHolder.getSurface() != null && this.dq) {
                    this.f563d.setDisplay(surfaceHolder);
                }
            } finally {
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    @RequiresApi(api = 23)
    public void dq(com.bykv.vk.openvk.component.video.api.d dVar) throws Throwable {
        PlaybackParams playbackParams;
        PlaybackParams speed;
        if (Build.VERSION.SDK_INT >= 23) {
            playbackParams = this.f563d.getPlaybackParams();
            speed = playbackParams.setSpeed(dVar.dq());
            this.f563d.setPlaybackParams(speed);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    @RequiresApi(api = 23)
    public synchronized void dq(com.bykv.vk.openvk.component.video.api.ox.p pVar) {
        this.p = com.bykv.vk.openvk.component.video.dq.dq.dq.dq(com.bykv.vk.openvk.component.video.api.ox.getContext(), pVar);
        com.bykv.vk.openvk.component.video.dq.dq.d.ox.dq(pVar);
        this.f563d.setDataSource(this.p);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void dq(FileDescriptor fileDescriptor) throws Throwable {
        this.f563d.setDataSource(fileDescriptor);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void dq(String str) throws Throwable {
        Uri parse = Uri.parse(str);
        String scheme = parse.getScheme();
        if (TextUtils.isEmpty(scheme) || !scheme.equalsIgnoreCase("file")) {
            this.f563d.setDataSource(str);
        } else {
            this.f563d.setDataSource(parse.getPath());
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        fw();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void ia() {
        MediaPlayer mediaPlayer = this.f563d;
        if (mediaPlayer != null) {
            mediaPlayer.prepareAsync();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void ig() throws Throwable {
        try {
            this.f563d.reset();
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "reset error: ", th);
        }
        jy();
        dq();
        f();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void iw() throws Throwable {
        this.f563d.stop();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public long kk() {
        try {
            return this.f563d.getCurrentPosition();
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "getCurrentPosition error: ", th);
            return 0L;
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void mn() throws Throwable {
        this.f563d.pause();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public int mp() {
        MediaPlayer mediaPlayer = this.f563d;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoWidth();
        }
        return 0;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void no() throws Throwable {
        synchronized (this.iw) {
            try {
                if (!this.mn) {
                    this.f563d.release();
                    this.mn = true;
                    fw();
                    jy();
                    dq();
                    f();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public long o() {
        try {
            return this.f563d.getDuration();
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("CSJ_VIDEO", "getDuration error: ", th);
            return 0L;
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void ox(boolean z) throws Throwable {
        this.f563d.setLooping(z);
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void p(boolean z) throws Throwable {
        MediaPlayer mediaPlayer = this.f563d;
        if (mediaPlayer == null) {
            return;
        }
        if (z) {
            mediaPlayer.setVolume(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } else {
            mediaPlayer.setVolume(1.0f, 1.0f);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public int q() {
        MediaPlayer mediaPlayer = this.f563d;
        if (mediaPlayer != null) {
            return mediaPlayer.getVideoHeight();
        }
        return 0;
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void s() throws Throwable {
        this.f563d.start();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.p.ox
    public void s(boolean z) {
        try {
            MediaPlayer mediaPlayer = this.f563d;
            if (mediaPlayer != null) {
                mediaPlayer.setLooping(z);
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
