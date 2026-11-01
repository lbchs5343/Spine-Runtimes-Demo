package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.List;

/* loaded from: classes3.dex */
public class d {

    /* renamed from: d, reason: collision with root package name */
    protected final TTBaseVideoActivity f2610d;
    protected final String dq;
    protected RelativeLayout ia;
    protected int ig = 3;
    protected final boolean iw;
    protected FrameLayout kk;
    protected ViewGroup mn;
    protected RelativeLayout no;
    protected TextView o;
    protected final j ox;
    protected final int p;
    protected final float s;

    public d(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z) {
        this.f2610d = tTBaseVideoActivity;
        this.ox = jVar;
        this.p = jVar.ho();
        this.s = jVar.es();
        this.iw = z;
        this.dq = z ? "rewarded_video" : "fullscreen_interstitial_ad";
    }

    public void d(int i) {
    }

    public void dq() {
        ViewGroup viewGroup = (ViewGroup) this.f2610d.findViewById(2114387959);
        this.mn = viewGroup;
        if (viewGroup != null) {
            viewGroup.setBackgroundColor(-16777216);
        }
    }

    public void dq(DownloadListener downloadListener) {
    }

    public void dq(ImageView imageView) {
        List<ji> oh = this.ox.oh();
        if (oh == null || oh.size() <= 0) {
            return;
        }
        com.bytedance.sdk.openadsdk.ia.d.dq(oh.get(0)).dq(imageView);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar, com.bytedance.sdk.openadsdk.core.d.d dVar2) {
    }

    public void f() {
        j jVar = this.ox;
        String rr = jVar != null ? jVar.rr() : null;
        if (this.o == null || !TextUtils.isEmpty(rr)) {
            return;
        }
        this.o.setBackground(r.ox(this.f2610d, "tt_ad_logo_backup"));
    }

    public FrameLayout ig() {
        return this.kk;
    }

    public void iw(int i) {
        ce.dq((View) this.ia, i);
    }

    public String jy() {
        return c.cd(this.ox);
    }

    public RelativeLayout mp() {
        return this.ia;
    }

    public void no() {
        if (this.iw) {
            int cv = this.ox.cv();
            this.ig = cv;
            if (cv == -200) {
                com.bytedance.sdk.openadsdk.core.bl.mn d2 = wp.d();
                StringBuilder sb = new StringBuilder();
                sb.append(c.kk(this.ox));
                this.ig = d2.mp(sb.toString());
            }
            if (this.ig == -1) {
                ce.dq((View) this.ia, 0);
            }
        }
    }

    public void o() {
    }

    public void ox(int i) {
    }

    public void ox(boolean z) {
        this.f2610d.u().getWidgetFrameContainer().setVisibility(z ? 0 : 8);
    }

    public void p(int i) {
    }

    public String q() {
        return c.fw(this.ox);
    }

    public void s(int i) {
        ce.dq((View) this.o, i);
    }
}
