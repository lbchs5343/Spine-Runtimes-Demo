package com.bytedance.sdk.openadsdk.core.component.reward.layout;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.widget.RatioImageView;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;

/* loaded from: classes3.dex */
public class iw extends d {
    private TTRatingBar cd;

    /* renamed from: f, reason: collision with root package name */
    private TextView f2614f;
    private TextView fw;
    private TextView gh;
    private TextView jy;
    private RatioImageView mp;
    private TTRoundRectImageView q;

    public iw(TTBaseVideoActivity tTBaseVideoActivity, j jVar, boolean z) {
        super(tTBaseVideoActivity, jVar, z);
    }

    private void d() {
        ji wq;
        ce.dq((TextView) this.f2610d.findViewById(2114387661), this.ox);
        if (this.mp != null) {
            int gv = this.ox.gv();
            if (gv == 3) {
                this.mp.setRatio(1.91f);
            } else if (gv != 33) {
                this.mp.setRatio(0.56f);
            } else {
                this.mp.setRatio(1.0f);
            }
            dq(this.mp);
        }
        if (this.q != null && (wq = this.ox.wq()) != null) {
            com.bytedance.sdk.openadsdk.ia.d.dq(wq).dq(this.q);
        }
        TextView textView = this.jy;
        if (textView != null) {
            textView.setText(q());
        }
        TextView textView2 = this.f2614f;
        if (textView2 != null) {
            textView2.setText(jy());
        }
        ox();
        p();
    }

    private void ox() {
        TTRatingBar tTRatingBar = this.cd;
        if (tTRatingBar == null) {
            return;
        }
        tTRatingBar.setStarEmptyNum(1);
        this.cd.setStarFillNum(4);
        this.cd.setStarImageWidth(ce.ox(this.f2610d, 16.0f));
        this.cd.setStarImageHeight(ce.ox(this.f2610d, 16.0f));
        this.cd.setStarImagePadding(ce.ox(this.f2610d, 4.0f));
        this.cd.dq();
    }

    private void p() {
        String valueOf;
        if (this.fw == null) {
            return;
        }
        int iw = this.ox.gm() != null ? this.ox.gm().iw() : 6870;
        String dq = r.dq(this.f2610d, "tt_comment_num_backup");
        if (iw > 10000) {
            valueOf = (iw / 10000) + "万";
        } else {
            valueOf = String.valueOf(iw);
        }
        this.fw.setText(String.format(dq, valueOf));
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq() {
        super.dq();
        this.kk = (FrameLayout) this.mn.findViewById(2114387645);
        this.mp = (RatioImageView) this.mn.findViewById(2114387771);
        this.q = (TTRoundRectImageView) this.mn.findViewById(2114387726);
        this.jy = (TextView) this.mn.findViewById(2114387705);
        this.f2614f = (TextView) this.mn.findViewById(2114387940);
        this.fw = (TextView) this.mn.findViewById(2114387794);
        this.gh = (TextView) this.mn.findViewById(2114387962);
        this.cd = (TTRatingBar) this.mn.findViewById(2114387792);
        d();
    }

    public void dq(View view, com.bytedance.sdk.openadsdk.core.d.d dVar, View.OnTouchListener onTouchListener) {
        if (view == null || this.f2610d == null) {
            return;
        }
        view.setOnTouchListener(onTouchListener);
        view.setOnClickListener(dVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.reward.layout.d
    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar, com.bytedance.sdk.openadsdk.core.d.d dVar2) {
        dq(this.mp, dVar, dVar);
        dq(this.q, dVar, dVar);
        dq(this.jy, dVar, dVar);
        dq(this.f2614f, dVar, dVar);
        dq(this.gh, dVar, dVar);
        dq(this.fw, dVar, dVar);
        dq(this.cd, dVar, dVar);
    }
}
