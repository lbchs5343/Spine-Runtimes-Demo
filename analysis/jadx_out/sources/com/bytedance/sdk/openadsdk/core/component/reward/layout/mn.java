package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Outline;
import android.graphics.drawable.BitmapDrawable;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.iw.f;
import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.pa;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;
import g.tn;

/* loaded from: classes3.dex */
public class mn extends d {

    /* renamed from: f, reason: collision with root package name */
    private TextView f2615f;
    private TextView fw;
    private TextView jy;
    private ImageView mp;
    private TTRoundRectImageView q;

    public mn(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z) {
        super(tTBaseVideoActivity, jVar, z);
    }

    private void d() {
        int i = (int) (this.s * 1000.0f);
        if (i == 666 || i == 1500 || i == 1777 || i == 562 || i == 1000) {
            return;
        }
        dq(this.p == 1 ? 0.562f : 1.777f);
    }

    private void dq(float f2) {
        float min;
        float max;
        int max2;
        float s = s();
        float iw = iw();
        if (this.p == 2) {
            min = Math.max(s, iw);
            max = Math.min(s, iw);
        } else {
            min = Math.min(s, iw);
            max = Math.max(s, iw);
        }
        int pn = (int) (this.ox.pn() * Math.min(min, max));
        if (this.p != 2) {
            TTBaseVideoActivity tTBaseVideoActivity = this.f2610d;
            max -= ce.p(tTBaseVideoActivity, ce.no(tTBaseVideoActivity));
        }
        if (this.p != 2) {
            float f3 = pn;
            pn = (int) Math.max((max - (((min - f3) - f3) / f2)) / 2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
            max2 = pn;
        } else {
            float f4 = pn;
            max2 = (int) Math.max((min - (((max - f4) - f4) * f2)) / 2.0f, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        float f5 = pn;
        float f6 = max2;
        try {
            this.f2610d.getWindow().getDecorView().setPadding(ce.ox(this.f2610d, f6), ce.ox(this.f2610d, f5), ce.ox(this.f2610d, f6), ce.ox(this.f2610d, f5));
        } catch (Throwable unused) {
        }
    }

    private void dq(View view) {
        j jVar = this.ox;
        if (jVar == null || view == null) {
            return;
        }
        final float sl = jVar.sl();
        if (sl <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
            return;
        }
        view.setOutlineProvider(new ViewOutlineProvider() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.mn.1
            @Override // android.view.ViewOutlineProvider
            public void getOutline(View view2, Outline outline) {
                if (outline == null) {
                    return;
                }
                outline.setRoundRect(0, 0, view2.getWidth(), view2.getHeight(), ce.ox(wp.getContext(), sl));
            }
        });
        view.setClipToOutline(true);
    }

    private void dq(View view, com.bytedance.sdk.openadsdk.core.d.d dVar, View.OnTouchListener onTouchListener) {
        if (view == null) {
            return;
        }
        view.setOnTouchListener(onTouchListener);
        view.setOnClickListener(dVar);
    }

    private float iw() {
        return ce.p(this.f2610d, ce.o((Context) this.f2610d));
    }

    private void ox() {
        TextView textView;
        this.mp = (ImageView) this.f2610d.findViewById(2114387715);
        this.q = (TTRoundRectImageView) this.f2610d.findViewById(2114387726);
        this.jy = (TextView) this.f2610d.findViewById(2114387705);
        this.f2615f = (TextView) this.f2610d.findViewById(2114387962);
        this.fw = (TextView) this.f2610d.findViewById(2114387722);
        if (!TextUtils.isEmpty(this.ox.tu()) && (textView = this.f2615f) != null) {
            textView.setText(this.ox.tu());
        }
        if (pa.q(this.ox) == null || !j.d(this.ox)) {
            dq(this.mp);
            ce.dq((View) this.mp, 0);
            ce.dq((View) this.kk, 8);
        } else {
            ce.dq((View) this.mp, 8);
            ce.dq((View) this.kk, 0);
        }
        ji wq = this.ox.wq();
        if (wq != null) {
            com.bytedance.sdk.openadsdk.ia.d.dq(wq).dq(this.q);
        }
        TextView textView2 = this.jy;
        if (textView2 != null) {
            textView2.setText(q());
        }
        TextView textView3 = this.fw;
        if (textView3 != null) {
            textView3.setText(jy());
        }
        ce.dq((TextView) this.f2610d.findViewById(2114387661), this.ox);
    }

    private void p() {
        this.no = (RelativeLayout) this.f2610d.findViewById(2114387849);
        if (com.bytedance.sdk.openadsdk.core.r.ce.dq(this.ox)) {
            String ia = com.bytedance.sdk.openadsdk.core.r.ce.ia(this.ox);
            if (TextUtils.isEmpty(ia)) {
                return;
            }
            com.bytedance.sdk.openadsdk.ia.d.dq(ia).dq(Bitmap.Config.ARGB_4444).ox(2).dq(new f<Bitmap>() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.mn.2
                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(2)
                public void dq(int i, String str, Throwable th) {
                }

                @Override // com.bytedance.sdk.component.iw.f
                @ATSMethod(1)
                public void dq(no<Bitmap> noVar) {
                    Bitmap dq = com.bytedance.sdk.component.adexpress.p.dq.dq(mn.this.f2610d, noVar.ox(), 25);
                    if (dq == null) {
                        return;
                    }
                    final BitmapDrawable bitmapDrawable = new BitmapDrawable(mn.this.f2610d.getResources(), dq);
                    com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.mn.2.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ViewGroup viewGroup = mn.this.mn;
                            if (viewGroup != null) {
                                viewGroup.setBackground(bitmapDrawable);
                            }
                        }
                    });
                }
            }, 4);
        }
    }

    private float s() {
        return ce.p(this.f2610d, ce.kk((Context) this.f2610d));
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq() {
        super.dq();
        this.kk = (FrameLayout) this.f2610d.findViewById(2114387920);
        dq(this.mn);
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.ox)) {
            p();
        } else {
            ox();
            d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar, com.bytedance.sdk.openadsdk.core.d.d dVar2) {
        mn mnVar;
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(this.ox)) {
            TTBaseVideoActivity tTBaseVideoActivity = this.f2610d;
            j jVar = this.ox;
            String str = this.dq;
            final com.bytedance.sdk.openadsdk.core.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.d.dq(tTBaseVideoActivity, jVar, str, c.dq(str));
            FrameLayout frameLayout = this.kk;
            if (frameLayout != null) {
                TTBaseVideoActivity tTBaseVideoActivity2 = this.f2610d;
                j jVar2 = this.ox;
                String str2 = this.dq;
                mnVar = this;
                frameLayout.setOnClickListener(new com.bytedance.sdk.openadsdk.core.d.d(tTBaseVideoActivity2, jVar2, str2, c.dq(str2)) { // from class: com.bytedance.sdk.openadsdk.core.component.reward.layout.mn.3
                    @Override // com.bytedance.sdk.openadsdk.core.d.d, com.bytedance.sdk.openadsdk.core.d.p
                    public void dq(View view, com.bytedance.sdk.openadsdk.core.r.o oVar) {
                        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(tn.p("click_live_element", "click_live_feed"));
                        dqVar.dq(view, oVar);
                    }
                });
            } else {
                mnVar = this;
            }
        } else {
            mnVar = this;
            dq(mnVar.kk, dVar, dVar);
        }
        dq(mnVar.mp, dVar, dVar);
        dq(mnVar.q, dVar, dVar);
        dq(mnVar.jy, dVar, dVar);
        dq(mnVar.f2615f, dVar, dVar);
        dq(mnVar.fw, dVar, dVar);
        dq(mnVar.mn, dVar, dVar);
    }
}
