package com.bytedance.sdk.openadsdk.core.component.reward.view;

import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;

/* loaded from: classes3.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    TTRoundRectImageView f2668d;
    LinearLayout dq;
    private final TTBaseVideoActivity ia;
    TextView iw;
    private j kk;
    TextView mn;
    private boolean no;
    private int o;
    TextView ox;
    TTRatingBar p;
    TextView s;

    public dq(TTBaseVideoActivity tTBaseVideoActivity) {
        this.ia = tTBaseVideoActivity;
    }

    private void iw() {
        TTRoundRectImageView tTRoundRectImageView;
        if (this.o == 1 && (tTRoundRectImageView = this.f2668d) != null) {
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) tTRoundRectImageView.getLayoutParams();
            layoutParams.setMargins(0, ce.ox(this.ia, 50.0f), 0, 0);
            this.f2668d.setLayoutParams(layoutParams);
        }
    }

    private void s() {
        this.dq = (LinearLayout) this.ia.findViewById(2114387744);
        this.f2668d = (TTRoundRectImageView) this.ia.findViewById(2114387778);
        this.ox = (TextView) this.ia.findViewById(2114387648);
        this.p = (TTRatingBar) this.ia.findViewById(2114387784);
        this.s = (TextView) this.ia.findViewById(2114387787);
        this.iw = (TextView) this.ia.findViewById(2114387869);
        this.mn = (TextView) this.ia.findViewById(2114387712);
        TTRatingBar tTRatingBar = this.p;
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            this.p.setStarFillNum(4);
            this.p.setStarImageWidth(ce.ox(this.ia, 16.0f));
            this.p.setStarImageHeight(ce.ox(this.ia, 16.0f));
            this.p.setStarImagePadding(ce.ox(this.ia, 4.0f));
            this.p.dq();
        }
    }

    public void d() {
        String valueOf;
        if (this.f2668d != null) {
            ji wq = this.kk.wq();
            if (wq == null || TextUtils.isEmpty(wq.dq())) {
                this.f2668d.setImageDrawable(r.ox(this.ia, "tt_ad_logo_small"));
            } else {
                com.bytedance.sdk.openadsdk.ia.d.dq(wq).dq(this.f2668d);
            }
        }
        if (this.ox != null) {
            if (this.kk.gm() == null || TextUtils.isEmpty(this.kk.gm().ox())) {
                this.ox.setText(this.kk.lk());
            } else {
                this.ox.setText(this.kk.gm().ox());
            }
        }
        if (this.s != null) {
            int iw = this.kk.gm() != null ? this.kk.gm().iw() : 6870;
            String dq = r.dq(this.ia, "tt_comment_num_backup");
            if (iw > 10000) {
                valueOf = (iw / 10000) + "万";
            } else {
                valueOf = String.valueOf(iw);
            }
            this.s.setText(String.format(dq, valueOf));
        }
        TextView textView = this.mn;
        if (textView != null) {
            ce.dq(textView, this.kk);
        }
    }

    public void dq() {
        ce.dq((View) this.dq, 0);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.d.d dVar) {
        ce.dq(this.dq, new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.dq.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
            }
        }, "TTBaseVideoActivity#mLLEndCardBackup");
        TextView textView = this.iw;
        if (textView != null) {
            textView.setOnClickListener(dVar);
            this.iw.setOnTouchListener(dVar);
        }
    }

    public void dq(j jVar) {
        if (this.no) {
            return;
        }
        this.no = true;
        this.kk = jVar;
        this.o = jVar.ho();
        s();
        d();
        dq(p());
        iw();
    }

    public void dq(String str) {
        TextView textView;
        if (TextUtils.isEmpty(str) || (textView = this.iw) == null) {
            return;
        }
        textView.setText(str);
    }

    public void ox() {
        ce.dq((View) this.dq, 8);
    }

    public String p() {
        j jVar = this.kk;
        return jVar == null ? "立即下载" : TextUtils.isEmpty(jVar.tu()) ? this.kk.y() != 4 ? "查看详情" : "立即下载" : this.kk.tu();
    }
}
