package com.bytedance.sdk.openadsdk.core.component.reward.view.lp;

import android.content.Context;
import android.text.TextUtils;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.ia.d;
import com.bytedance.sdk.openadsdk.res.s;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;

/* loaded from: classes3.dex */
public class DownloadItemView extends FrameLayout {
    public DownloadItemView(Context context) {
        super(context);
    }

    public void dq(j jVar) {
        String valueOf;
        if (jVar == null) {
            return;
        }
        Context context = getContext();
        addView(s.c(context));
        TTRoundRectImageView tTRoundRectImageView = (TTRoundRectImageView) findViewById(2114387798);
        TextView textView = (TextView) findViewById(2114387880);
        TextView textView2 = (TextView) findViewById(2114387640);
        TextView textView3 = (TextView) findViewById(2114387835);
        TextView textView4 = (TextView) findViewById(2114387633);
        TTRatingBar tTRatingBar = (TTRatingBar) findViewById(2114387612);
        if (tTRatingBar != null) {
            tTRatingBar.setStarEmptyNum(1);
            tTRatingBar.setStarFillNum(4);
            tTRatingBar.setStarImageWidth(ce.ox(context, 12.0f));
            tTRatingBar.setStarImageHeight(ce.ox(context, 12.0f));
            tTRatingBar.setStarImagePadding(ce.ox(context, 4.0f));
            tTRatingBar.dq();
        }
        if (textView4 != null) {
            int iw = jVar.gm() != null ? jVar.gm().iw() : 6870;
            String dq = r.dq(context, "tt_comment_num");
            if (iw > 10000) {
                valueOf = (iw / 10000) + "万";
            } else {
                valueOf = String.valueOf(iw);
            }
            textView4.setText(String.format(dq, valueOf));
        }
        if (tTRoundRectImageView != null) {
            ji wq = jVar.wq();
            if (wq == null || TextUtils.isEmpty(wq.dq())) {
                tTRoundRectImageView.setImageDrawable(r.ox(context, "tt_ad_logo_small"));
            } else {
                d.dq(wq).dq(tTRoundRectImageView);
            }
        }
        if (textView != null) {
            textView.setText(c.fw(jVar));
        }
        if (textView2 != null) {
            textView2.setText(c.cd(jVar));
        }
        if (textView3 != null) {
            textView3.setText(TextUtils.isEmpty(jVar.tu()) ? jVar.y() != 4 ? "查看详情" : "立即下载" : jVar.tu());
        }
    }
}
