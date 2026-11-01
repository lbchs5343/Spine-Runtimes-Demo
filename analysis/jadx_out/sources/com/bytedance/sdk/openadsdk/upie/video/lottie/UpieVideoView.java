package com.bytedance.sdk.openadsdk.upie.video.lottie;

import android.animation.Animator;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bykv.vk.openvk.component.video.api.renderview.SSRenderTextureView;
import com.bykv.vk.openvk.component.video.api.renderview.d;
import com.bytedance.sdk.openadsdk.upie.d;
import g.fsj;
import g.gkb;
import g.hcl;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class UpieVideoView extends FrameLayout implements com.bykv.vk.openvk.component.video.api.renderview.d {

    /* renamed from: d, reason: collision with root package name */
    private final gkb f3883d;
    private final com.bykv.vk.openvk.component.video.api.renderview.d dq;
    private final Runnable iw;
    private d.dq mn;
    private final Map<String, Bitmap> ox;
    private final Map<String, Integer> p;
    private final Handler s;

    public UpieVideoView(final Context context) {
        super(context);
        this.ox = new HashMap();
        this.p = new HashMap();
        this.s = new Handler(Looper.getMainLooper());
        this.iw = new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView.4
            @Override // java.lang.Runnable
            public void run() {
                if (UpieVideoView.this.f3883d != null && UpieVideoView.this.f3883d.s()) {
                    UpieVideoView.this.f3883d.invalidate();
                }
                UpieVideoView.this.s.postDelayed(UpieVideoView.this.iw, 40L);
            }
        };
        SSRenderTextureView sSRenderTextureView = new SSRenderTextureView(context);
        this.dq = sSRenderTextureView;
        addView(sSRenderTextureView.getView());
        sSRenderTextureView.getView().setTranslationX(2.1474836E9f);
        gkb gkbVar = new gkb(context);
        this.f3883d = gkbVar;
        gkbVar.setImageAssetDelegate(new fsj() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView.1
            @Override // g.fsj
            public Bitmap dq(hcl hclVar) {
                if (hclVar != null) {
                    String str = hclVar.f19222c;
                    if (TextUtils.isEmpty(str) || (str.startsWith("${") && str.endsWith("}"))) {
                        return null;
                    }
                    Bitmap bitmap = (Bitmap) UpieVideoView.this.ox.get(str);
                    if (bitmap != null) {
                        return bitmap;
                    }
                    UpieVideoView.this.dq(context, str, hclVar.f19224e, hclVar.h);
                }
                return null;
            }
        });
        gkbVar.setView(sSRenderTextureView.getView());
        gkbVar.setRepeatMode(1);
        gkbVar.setRepeatCount(-1);
        gkbVar.setScaleType(ImageView.ScaleType.FIT_CENTER);
        gkbVar.setClickable(false);
        gkbVar.dq(new Animator.AnimatorListener() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView.2
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animator) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animator) {
                if (UpieVideoView.this.f3883d != null) {
                    UpieVideoView.this.f3883d.d(this);
                }
                UpieVideoView.this.p();
            }
        });
        gkbVar.getViewTreeObserver().addOnWindowAttachListener(new ViewTreeObserver.OnWindowAttachListener() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView.3
            @Override // android.view.ViewTreeObserver.OnWindowAttachListener
            public void onWindowAttached() {
            }

            @Override // android.view.ViewTreeObserver.OnWindowAttachListener
            public void onWindowDetached() {
                if (UpieVideoView.this.f3883d != null) {
                    UpieVideoView.this.f3883d.getViewTreeObserver().removeOnWindowAttachListener(this);
                }
                UpieVideoView.this.ox();
            }
        });
        addView(gkbVar, new FrameLayout.LayoutParams(-1, -2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(Context context, final String str, final int i, final int i2) {
        Integer num = this.p.get(str);
        if (num == null || num.intValue() != 1) {
            this.p.put(str, 1);
            com.bytedance.sdk.openadsdk.upie.d.dq().dq(context, str, new d.dq<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView.5
                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(int i3, String str2) {
                    UpieVideoView.this.p.put(str, 2);
                }

                @Override // com.bytedance.sdk.openadsdk.upie.d.dq
                public void dq(Bitmap bitmap) {
                    if (bitmap != null) {
                        if (bitmap.getWidth() != i || bitmap.getHeight() != i2) {
                            bitmap = Bitmap.createScaledBitmap(bitmap, i, i2, false);
                        }
                        UpieVideoView.this.ox.put(str, bitmap);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        this.s.removeCallbacksAndMessages(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        ox();
        if (this.f3883d != null) {
            this.s.postDelayed(this.iw, 40L);
        }
    }

    public void d() {
        com.bytedance.sdk.openadsdk.upie.dq.dq.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView.7
            @Override // java.lang.Runnable
            public void run() {
                UpieVideoView.this.ox();
            }
        });
    }

    public void dq() {
        com.bytedance.sdk.openadsdk.upie.dq.dq.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.upie.video.lottie.UpieVideoView.6
            @Override // java.lang.Runnable
            public void run() {
                UpieVideoView.this.p();
            }
        });
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public void dq(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = i2;
        layoutParams.width = i;
        setLayoutParams(layoutParams);
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public void dq(com.bykv.vk.openvk.component.video.api.renderview.dq dqVar) {
        com.bykv.vk.openvk.component.video.api.renderview.d dVar = this.dq;
        if (dVar != null) {
            dVar.dq(dqVar);
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public SurfaceHolder getHolder() {
        return null;
    }

    public gkb getLottieAnimationView() {
        return this.f3883d;
    }

    @Override // com.bykv.vk.openvk.component.video.api.renderview.d
    public View getView() {
        return this;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        gkb gkbVar = this.f3883d;
        if (gkbVar != null) {
            gkbVar.invalidate();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
    }

    public void setWindowVisibilityChangedListener(d.dq dqVar) {
        this.mn = dqVar;
    }
}
