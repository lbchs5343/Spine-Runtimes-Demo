package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;

/* loaded from: classes3.dex */
public class SplashExpressBackupView extends BackupView implements ox.InterfaceC0004ox {
    private FrameLayout cd;

    /* renamed from: f, reason: collision with root package name */
    private TextView f3215f;
    private Button fw;
    private com.bytedance.sdk.openadsdk.core.le.dq.d gh;
    private ox.InterfaceC0004ox i;
    private GifView jy;
    private NativeExpressView mp;
    private View q;
    private NativeVideoTsView r;

    public SplashExpressBackupView(Context context) {
        super(context);
        this.dq = context;
        this.s = "splash_ad";
    }

    private View dq(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        LinearLayout linearLayout = new LinearLayout(context);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackground(com.bytedance.sdk.component.utils.r.ox(context, "tt_splash_ad_backup_bg"));
        TextView textView = new TextView(context);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = ce.ox(context, 79.0f);
        textView.setLayoutParams(layoutParams2);
        textView.setText(com.bytedance.sdk.component.utils.r.dq(context, "tt_splash_backup_ad_title"));
        textView.setGravity(17);
        textView.setTextSize(2, 30.0f);
        textView.setTypeface(Typeface.defaultFromStyle(1));
        textView.setTextColor(Color.parseColor("#895434"));
        linearLayout.addView(textView);
        TextView textView2 = new TextView(context);
        this.f3215f = textView2;
        textView2.setId(2114387474);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 218.0f, resources.getDisplayMetrics()), -2);
        layoutParams3.topMargin = ce.ox(context, 31.0f);
        layoutParams3.gravity = 1;
        this.f3215f.setLayoutParams(layoutParams3);
        this.f3215f.setGravity(1);
        this.f3215f.setTextSize(2, 15.0f);
        this.f3215f.setTextColor(Color.parseColor("#895434"));
        this.f3215f.setSingleLine(false);
        linearLayout.addView(this.f3215f);
        GifView gifView = new GifView(context);
        this.jy = gifView;
        gifView.setId(2114387473);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 219.0f, resources.getDisplayMetrics()));
        layoutParams4.topMargin = ce.ox(context, 29.0f);
        layoutParams4.setMarginStart(ce.ox(context, 15.0f));
        layoutParams4.setMarginEnd(ce.ox(context, 15.0f));
        layoutParams4.gravity = 1;
        this.jy.setLayoutParams(layoutParams4);
        this.jy.setScaleType(ImageView.ScaleType.FIT_XY);
        linearLayout.addView(this.jy);
        FrameLayout frameLayout = new FrameLayout(context);
        this.cd = frameLayout;
        frameLayout.setId(2114387472);
        LinearLayout.LayoutParams layoutParams5 = new LinearLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 185.0f, resources.getDisplayMetrics()));
        layoutParams5.setMarginStart(ce.ox(context, 15.0f));
        layoutParams5.setMarginEnd(ce.ox(context, 15.0f));
        this.cd.setLayoutParams(layoutParams5);
        this.cd.setVisibility(8);
        linearLayout.addView(this.cd);
        Button button = new Button(context);
        this.fw = button;
        button.setId(2114387471);
        LinearLayout.LayoutParams layoutParams6 = new LinearLayout.LayoutParams((int) TypedValue.applyDimension(1, 145.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 43.0f, resources.getDisplayMetrics()));
        layoutParams6.topMargin = ce.ox(context, 37.0f);
        layoutParams6.gravity = 1;
        this.fw.setLayoutParams(layoutParams6);
        this.fw.setText(com.bytedance.sdk.component.utils.r.dq(context, "tt_splash_backup_ad_btn"));
        this.fw.setTextColor(Color.parseColor("#ffffff"));
        this.fw.setTypeface(Typeface.defaultFromStyle(1));
        this.fw.setBackground(com.bytedance.sdk.component.utils.r.ox(context, "tt_splash_ad_backup_btn_bg"));
        linearLayout.addView(this.fw);
        return linearLayout;
    }

    private void dq(int i, j jVar) {
        if (!mn()) {
            if (i != 5) {
                ig();
                return;
            } else {
                no();
                return;
            }
        }
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    if (i != 5) {
                        mp();
                        return;
                    }
                }
            }
            if (ia()) {
                mp();
                return;
            } else {
                o();
                return;
            }
        }
        kk();
    }

    private void dq(GifView gifView) {
        ji jiVar = this.f3200d.oh().get(0);
        if (jiVar != null) {
            com.bytedance.sdk.openadsdk.ia.d.dq(jiVar).dq(gifView);
        }
    }

    private boolean ia() {
        j jVar = this.f3200d;
        return jVar != null && jVar.ho() == 2;
    }

    private void ig() {
        NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) dq(this.mp);
        this.r = nativeVideoTsView;
        nativeVideoTsView.setVideoAdInteractionListener(this);
        NativeVideoTsView nativeVideoTsView2 = this.r;
        if (nativeVideoTsView2 == null) {
            return;
        }
        addView(nativeVideoTsView2);
        setExpressBackupListener(this);
    }

    private void iw() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new ViewGroup.LayoutParams(this.iw, this.mn);
        }
        layoutParams.width = this.iw;
        layoutParams.height = this.mn;
        if (layoutParams instanceof FrameLayout.LayoutParams) {
            ((FrameLayout.LayoutParams) layoutParams).gravity = 17;
        }
        setLayoutParams(layoutParams);
        dq(this.f3200d.gv(), this.f3200d);
    }

    private void kk() {
        q();
        this.jy.setVisibility(0);
        this.cd.setVisibility(8);
        ViewGroup.LayoutParams layoutParams = this.jy.getLayoutParams();
        layoutParams.height = ce.ox(this.dq, 291.0f);
        this.jy.setLayoutParams(layoutParams);
        dq(this.jy, this.f3200d, this.gh);
        this.f3215f.setText(this.f3200d.gl());
        if (this.f3200d.sc() != null) {
            ce.dq((View) this.fw, 8);
        } else {
            ce.dq((View) this.fw, 0);
            this.fw.setText(this.f3200d.tu());
            dq((View) this.fw, true);
        }
        setExpressBackupListener(this.q);
    }

    private boolean mn() {
        return !(this.mp instanceof NativeExpressVideoView);
    }

    private void mp() {
        GifView gifView = new GifView(this.dq);
        gifView.setScaleType(ImageView.ScaleType.FIT_XY);
        dq(gifView, this.f3200d, this.gh);
        addView(gifView, new ViewGroup.LayoutParams(-1, -1));
        setExpressBackupListener(this);
    }

    private void no() {
        q();
        this.jy.setVisibility(8);
        this.cd.setVisibility(0);
        if (pa.q(this.f3200d) != null) {
            NativeVideoTsView nativeVideoTsView = (NativeVideoTsView) dq(this.mp);
            this.r = nativeVideoTsView;
            nativeVideoTsView.setVideoAdInteractionListener(this);
            if (this.r == null) {
                return;
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            this.cd.addView(this.r, layoutParams);
        }
        this.f3215f.setText(this.f3200d.gl());
        if (this.f3200d.sc() != null) {
            ce.dq((View) this.fw, 8);
        } else {
            ce.dq((View) this.fw, 0);
            this.fw.setText(this.f3200d.tu());
            dq((View) this.fw, true);
        }
        setExpressBackupListener(this.q);
    }

    private void o() {
        q();
        this.jy.setVisibility(0);
        this.cd.setVisibility(8);
        dq(this.jy, this.f3200d, this.gh);
        this.f3215f.setText(this.f3200d.gl());
        if (this.f3200d.sc() != null) {
            ce.dq((View) this.fw, 8);
        } else {
            ce.dq((View) this.fw, 0);
            this.fw.setText(this.f3200d.tu());
            dq((View) this.fw, true);
        }
        setExpressBackupListener(this.q);
    }

    private void q() {
        View dq = dq(this.dq);
        if (dq == null) {
            return;
        }
        addView(dq);
    }

    private void setExpressBackupListener(View view) {
        j jVar = this.f3200d;
        if (jVar == null || jVar.bu() != 1) {
            return;
        }
        dq(view, true);
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void K_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void L_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void M_() {
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void N_() {
        ox.InterfaceC0004ox interfaceC0004ox = this.i;
        if (interfaceC0004ox != null) {
            interfaceC0004ox.N_();
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.p.ox.InterfaceC0004ox
    public void dq(long j, long j2) {
    }

    public void dq(Drawable drawable, GifView gifView) {
        if (drawable == null || gifView == null) {
            return;
        }
        gifView.setImageDrawable(drawable);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void dq(View view, int i, com.bytedance.sdk.openadsdk.core.r.k kVar) {
        NativeExpressView nativeExpressView = this.mp;
        if (nativeExpressView != null) {
            nativeExpressView.dq(view, i, kVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.BackupView
    public void dq(View view, boolean z) {
        j jVar = this.f3200d;
        if (jVar == null || jVar.sc() == null || this.f3200d.sc().dq() != 1) {
            return;
        }
        super.dq(view, z);
    }

    public void dq(GifView gifView, j jVar, com.bytedance.sdk.openadsdk.core.le.dq.d dVar) {
        Drawable dq;
        if (dVar == null) {
            dq(gifView);
            return;
        }
        if (dVar.s()) {
            dq(dVar.ox(), gifView);
            return;
        }
        if (jVar.oh() == null || jVar.oh().get(0) == null) {
            return;
        }
        if (dVar.dq() != null) {
            dq = new BitmapDrawable(dVar.dq());
        } else {
            dq = com.bytedance.sdk.openadsdk.core.ir.fw.dq(dVar.ox(), jVar.oh().get(0).d());
        }
        dq(dq, gifView);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, j jVar, NativeExpressView nativeExpressView) {
        this.f3200d = jVar;
        this.mp = nativeExpressView;
        this.iw = ce.ox(this.dq, nativeExpressView.getExpectExpressWidth());
        this.mn = ce.ox(this.dq, this.mp.getExpectExpressWidth());
        this.gh = dVar;
        iw();
        this.mp.addView(this, new ViewGroup.LayoutParams(-1, -1));
    }

    public void dq(byte[] bArr, GifView gifView) {
        if (bArr == null || gifView == null) {
            return;
        }
        gifView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        gifView.dq(bArr, false);
    }

    public com.bykv.vk.openvk.component.video.api.p.ox getVideoController() {
        NativeVideoTsView nativeVideoTsView = this.r;
        if (nativeVideoTsView == null) {
            return null;
        }
        return nativeVideoTsView.getNativeVideoController();
    }

    public void setVideoAdListener(ox.InterfaceC0004ox interfaceC0004ox) {
        this.i = interfaceC0004ox;
    }
}
