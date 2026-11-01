package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class NativeDrawVideoTsView extends NativeVideoTsView implements View.OnClickListener {

    /* renamed from: d, reason: collision with root package name */
    private int f3645d;
    private boolean dq;

    public NativeDrawVideoTsView(Context context, j jVar) {
        super(context, jVar);
        this.dq = false;
        setOnClickListener(this);
        this.f3645d = getResources().getConfiguration().orientation;
    }

    public NativeDrawVideoTsView(Context context, j jVar, String str, boolean z, boolean z2) {
        super(context, jVar, str, z, z2);
        this.dq = false;
        setOnClickListener(this);
        this.f3645d = getResources().getConfiguration().orientation;
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

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void d() {
        if (this.dq) {
            super.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public com.bykv.vk.openvk.component.video.api.p.ox dq(Context context, ViewGroup viewGroup, j jVar, String str, boolean z, boolean z2, boolean z3) {
        return new d(context, viewGroup, jVar, str, z, z2, z3);
    }

    public void dq(Bitmap bitmap, int i) {
        no.ia().dq(bitmap);
        this.f3649f = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void mn() {
        this.jy = "draw_ad";
        super.mn();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        ImageView imageView = this.ig;
        if (imageView != null && imageView.getVisibility() == 0) {
            ce.s(this.o);
        }
        d();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        int i = this.f3645d;
        int i2 = configuration.orientation;
        if (i == i2) {
            return;
        }
        this.f3645d = i2;
        ce.dq(this, new ce.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeDrawVideoTsView.1
            @Override // com.bytedance.sdk.openadsdk.core.ir.ce.dq
            public void dq(View view) {
                NativeDrawVideoTsView nativeDrawVideoTsView = NativeDrawVideoTsView.this;
                if (nativeDrawVideoTsView.s == null) {
                    return;
                }
                NativeDrawVideoTsView.this.dq(nativeDrawVideoTsView.getWidth(), NativeDrawVideoTsView.this.getHeight());
            }
        });
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

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView
    public void p() {
        int i = getResources().getConfiguration().orientation;
        if (this.f3645d == i) {
            super.p();
        } else {
            this.f3645d = i;
            ce.dq(this, new ce.dq() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeDrawVideoTsView.2
                @Override // com.bytedance.sdk.openadsdk.core.ir.ce.dq
                public void dq(View view) {
                    NativeDrawVideoTsView nativeDrawVideoTsView = NativeDrawVideoTsView.this;
                    if (nativeDrawVideoTsView.s == null) {
                        return;
                    }
                    NativeDrawVideoTsView.this.dq(nativeDrawVideoTsView.getWidth(), NativeDrawVideoTsView.this.getHeight());
                    NativeDrawVideoTsView.super.p();
                }
            });
        }
    }

    public void setCanInterruptVideoPlay(boolean z) {
        this.dq = z;
    }
}
