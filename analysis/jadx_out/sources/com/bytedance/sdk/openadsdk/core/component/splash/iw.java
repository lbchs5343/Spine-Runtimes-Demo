package com.bytedance.sdk.openadsdk.core.component.splash;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.openvk.component.video.api.p.ox;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.core.component.splash.o;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.cv;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.pa;
import java.util.HashMap;
import org.json.JSONObject;

/* loaded from: classes3.dex */
class iw extends ox {
    private long ia;
    private FrameLayout iw;
    private com.bytedance.sdk.openadsdk.core.video.nativevideo.ox mn;
    private ImageView s;

    private View dq(Context context) {
        if (context == null) {
            return null;
        }
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout = new FrameLayout(context);
        this.iw = frameLayout;
        frameLayout.setId(2114387568);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(3, 2114387586);
        this.iw.setLayoutParams(layoutParams);
        this.iw.setVisibility(8);
        relativeLayout.addView(this.iw);
        ImageView imageView = new ImageView(context);
        this.s = imageView;
        imageView.setId(2114387586);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 20.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 20.0f, resources.getDisplayMetrics()));
        layoutParams2.addRule(11);
        layoutParams2.addRule(10);
        layoutParams2.bottomMargin = ce.ox(context, 5.0f);
        this.s.setLayoutParams(layoutParams2);
        this.s.setBackground(r.ox(this.dq, "tt_dislike_icon"));
        this.s.setVisibility(0);
        relativeLayout.addView(this.s);
        return relativeLayout;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(ViewGroup viewGroup, Context context) {
        String mp = cv.mp(this.ox);
        int q = cv.q(this.ox);
        if (this.p == null) {
            return;
        }
        if (TextUtils.isEmpty(mp) || q <= 0) {
            this.p.dq(0L);
            return;
        }
        com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.o();
        }
        viewGroup.removeAllViews();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        ImageView imageView = new ImageView(this.dq);
        imageView.setLayoutParams(layoutParams);
        com.bytedance.sdk.openadsdk.ia.d.dq(pa.d(this.ox)).dq(imageView);
        viewGroup.addView(imageView);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        TextView textView = new TextView(context);
        textView.setTextColor(-1);
        textView.setText(mp);
        textView.setTextSize(14.0f);
        textView.setGravity(17);
        textView.setLayoutParams(layoutParams2);
        textView.setBackgroundColor(Color.parseColor("#33000000"));
        viewGroup.addView(textView);
        this.p.dq(q);
    }

    private void dq(com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar) {
        boolean gh = oxVar != null ? oxVar.gh() : true;
        this.mn = new com.bytedance.sdk.openadsdk.core.video.nativevideo.ox(this.dq, this.iw, this.ox, "splash_ad", false, false, false);
        com.bykv.vk.openvk.component.video.api.ox.p dq = pa.dq(3, this.ox);
        dq.d(this.ox.fx());
        dq.d(this.iw.getWidth());
        dq.ox(this.iw.getHeight());
        dq.ox(this.ox.dn());
        dq.d(gh);
        if (oxVar == null) {
            dq.dq(0L);
        } else {
            dq.dq(oxVar.no());
        }
        String dq2 = kk.dq(this.ox.mx());
        if (this.ox.jc()) {
            dq2 = com.bytedance.sdk.openadsdk.h.kk.dq();
        }
        dq.dq(dq2);
        this.mn.dq(dq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("show_time", System.currentTimeMillis() - this.ia);
            com.bytedance.sdk.openadsdk.core.ig.ox.d(this.ox, "splash_ad", "icon_splash_video_show_time", jSONObject);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar = this.mn;
        if (oxVar != null) {
            oxVar.o();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void d() {
        super.d();
        ox();
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
        this.iw.setOnClickListener(dqVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.component.splash.ox
    public void dq(com.bytedance.sdk.openadsdk.core.le.dq.d dVar, com.bytedance.sdk.openadsdk.core.video.nativevideo.ox oxVar, final o.dq dqVar) {
        super.dq(dVar, oxVar, dqVar);
        this.ia = System.currentTimeMillis();
        this.iw.setVisibility(0);
        dq(oxVar);
        this.mn.dq(new ox.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.iw.1
            @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
            public void d(long j, int i) {
            }

            @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
            public void dq() {
                iw iwVar = iw.this;
                if (iwVar.p != null) {
                    iwVar.p();
                    iw.this.p.d();
                    com.bytedance.sdk.openadsdk.core.ig.ox.ox(iw.this.ox, "splash_ad", "close_splash_icon");
                }
            }

            @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
            public void dq(long j, int i) {
                iw iwVar = iw.this;
                iwVar.dq(iwVar.iw, iw.this.dq);
            }

            @Override // com.bykv.vk.openvk.component.video.api.p.ox.dq
            public void dq(long j, long j2) {
            }
        });
        if (dqVar != null) {
            this.s.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.splash.iw.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    iw.this.p();
                    dqVar.d();
                    com.bytedance.sdk.openadsdk.core.ig.ox.ox(iw.this.ox, "splash_ad", "close_splash_icon");
                    iw.this.ox();
                }
            });
        }
    }
}
