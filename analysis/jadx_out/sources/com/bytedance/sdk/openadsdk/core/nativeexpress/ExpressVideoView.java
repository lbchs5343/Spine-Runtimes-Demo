package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;

/* loaded from: classes3.dex */
public class ExpressVideoView extends NativeVideoTsView implements View.OnClickListener {

    /* renamed from: d, reason: collision with root package name */
    public ImageView f3203d;
    protected int dq;
    private boolean i;
    private boolean k;
    private boolean le;

    public ExpressVideoView(Context context, j jVar, String str, boolean z) {
        super(context, jVar, false, false, str, false, false);
        this.i = false;
        if ("draw_ad".equals(str)) {
            this.i = true;
        }
        this.le = z;
        setOnClickListener(this);
        setNeedNativeVideoPlayBtnVisible(false);
    }

    private void i() {
        no();
        RelativeLayout relativeLayout = this.o;
        if (relativeLayout != null) {
            if (relativeLayout.getVisibility() == 0) {
                return;
            }
            com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.p)).dq(this.no);
            dq(this.no, pa.d(this.p));
        }
        ia();
    }

    private void ia() {
        ce.dq((View) this.o, 0);
        ce.dq((View) this.no, 0);
        ce.dq((View) this.mp, 8);
    }

    public void R_() {
        ImageView imageView = this.mp;
        if (imageView != null) {
            ce.dq((View) imageView, 0);
        }
    }

    public void S_() {
        no();
        ce.dq((View) this.o, 0);
    }

    public boolean T_() {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        return (oxVar == null || oxVar.fw() == null || !this.s.fw().mp()) ? false : true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void d() {
        if (this.i) {
            super.d(this.dq);
        }
    }

    public void d(boolean z) {
        this.k = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public com.bykv.vk.openvk.component.video.api.p.ox dq(Context context, ViewGroup viewGroup, j jVar, String str, boolean z, boolean z2, boolean z3) {
        return this.le ? new com.bytedance.sdk.openadsdk.core.video.nativevideo.d(context, viewGroup, jVar, str, z, z2, z3) : super.dq(context, viewGroup, jVar, str, z, z2, z3);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void dq(boolean z) {
        if (this.k) {
            super.dq(z);
        }
    }

    public com.bykv.vk.openvk.component.video.api.p.ox getVideoController() {
        return this.s;
    }

    public void iw() {
        ImageView imageView = this.ig;
        if (imageView != null) {
            ce.dq((View) imageView, 8);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageView imageView = this.ig;
        if (imageView != null && imageView.getVisibility() == 0) {
            ce.s(this.o);
        }
        d(this.dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        ImageView imageView = this.ig;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowFocusChanged(z);
        } else {
            i();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        ImageView imageView = this.ig;
        if (imageView == null || imageView.getVisibility() != 0) {
            super.onWindowVisibilityChanged(i);
        } else {
            i();
        }
    }

    public void ox() {
        ImageView imageView = this.mp;
        if (imageView != null) {
            ce.dq((View) imageView, 8);
        }
    }

    public void setCanInterruptVideoPlay(boolean z) {
        this.i = z;
    }

    public void setPauseIcon(boolean z) {
        if (this.f3203d == null) {
            this.f3203d = new ImageView(getContext());
            if (com.bytedance.sdk.openadsdk.core.no.ia().op() != null) {
                this.f3203d.setImageBitmap(com.bytedance.sdk.openadsdk.core.no.ia().op());
            } else {
                this.f3203d.setImageDrawable(com.bytedance.sdk.component.utils.r.ox(com.bytedance.sdk.openadsdk.core.wp.getContext(), "tt_new_play_video"));
            }
            this.f3203d.setScaleType(ImageView.ScaleType.FIT_XY);
            int ox = ce.ox(getContext(), this.f3649f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ox, ox);
            layoutParams.gravity = 17;
            this.iw.addView(this.f3203d, layoutParams);
        }
        if (z) {
            this.f3203d.setVisibility(0);
        } else {
            this.f3203d.setVisibility(8);
        }
    }

    public void setShouldCheckNetChange(boolean z) {
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.s(z);
        }
    }

    public void setShowAdInteractionView(boolean z) {
        com.bykv.vk.openvk.component.video.api.p.d cd;
        com.bykv.vk.openvk.component.video.api.p.ox oxVar = this.s;
        if (oxVar == null || (cd = oxVar.cd()) == null) {
            return;
        }
        cd.dq(z);
    }

    public void setVideoPlayStatus(int i) {
        this.dq = i;
    }
}
