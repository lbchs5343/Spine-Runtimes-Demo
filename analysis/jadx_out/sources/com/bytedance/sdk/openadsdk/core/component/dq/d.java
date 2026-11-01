package com.bytedance.sdk.openadsdk.core.component.dq;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.k;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeDrawVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.f.d.d.q;
import com.bytedance.sdk.openadsdk.mediation.MediationNativeManagerDefault;
import com.bytedance.sdk.openadsdk.mediation.ad.dq.d.dq.p;
import com.bytedance.sdk.openadsdk.mediation.manager.dq.d.dq.s;
import java.util.List;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.openadsdk.f.d.dq {

    /* renamed from: d, reason: collision with root package name */
    private Bitmap f2509d;
    private boolean dq;
    private com.bytedance.sdk.openadsdk.f.d.ox.d ia;
    private final Context iw;
    private com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq kk;
    private final j mn;
    private int ox;
    private com.bytedance.sdk.openadsdk.i.dq.d.dq.dq p;
    private ox s;

    public d(Context context, j jVar, int i, com.bytedance.sdk.openadsdk.f.d.ox.d dVar) {
        super(new ox(context, jVar, i, dVar));
        this.kk = new com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq(null) { // from class: com.bytedance.sdk.openadsdk.core.component.dq.d.3
            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void d(View view, q qVar) {
                NativeVideoTsView kx = d.this.s.kx();
                if (kx != null) {
                    kx.o();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(View view, q qVar) {
                NativeVideoTsView kx = d.this.s.kx();
                if (kx != null) {
                    kx.o();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq
            public void dq(q qVar) {
                NativeVideoTsView kx = d.this.s.kx();
                if (kx != null) {
                    kx.gh();
                }
            }
        };
        this.ia = dVar;
        ox oxVar = (ox) kx();
        this.s = oxVar;
        this.mn = jVar;
        this.iw = context;
        ((com.bytedance.sdk.openadsdk.core.i.ox) oxVar.ir()).dq(this.kk);
    }

    private boolean dq(int i) {
        int mn = wp.d().mn(i);
        if (3 == mn) {
            return false;
        }
        if (1 != mn || !com.bytedance.sdk.component.utils.q.p(this.iw)) {
            if (2 == mn) {
                if (!com.bytedance.sdk.component.utils.q.s(this.iw) && !com.bytedance.sdk.component.utils.q.p(this.iw)) {
                    com.bytedance.sdk.component.utils.q.iw(this.iw);
                }
                return true;
            }
            if (5 == mn && !com.bytedance.sdk.component.utils.q.p(this.iw)) {
                com.bytedance.sdk.component.utils.q.iw(this.iw);
            }
        }
        return true;
    }

    private void h() {
        int i = this.ox;
        if (i >= 200) {
            this.ox = 200;
        } else if (i <= 20) {
            this.ox = 20;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(Activity activity, ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, com.bytedance.sdk.openadsdk.wp.dq.d.dq.dq dqVar, p pVar) {
        View i;
        try {
            dq(viewGroup, (List<View>) null, list, list2, list3, (View) null, dqVar);
            if (pVar != null) {
                View findViewById = viewGroup.findViewById(pVar.ig());
                if (findViewById != null && iw() != null) {
                    findViewById.setVisibility(0);
                    if (findViewById instanceof ViewGroup) {
                        ((ViewGroup) findViewById).removeAllViews();
                        ImageView imageView = new ImageView(viewGroup.getContext());
                        imageView.setImageBitmap(iw());
                        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
                        layoutParams.width = ce.ox(viewGroup.getContext(), 38.0f);
                        layoutParams.height = ce.ox(viewGroup.getContext(), 38.0f);
                        findViewById.setLayoutParams(layoutParams);
                        ((ViewGroup) findViewById).addView(imageView, -1, -1);
                    } else if (findViewById instanceof ImageView) {
                        ((ImageView) findViewById).setImageBitmap(iw());
                    }
                }
                FrameLayout frameLayout = (FrameLayout) viewGroup.findViewById(pVar.mn());
                if (frameLayout != null && (i = i()) != null) {
                    ce.ia(i);
                    frameLayout.removeAllViews();
                    frameLayout.addView(i, -1, -1);
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.o
    public void dq(Bitmap bitmap, int i) {
        this.f2509d = bitmap;
        this.ox = i;
        h();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.o
    public void dq(com.bytedance.sdk.openadsdk.i.dq.d.dq.dq dqVar) {
        this.p = dqVar;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public void dq(com.bytedance.sdk.openadsdk.wp.dq.d.dq.d dVar) {
        ox oxVar = this.s;
        if (oxVar != null) {
            oxVar.dq(dVar);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.o
    public void dq(boolean z) {
        this.dq = z;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.d.q
    public s e() {
        return new MediationNativeManagerDefault();
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.dq, com.bytedance.sdk.openadsdk.f.d.d.q
    public View i() {
        NativeVideoTsView dq;
        if (this.mn != null && this.iw != null) {
            if (this.s.n()) {
                try {
                    dq = this.s.dq(true);
                    dq.setControllerStatusCallBack(new NativeVideoTsView.ox() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.d.1
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.ox
                        public void dq(boolean z, long j, long j2, long j3, boolean z2, boolean z3) {
                            d.this.s.dq.dq = z;
                            d.this.s.dq.s = j;
                            d.this.s.dq.iw = j2;
                            d.this.s.dq.mn = j3;
                            d.this.s.dq.p = z2;
                            d.this.s.dq.ia = z3;
                        }
                    });
                    dq.setAdCreativeClickListener(new NativeVideoTsView.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.dq.d.2
                        @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.dq
                        public void dq(View view, int i) {
                            k p = ((com.bytedance.sdk.openadsdk.core.i.ox) d.this.s.ir()).p();
                            if (p != null) {
                                p.dq(view, i);
                            }
                        }
                    });
                    dq.setVideoAdLoadListener(this.s);
                    dq.setVideoAdInteractionListener(this.s);
                    int kk = c.kk(this.mn);
                    dq.setIsAutoPlay(dq(kk));
                    dq.setIsQuiet(wp.d().p(kk));
                    ((NativeDrawVideoTsView) dq).setCanInterruptVideoPlay(this.dq);
                    Bitmap bitmap = this.f2509d;
                    if (bitmap != null) {
                        ((NativeDrawVideoTsView) dq).dq(bitmap, this.ox);
                    }
                    dq.setDrawVideoListener(this.p);
                } catch (Exception unused) {
                }
                com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.mn).dq(this.s.h()).d(this.s.ji());
                if (!this.s.n() && dq != null && dq.dq(0L, true, false)) {
                    return dq;
                }
            }
            dq = null;
            com.bytedance.sdk.openadsdk.core.iw.p.dq().dq(this.mn).dq(this.s.h()).d(this.s.ji());
            if (!this.s.n()) {
            }
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.f.d.dq, com.bytedance.sdk.openadsdk.f.d.d.q
    public void wp() {
        super.wp();
    }
}
