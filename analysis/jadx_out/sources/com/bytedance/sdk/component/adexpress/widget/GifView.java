package com.bytedance.sdk.component.adexpress.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.ImageDecoder;
import android.graphics.Movie;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.SystemClock;
import android.view.View;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.p.p;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.iw;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.agk;
import java.io.File;
import java.io.FileOutputStream;

@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
public class GifView extends ImageView {

    /* renamed from: d, reason: collision with root package name */
    private Movie f1806d;
    private int dq;
    private float ia;
    private int ig;
    private boolean iw;
    private boolean jy;
    private float kk;
    private boolean mn;
    private volatile boolean mp;
    private int no;
    private float o;
    private long ox;
    private int p;
    private boolean q;
    private AnimatedImageDrawable s;

    public interface dq {
        void dq(Drawable drawable);
    }

    public GifView(Context context) {
        super(context);
        this.iw = Build.VERSION.SDK_INT >= 28;
        this.mn = false;
        this.q = true;
        this.jy = true;
        dq();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageDecoder.Source d(int i) {
        ImageDecoder.Source createSource;
        if (Build.VERSION.SDK_INT < 28) {
            return null;
        }
        createSource = ImageDecoder.createSource(r.dq(getContext()), i);
        return createSource;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ImageDecoder.Source d(byte[] bArr) {
        FileOutputStream fileOutputStream;
        File dq2;
        ImageDecoder.Source createSource;
        try {
            try {
                dq2 = dq(getContext(), com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().ig() ? "GIF_AD_CACHE/" : "/GIF_CACHE/", "TT_GIF_FILE");
                fileOutputStream = new FileOutputStream(dq2);
            } catch (Throwable th) {
                th = th;
                fileOutputStream = null;
            }
            try {
                fileOutputStream.write(bArr, 0, bArr.length);
                if (Build.VERSION.SDK_INT < 28) {
                    fileOutputStream.close();
                    return null;
                }
                createSource = ImageDecoder.createSource(dq2);
                try {
                    fileOutputStream.close();
                } catch (Throwable unused) {
                }
                return createSource;
            } catch (Throwable th2) {
                th = th2;
                try {
                    ig.d("GifView", "GifView  getSourceByFile fail : ", th);
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    return null;
                } catch (Throwable th3) {
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable unused3) {
        }
    }

    private Movie dq(int i) {
        try {
            return Movie.decodeStream(r.dq(getContext()).openRawResource(i));
        } catch (Throwable unused) {
            return null;
        }
    }

    private Movie dq(byte[] bArr) {
        try {
            return Movie.decodeByteArray(bArr, 0, bArr.length);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable dq(ImageDecoder.Source source) {
        Drawable decodeDrawable;
        try {
            if (Build.VERSION.SDK_INT < 28) {
                return null;
            }
            decodeDrawable = ImageDecoder.decodeDrawable(source);
            return decodeDrawable;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static File dq(Context context, String str, String str2) {
        int no = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().no();
        boolean ig = com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().ox().ig();
        if (no == 1) {
            ig.p("splashLoadAd", "视频存储使用内部存储");
            return iw.d(context, ig, str, str2);
        }
        ig.p("splashLoadAd", "视频存储使用外存储");
        return iw.dq(context, ig, str, str2);
    }

    private void dq(final int i, final dq dqVar) {
        if (i == -1) {
            return;
        }
        p.dq(new kk("createGifApi28WithByteArrayBySafely") { // from class: com.bytedance.sdk.component.adexpress.widget.GifView.3
            @Override // java.lang.Runnable
            public void run() {
                dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    GifView gifView = GifView.this;
                    dqVar2.dq(gifView.dq(gifView.d(i)));
                }
            }
        }, 5);
    }

    private void dq(Canvas canvas) {
        Movie movie = this.f1806d;
        if (movie == null) {
            return;
        }
        movie.setTime(this.p);
        float f2 = this.o;
        if (f2 == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            canvas.scale(1.0f, 1.0f);
            this.f1806d.draw(canvas, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        } else {
            canvas.scale(f2, f2);
            Movie movie2 = this.f1806d;
            float f3 = this.ia;
            float f4 = this.o;
            movie2.draw(canvas, f3 / f4, this.kk / f4);
        }
        canvas.restore();
    }

    private void dq(final byte[] bArr, final dq dqVar) {
        if (bArr == null) {
            return;
        }
        p.dq(new kk("createGifApi28WithByteArrayBySafely") { // from class: com.bytedance.sdk.component.adexpress.widget.GifView.4
            @Override // java.lang.Runnable
            public void run() {
                dq dqVar2 = dqVar;
                if (dqVar2 != null) {
                    GifView gifView = GifView.this;
                    dqVar2.dq(gifView.dq(gifView.d(bArr)));
                }
            }
        }, 5);
    }

    private void ox() {
        if (this.f1806d == null || this.iw || !this.q) {
            return;
        }
        postInvalidateOnAnimation();
    }

    private void p() {
        if (this.f1806d == null) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        if (this.ox == 0) {
            this.ox = uptimeMillis;
        }
        int duration = this.f1806d.duration();
        if (duration == 0) {
            duration = 1000;
        }
        if (this.jy || Math.abs(duration - this.p) >= 60) {
            this.p = (int) ((uptimeMillis - this.ox) % duration);
        } else {
            this.p = duration;
            this.mp = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDrawable(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        setImageDrawable(drawable);
        if (Build.VERSION.SDK_INT >= 28 && agk.a(drawable)) {
            AnimatedImageDrawable w = agk.w(drawable);
            this.s = w;
            if (!this.mp) {
                w.start();
            }
            if (!this.jy) {
                w.setRepeatCount(0);
            }
        }
        ox();
    }

    public void d() {
        boolean isRunning;
        if (this.f1806d == null || !this.mp) {
            return;
        }
        this.mp = false;
        if (!this.iw) {
            this.ox = SystemClock.uptimeMillis() - this.p;
            invalidate();
            return;
        }
        AnimatedImageDrawable animatedImageDrawable = this.s;
        if (animatedImageDrawable != null) {
            isRunning = animatedImageDrawable.isRunning();
            if (isRunning) {
                return;
            }
            this.s.start();
        }
    }

    public void dq() {
        if (this.iw) {
            return;
        }
        setLayerType(1, null);
    }

    public void dq(int i, boolean z) {
        this.mp = z;
        this.dq = i;
        if (i == -1) {
            return;
        }
        if (this.iw) {
            dq(i, new dq() { // from class: com.bytedance.sdk.component.adexpress.widget.GifView.1
                @Override // com.bytedance.sdk.component.adexpress.widget.GifView.dq
                public void dq(final Drawable drawable) {
                    GifView.this.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.GifView.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GifView.this.setDrawable(drawable);
                        }
                    });
                }
            });
        } else {
            this.f1806d = dq(i);
        }
    }

    public void dq(byte[] bArr, boolean z) {
        this.mp = z;
        if (bArr == null) {
            return;
        }
        if (this.iw) {
            dq(bArr, new dq() { // from class: com.bytedance.sdk.component.adexpress.widget.GifView.2
                @Override // com.bytedance.sdk.component.adexpress.widget.GifView.dq
                public void dq(final Drawable drawable) {
                    GifView.this.post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.widget.GifView.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            GifView.this.setDrawable(drawable);
                        }
                    });
                }
            });
        } else {
            this.f1806d = dq(bArr);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f1806d == null || this.iw) {
            super.onDraw(canvas);
            return;
        }
        try {
            if (this.mp) {
                dq(canvas);
                return;
            }
            p();
            dq(canvas);
            ox();
        } catch (Throwable th) {
            ig.d("GifView", "onDraw->Throwable->", th);
        }
    }

    @Override // android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        if (this.f1806d != null && !this.iw) {
            this.ia = (getWidth() - this.no) / 2.0f;
            this.kk = (getHeight() - this.ig) / 2.0f;
        }
        this.q = getVisibility() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        Movie movie;
        int size;
        int size2;
        super.onMeasure(i, i2);
        if (this.iw || (movie = this.f1806d) == null) {
            return;
        }
        int width = movie.width();
        int height = this.f1806d.height();
        float max = 1.0f / Math.max((View.MeasureSpec.getMode(i) == 0 || width <= (size2 = View.MeasureSpec.getSize(i))) ? 1.0f : width / size2, (View.MeasureSpec.getMode(i2) == 0 || height <= (size = View.MeasureSpec.getSize(i2))) ? 1.0f : height / size);
        this.o = max;
        int i3 = (int) (width * max);
        this.no = i3;
        int i4 = (int) (height * max);
        this.ig = i4;
        setMeasuredDimension(i3, i4);
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onScreenStateChanged(int i) {
        super.onScreenStateChanged(i);
        if (this.f1806d != null) {
            this.q = i == 1;
            ox();
        }
    }

    @Override // android.view.View
    @SuppressLint({"NewApi"})
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.f1806d != null) {
            this.q = i == 0;
            ox();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (this.f1806d != null) {
            this.q = i == 0;
            ox();
        }
    }

    public void setRepeatConfig(boolean z) {
        AnimatedImageDrawable animatedImageDrawable;
        this.jy = z;
        if (z) {
            return;
        }
        try {
            if (Build.VERSION.SDK_INT < 28 || (animatedImageDrawable = this.s) == null) {
                return;
            }
            animatedImageDrawable.setRepeatCount(0);
        } catch (Exception e2) {
            ig.d("GifView", "setRepeatConfig error", e2);
        }
    }
}
