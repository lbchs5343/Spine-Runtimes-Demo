package com.bytedance.sdk.openadsdk.core.component.splash;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.splash.o;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.fw;
import com.bytedance.sdk.openadsdk.core.r.cv;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashMap;

/* loaded from: classes3.dex */
class s extends ox {
    private ImageView iw;
    private GifView s;

    private View dq(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        GifView gifView = new GifView(context);
        this.s = gifView;
        gifView.setId(2114387587);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(3, 2114387586);
        this.s.setLayoutParams(layoutParams);
        this.s.setVisibility(8);
        relativeLayout.addView(this.s);
        ImageView imageView = new ImageView(context);
        this.iw = imageView;
        imageView.setId(2114387586);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 20.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 20.0f, resources.getDisplayMetrics()));
        layoutParams2.addRule(11);
        layoutParams2.addRule(10);
        layoutParams2.bottomMargin = ce.ox(context, 5.0f);
        this.iw.setLayoutParams(layoutParams2);
        this.iw.setBackground(r.ox(this.dq, "tt_dislike_icon"));
        this.iw.setVisibility(0);
        relativeLayout.addView(this.iw);
        return relativeLayout;
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public String dq() {
        return "show_splash_icon";
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void dq(Context context, ViewGroup viewGroup, j jVar) {
        super.dq(context, viewGroup, jVar);
        View dq = dq(this.dq);
        if (dq == null) {
            return;
        }
        this.f2748d.addView(dq);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void dq(com.bytedance.sdk.openadsdk.core.d.dq dqVar) {
        if (dqVar == null) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("splash_click_area", 1);
        ((com.bytedance.sdk.openadsdk.core.d.dq.ox.dq) dqVar.dq(com.bytedance.sdk.openadsdk.core.d.dq.ox.dq.class)).dq(hashMap);
        this.s.setOnClickListener(dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar, final o.dq dqVar) {
        super.dq(dVar, oxVar, dqVar);
        if (dVar == null) {
            return;
        }
        this.s.setVisibility(0);
        if (dVar.s()) {
            this.s.setScaleType(ImageView.ScaleType.CENTER_CROP);
            this.s.dq(dVar.ox(), false);
        } else if (cv.no(this.ox)) {
            Drawable bitmapDrawable = dVar.dq() != null ? new BitmapDrawable(this.dq.getResources(), dVar.dq()) : fw.dq(dVar.ox(), 0);
            this.s.setScaleType(ImageView.ScaleType.FIT_END);
            this.s.setImageDrawable(bitmapDrawable);
        }
        int cd = cv.cd(this.ox);
        if (cd >= 0) {
            dqVar.dq(cd);
        }
        if (dqVar != null) {
            this.iw.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.s.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    dqVar.d();
                    com.bytedance.sdk.openadsdk.core.ig.ox.ox(s.this.ox, "splash_ad", "close_splash_icon");
                }
            });
        }
    }
}
