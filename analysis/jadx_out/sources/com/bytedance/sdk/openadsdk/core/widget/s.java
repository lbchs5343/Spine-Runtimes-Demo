package com.bytedance.sdk.openadsdk.core.widget;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.text.TextPaint;
import android.text.TextUtils;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.utils.r;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.widget.TTRatingBar2;
import com.bytedance.sdk.openadsdk.widget.TTRoundRectImageView;
import g.awf;
import g.fzx;
import g.gkb;
import g.tn;
import java.text.DecimalFormat;
import java.util.Stack;
import org.json.JSONArray;

/* loaded from: classes3.dex */
public class s extends AlertDialog {
    private dq bl;
    private String cd;

    /* renamed from: d, reason: collision with root package name */
    Stack<View> f3715d;
    protected Context dq;

    /* renamed from: e, reason: collision with root package name */
    private JSONArray f3716e;

    /* renamed from: f, reason: collision with root package name */
    private Button f3717f;
    private fzx fw;
    private String gh;
    private RelativeLayout h;
    private String i;
    private LinearLayout ia;
    private TextView ig;
    private TextView iw;
    private View ji;
    private TextView jy;
    private String k;
    private LinearLayout kk;
    private float kx;
    private String le;
    private TextView mn;
    private TextView mp;
    private String n;
    private TextView no;
    private TTRatingBar2 o;
    private ImageView ox;
    private TTRoundRectImageView p;
    private TextView q;
    private String r;
    private TextView s;
    private String wp;

    public interface dq {
        void d(Dialog dialog);

        void dq(Dialog dialog);

        void ox(Dialog dialog);

        void p(Dialog dialog);

        void s(Dialog dialog);
    }

    public s(Context context) {
        super(context, r.mn(context, "tt_dialog_full"));
        this.f3715d = new Stack<>();
        this.dq = context;
    }

    private LinearLayout d(int i) {
        LinearLayout linearLayout = new LinearLayout(this.dq);
        ViewGroup.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        linearLayout.setOrientation(i);
        linearLayout.setBackgroundColor(Color.parseColor("#99000000"));
        linearLayout.setLayoutParams(layoutParams);
        View view = new View(this.dq);
        LinearLayout.LayoutParams layoutParams2 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams2.weight = 0.38f;
        view.setLayoutParams(layoutParams2);
        linearLayout.addView(view);
        this.h = new RelativeLayout(this.dq);
        LinearLayout.LayoutParams layoutParams3 = i == 0 ? new LinearLayout.LayoutParams(0, -1) : new LinearLayout.LayoutParams(-1, 0);
        layoutParams3.weight = 0.62f;
        layoutParams3.gravity = 1;
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setCornerRadius(ce.ox(this.dq, 8.0f));
        this.h.setBackground(gradientDrawable);
        this.h.setLayoutParams(layoutParams3);
        linearLayout.addView(this.h);
        return dq(i, linearLayout);
    }

    private LinearLayout d(int i, LinearLayout linearLayout, int i2, LinearLayout linearLayout2, View view) {
        if (i == 0) {
            dq(i, (ViewGroup) linearLayout2);
            if (!TextUtils.isEmpty(this.le)) {
                View imageView = new ImageView(this.dq);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ce.ox(this.dq, 0.5f), ce.ox(this.dq, 9.0f));
                layoutParams.leftMargin = ce.ox(this.dq, 8.0f);
                layoutParams.gravity = 17;
                imageView.setLayoutParams(layoutParams);
                imageView.setBackgroundColor(Color.parseColor("#D8D8D8"));
                linearLayout2.addView(imageView);
            }
        }
        int ox = ce.ox(this.dq, 8.0f);
        dq(linearLayout2, ox);
        d(linearLayout2, ox);
        return dq(i, linearLayout, i2, linearLayout2, view, ox);
    }

    private LinearLayout d(int i, LinearLayout linearLayout, LinearLayout linearLayout2, int i2) {
        this.ia = new LinearLayout(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        layoutParams.topMargin = ce.ox(this.dq, 10.0f);
        this.ia.setLayoutParams(layoutParams);
        this.ia.setOrientation(0);
        linearLayout2.addView(this.ia);
        this.kk = new LinearLayout(this.dq);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = ce.ox(this.dq, 10.0f);
        if (i == 0) {
            layoutParams2.topMargin = ce.ox(this.dq, 16.0f);
        } else {
            layoutParams2.topMargin = ce.ox(this.dq, 10.0f);
        }
        this.kk.setLayoutParams(layoutParams2);
        this.kk.setOrientation(0);
        this.o = new TTRatingBar2(this.dq, null);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams3.gravity = 16;
        this.o.setLayoutParams(layoutParams3);
        this.kk.addView(this.o);
        this.no = new TextView(this.dq);
        LinearLayout.LayoutParams layoutParams4 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams4.gravity = 16;
        layoutParams4.leftMargin = ce.ox(this.dq, 3.0f);
        this.no.setTextSize(16.0f);
        this.no.setTextColor(Color.parseColor("#161823"));
        this.no.setLayoutParams(layoutParams4);
        this.kk.addView(this.no);
        linearLayout2.addView(this.kk);
        return dq(i, linearLayout, i2);
    }

    private void d(LinearLayout linearLayout, int i) {
        View imageView = new ImageView(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ce.ox(this.dq, 0.5f), ce.ox(this.dq, 9.0f));
        layoutParams.gravity = 17;
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundColor(Color.parseColor("#D8D8D8"));
        linearLayout.addView(imageView);
        this.mn = new TextView(this.dq);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = i;
        layoutParams2.rightMargin = i;
        this.mn.setLayoutParams(layoutParams2);
        this.mn.setAlpha(0.75f);
        this.mn.setTextColor(Color.parseColor("#66161823"));
        if (this.dq.getResources().getConfiguration().orientation == 2) {
            this.mn.setTextSize(10.0f);
        } else {
            this.mn.setTextSize(12.0f);
        }
        this.mn.setText("权限");
        linearLayout.addView(this.mn);
    }

    private View dq(int i) {
        int ox;
        LinearLayout d2 = d(i);
        LinearLayout linearLayout = new LinearLayout(this.dq);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        if (i == 0) {
            ox = ce.ox(this.dq, 40.0f);
        } else {
            layoutParams.addRule(3, s().getId());
            ox = ce.ox(this.dq, 16.0f);
        }
        layoutParams.leftMargin = ox;
        layoutParams.rightMargin = ox;
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(layoutParams);
        this.h.addView(linearLayout);
        this.p = new TTRoundRectImageView(this.dq);
        int ox2 = ce.ox(this.dq, 64.0f);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(ox2, ox2);
        layoutParams2.gravity = 1;
        if (i == 0) {
            layoutParams2.topMargin = ce.ox(this.dq, 40.0f);
        } else {
            layoutParams2.topMargin = ce.ox(this.dq, 36.0f);
        }
        this.p.setMaxHeight(ox2);
        this.p.setMaxWidth(ox2);
        this.p.setMinimumHeight(ox2);
        this.p.setMinimumWidth(ox2);
        this.p.setLayoutParams(layoutParams2);
        linearLayout.addView(this.p);
        return dq(i, d2, linearLayout, ox);
    }

    private View dq(RelativeLayout relativeLayout) {
        View view = new View(this.dq);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ce.ox(this.dq, 1.0f));
        layoutParams.addRule(3, relativeLayout.getId());
        view.setLayoutParams(layoutParams);
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        view.setId(View.generateViewId());
        this.h.addView(view);
        return view;
    }

    private LinearLayout dq(int i, LinearLayout linearLayout) {
        if (i == 0) {
            this.ox = new ImageView(this.dq);
            int ox = ce.ox(this.dq, 28.0f);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ox, ox);
            int ox2 = ce.ox(this.dq, 36.0f);
            layoutParams.topMargin = ox2;
            layoutParams.rightMargin = ox2;
            layoutParams.leftMargin = ox2;
            layoutParams.bottomMargin = ox2;
            layoutParams.addRule(10);
            layoutParams.addRule(21);
            layoutParams.addRule(11);
            this.ox.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            this.ox.setLayoutParams(layoutParams);
            this.ox.setMaxHeight(ox);
            this.ox.setMaxWidth(ox);
            this.ox.setMinimumHeight(ox);
            this.ox.setMinimumWidth(ox);
            com.bytedance.sdk.openadsdk.res.d dVar = new com.bytedance.sdk.openadsdk.res.d(ce.ox(this.dq, 28.0f));
            dVar.dq(Color.parseColor("#66161823"));
            float ox3 = ce.ox(this.dq, 2.0f);
            dVar.dq(ox3);
            com.bytedance.sdk.openadsdk.res.ox oxVar = new com.bytedance.sdk.openadsdk.res.ox(ce.ox(this.dq, 12.0f));
            oxVar.dq(-1);
            oxVar.dq(ox3);
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{dVar, oxVar});
            layerDrawable.setLayerInset(0, 0, 0, 0, 0);
            int ox4 = ce.ox(this.dq, 8.0f);
            layerDrawable.setLayerInset(1, ox4, ox4, ox4, ox4);
            this.ox.setImageDrawable(layerDrawable);
            this.h.addView(this.ox);
        }
        return linearLayout;
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, int i2) {
        Button button = new Button(this.dq);
        this.f3717f = button;
        button.setId(View.generateViewId());
        LinearLayout linearLayout2 = new LinearLayout(this.dq);
        linearLayout2.setId(View.generateViewId());
        View view = new View(this.dq);
        view.setId(View.generateViewId());
        TextView textView = new TextView(this.dq);
        this.mp = textView;
        textView.setId(View.generateViewId());
        if (i == 1) {
            dq(i, this.h);
        } else {
            dq(ce.ox(this.dq, 89.0f), i);
        }
        return dq(i, linearLayout, i2, linearLayout2, view);
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, int i2, LinearLayout linearLayout2, View view) {
        RelativeLayout.LayoutParams q = tn.q(-2, -2, 14);
        q.addRule(2, linearLayout2.getId());
        if (i == 1) {
            q.leftMargin = i2;
            q.rightMargin = i2;
        } else {
            int ox = ce.ox(this.dq, 16.0f);
            q.leftMargin = ox;
            q.rightMargin = ox;
        }
        q.topMargin = ce.ox(this.dq, 3.0f);
        this.mp.setEllipsize(TextUtils.TruncateAt.END);
        this.mp.setGravity(17);
        this.mp.setTextColor(Color.parseColor("#4D161823"));
        if (i == 0) {
            this.mp.setTextSize(10.0f);
        } else {
            this.mp.setTextSize(12.0f);
        }
        this.mp.setLayoutParams(q);
        this.h.addView(this.mp);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = i2;
        layoutParams.rightMargin = i2;
        if (i == 1) {
            layoutParams.topMargin = ce.ox(this.dq, 9.0f);
        } else {
            layoutParams.topMargin = ce.ox(this.dq, 2.0f);
            layoutParams.bottomMargin = ce.ox(this.dq, 20.0f);
        }
        if (i == 1) {
            layoutParams.addRule(2, view.getId());
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(14);
        }
        linearLayout2.setOrientation(0);
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setGravity(1);
        return d(i, linearLayout, i2, linearLayout2, view);
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, int i2, LinearLayout linearLayout2, View view, int i3) {
        View imageView = new ImageView(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(ce.ox(this.dq, 0.5f), ce.ox(this.dq, 9.0f));
        layoutParams.gravity = 17;
        imageView.setLayoutParams(layoutParams);
        imageView.setBackgroundColor(Color.parseColor("#D8D8D8"));
        linearLayout2.addView(imageView);
        this.q = new TextView(this.dq);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.leftMargin = i3;
        layoutParams2.rightMargin = i3;
        this.q.setLayoutParams(layoutParams2);
        this.q.setAlpha(0.75f);
        this.q.setTextColor(Color.parseColor("#66161823"));
        if (this.dq.getResources().getConfiguration().orientation == 2) {
            this.q.setTextSize(10.0f);
        } else {
            this.q.setTextSize(12.0f);
        }
        this.q.setText("隐私");
        linearLayout2.addView(this.q);
        this.h.addView(linearLayout2);
        if (i == 0) {
            return linearLayout;
        }
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, ce.ox(this.dq, 1.0f));
        layoutParams3.topMargin = ce.ox(this.dq, 12.0f);
        layoutParams3.addRule(2, this.f3717f.getId());
        view.setLayoutParams(layoutParams3);
        view.setBackgroundColor(Color.parseColor("#E8E8E8"));
        this.h.addView(view);
        dq(i2, i);
        return linearLayout;
    }

    private LinearLayout dq(int i, LinearLayout linearLayout, LinearLayout linearLayout2, int i2) {
        this.s = new TextView(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 49;
        if (i == 0) {
            layoutParams.topMargin = ce.ox(this.dq, 16.0f);
            int ox = ce.ox(this.dq, 25.0f);
            layoutParams.leftMargin = ox;
            layoutParams.rightMargin = ox;
        } else {
            layoutParams.topMargin = ce.ox(this.dq, 14.0f);
        }
        this.s.setLayoutParams(layoutParams);
        TextView textView = this.s;
        TextUtils.TruncateAt truncateAt = TextUtils.TruncateAt.END;
        textView.setEllipsize(truncateAt);
        this.s.setTextColor(Color.parseColor("#161823"));
        this.s.setTextSize(18.0f);
        this.s.setGravity(17);
        this.s.setTypeface(null, 1);
        linearLayout2.addView(this.s);
        this.iw = new TextView(this.dq);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 1;
        layoutParams2.topMargin = ce.ox(this.dq, 5.0f);
        this.iw.setLayoutParams(layoutParams2);
        this.iw.setEllipsize(truncateAt);
        this.iw.setSingleLine(true);
        this.iw.setAlpha(0.5f);
        this.iw.setTextColor(Color.parseColor("#161823"));
        this.iw.setTextSize(14.0f);
        this.iw.setGravity(17);
        linearLayout2.addView(this.iw);
        return d(i, linearLayout, linearLayout2, i2);
    }

    private void dq(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i;
        if (i2 == 1) {
            layoutParams.topMargin = ce.ox(this.dq, 14.0f);
            layoutParams.bottomMargin = ce.ox(this.dq, 46.0f);
            layoutParams.addRule(12);
        } else {
            layoutParams.topMargin = ce.ox(this.dq, 10.0f);
            layoutParams.bottomMargin = ce.ox(this.dq, 24.0f);
            layoutParams.addRule(2, this.mp.getId());
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(Color.parseColor("#F93F3F"));
        gradientDrawable.setCornerRadius(ce.ox(this.dq, 3.0f));
        this.f3717f.setBackground(gradientDrawable);
        this.f3717f.setGravity(17);
        this.f3717f.setText("立即下载");
        int ox = ce.ox(this.dq, 13.0f);
        this.f3717f.setPadding(0, ox, 0, ox);
        this.f3717f.setTextColor(-1);
        this.f3717f.setLayoutParams(layoutParams);
        this.f3717f.setTextSize(15.0f);
        this.h.addView(this.f3717f);
        if (i2 != 1 || TextUtils.isEmpty(this.wp)) {
            return;
        }
        int ox2 = ce.ox(this.dq, 60.0f);
        fzx fzxVar = new fzx(this.dq);
        this.fw = fzxVar;
        fzxVar.dq("src", this.wp);
        this.fw.dq("loop", "true");
        this.fw.dq("autoPlay", "true");
        this.fw.dq(MediaFormat.KEY_WIDTH, String.valueOf(ox2));
        this.fw.dq(MediaFormat.KEY_HEIGHT, String.valueOf(ox2));
        this.fw.dq("scaleType", "fitXY");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(ox2, ox2);
        layoutParams2.addRule(11);
        layoutParams2.addRule(3, this.f3717f.getId());
        layoutParams2.rightMargin = ce.ox(this.dq, 73.0f);
        layoutParams2.topMargin = -ce.ox(this.dq, 85.0f);
        this.fw.dq(layoutParams2);
        gkb gkbVar = (gkb) this.fw.kk();
        if (gkbVar == null) {
            return;
        }
        this.fw.p();
        this.h.addView(gkbVar);
    }

    private void dq(int i, ViewGroup viewGroup) {
        this.ig = new TextView(this.dq);
        if (i == 1) {
            RelativeLayout.LayoutParams q = tn.q(-2, -2, 14);
            q.addRule(2, this.mp.getId());
            int ox = ce.ox(this.dq, 16.0f);
            q.leftMargin = ox;
            q.rightMargin = ox;
            q.topMargin = ce.ox(this.dq, 30.0f);
            this.ig.setLayoutParams(q);
            this.ig.setGravity(17);
        } else {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 8388611;
            this.ig.setLayoutParams(layoutParams);
        }
        this.ig.setEllipsize(TextUtils.TruncateAt.END);
        this.ig.setTextColor(Color.parseColor("#57161823"));
        if (i == 0) {
            this.ig.setTextSize(10.0f);
        } else {
            this.ig.setTextSize(12.0f);
        }
        viewGroup.addView(this.ig);
    }

    private void dq(LinearLayout linearLayout, int i) {
        this.jy = new TextView(this.dq);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        layoutParams.leftMargin = i;
        layoutParams.rightMargin = i;
        this.jy.setLayoutParams(layoutParams);
        this.jy.setAlpha(0.75f);
        this.jy.setTextColor(Color.parseColor("#66161823"));
        if (this.dq.getResources().getConfiguration().orientation == 2) {
            this.jy.setTextSize(10.0f);
        } else {
            this.jy.setTextSize(12.0f);
        }
        this.jy.setText("功能");
        linearLayout.addView(this.jy);
    }

    private void iw() {
        RelativeLayout relativeLayout;
        if (this.ji == null || (relativeLayout = this.h) == null) {
            return;
        }
        final int childCount = relativeLayout.getChildCount();
        for (int i = 0; i < childCount; i++) {
            this.h.getChildAt(i).setVisibility(4);
        }
        this.ji.postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.widget.s.6
            @Override // java.lang.Runnable
            public void run() {
                s.this.ox(childCount);
            }
        }, 10L);
    }

    private void mn() {
        RelativeLayout.LayoutParams layoutParams;
        Button button = this.f3717f;
        if (button != null) {
            ViewGroup.LayoutParams layoutParams2 = button.getLayoutParams();
            if (layoutParams2 instanceof LinearLayout.LayoutParams) {
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) layoutParams2;
                layoutParams3.bottomMargin = layoutParams3.topMargin;
                this.f3717f.setLayoutParams(layoutParams3);
            } else if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams4 = (RelativeLayout.LayoutParams) layoutParams2;
                layoutParams4.bottomMargin = layoutParams4.topMargin;
                this.f3717f.setLayoutParams(layoutParams4);
            }
        }
        fzx fzxVar = this.fw;
        if (fzxVar != null) {
            gkb gkbVar = (gkb) fzxVar.kk();
            if (gkbVar != null) {
                layoutParams = (RelativeLayout.LayoutParams) gkbVar.getLayoutParams();
            } else {
                int ox = ce.ox(this.dq, 60.0f);
                layoutParams = new RelativeLayout.LayoutParams(ox, ox);
            }
            layoutParams.topMargin = -ce.ox(this.dq, 53.0f);
            this.fw.dq(layoutParams);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ox(int i) {
        try {
            Rect rect = new Rect();
            if (this.dq.getResources().getConfiguration().orientation == 1) {
                this.ig.getGlobalVisibleRect(rect);
            } else {
                this.f3717f.getGlobalVisibleRect(rect);
            }
            while (!this.f3715d.isEmpty()) {
                Rect rect2 = new Rect();
                View pop = this.f3715d.pop();
                if (pop != null && pop.getVisibility() != 8) {
                    pop.getGlobalVisibleRect(rect2);
                    if (rect2.top != 0 && rect.top >= rect2.bottom) {
                        break;
                    }
                    if (pop == this.s) {
                        View pop2 = this.f3715d.pop();
                        if (pop2 != null) {
                            pop2.setVisibility(8);
                        }
                    } else {
                        pop.setVisibility(8);
                    }
                }
            }
            if (this.f3715d.isEmpty()) {
                mn();
            }
        } catch (Throwable unused) {
        }
        this.h.setVisibility(0);
        for (int i2 = 0; i2 < i; i2++) {
            this.h.getChildAt(i2).setVisibility(0);
        }
    }

    private View s() {
        RelativeLayout relativeLayout = new RelativeLayout(this.dq);
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -2));
        relativeLayout.setId(View.generateViewId());
        ImageView imageView = new ImageView(this.dq);
        this.ox = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
        int ox = ce.ox(this.dq, 46.0f);
        this.ox.setMaxHeight(ox);
        this.ox.setMaxWidth(ox);
        this.ox.setMinimumHeight(ox);
        this.ox.setMinimumWidth(ox);
        com.bytedance.sdk.openadsdk.res.ox oxVar = new com.bytedance.sdk.openadsdk.res.ox(ce.ox(this.dq, 14.0f));
        oxVar.dq(-16777216);
        oxVar.dq(ce.ox(this.dq, 2.0f));
        this.ox.setImageDrawable(oxVar);
        relativeLayout.addView(this.ox);
        TextView textView = new TextView(this.dq);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        textView.setGravity(17);
        layoutParams.addRule(15);
        textView.setTextAlignment(4);
        textView.setTextColor(Color.parseColor("#161823"));
        textView.setTextSize(17.0f);
        textView.setTypeface(null, 1);
        textView.setText("应用详情");
        textView.setLayoutParams(layoutParams);
        relativeLayout.addView(textView);
        this.h.addView(relativeLayout);
        return dq(relativeLayout);
    }

    public s d(String str) {
        this.gh = str;
        return this;
    }

    public void d() {
        if (this.dq == null) {
            this.dq = wp.getContext();
        }
        this.f3715d.clear();
        this.f3715d.push(this.p);
        this.f3715d.push(this.s);
        this.f3715d.push(this.iw);
        this.f3715d.push(this.ia);
        this.f3715d.push(this.kk);
        iw();
        this.jy.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.s.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (s.this.bl == null) {
                    return;
                }
                s.this.bl.s(s.this);
            }
        });
        this.mn.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.s.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (s.this.bl != null) {
                    s.this.bl.d(s.this);
                }
            }
        });
        this.ox.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.s.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (s.this.bl != null) {
                    s.this.bl.ox(s.this);
                }
            }
        });
        this.q.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.s.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (s.this.bl != null) {
                    s.this.bl.p(s.this);
                }
            }
        });
        this.f3717f.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.s.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (s.this.bl != null) {
                    s.this.bl.dq(s.this);
                }
            }
        });
    }

    public s dq(float f2) {
        this.kx = f2;
        return this;
    }

    public s dq(dq dqVar) {
        this.bl = dqVar;
        return this;
    }

    public s dq(String str) {
        this.cd = str;
        return this;
    }

    public s dq(JSONArray jSONArray) {
        this.f3716e = jSONArray;
        return this;
    }

    public void dq() {
        if (this.dq == null) {
            this.dq = wp.getContext();
        }
        if (this.dq.getResources().getConfiguration().orientation == 1) {
            this.ji = dq(1);
        } else {
            this.ji = dq(0);
        }
        setContentView(this.ji);
    }

    public s ia(String str) {
        this.n = str;
        return this;
    }

    public s iw(String str) {
        this.le = str;
        return this;
    }

    public s mn(String str) {
        this.k = str;
        return this;
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        dq dqVar = this.bl;
        if (dqVar != null) {
            dqVar.ox(this);
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        dq();
        setCanceledOnTouchOutside(false);
        d();
    }

    public s ox(String str) {
        this.wp = str;
        return this;
    }

    public void ox() {
        String str;
        int i;
        if (this.dq == null) {
            this.dq = wp.getContext();
        }
        int i2 = this.dq.getResources().getConfiguration().orientation;
        TextView textView = this.s;
        if (textView != null) {
            textView.setText(this.cd);
        } else {
            TTRoundRectImageView tTRoundRectImageView = this.p;
            if (tTRoundRectImageView != null) {
                tTRoundRectImageView.setVisibility(8);
            }
        }
        if (this.p == null || TextUtils.isEmpty(this.gh)) {
            TTRoundRectImageView tTRoundRectImageView2 = this.p;
            if (tTRoundRectImageView2 != null) {
                tTRoundRectImageView2.setVisibility(8);
            }
        } else {
            com.bytedance.sdk.openadsdk.ia.d.dq(this.gh).dq(this.p);
        }
        if (this.iw != null) {
            if (TextUtils.isEmpty(this.r)) {
                this.iw.setVisibility(8);
            } else {
                this.iw.setText(this.r);
            }
        }
        if (this.ia != null) {
            JSONArray jSONArray = this.f3716e;
            if (jSONArray != null && jSONArray.length() > 0) {
                WindowManager windowManager = (WindowManager) this.dq.getSystemService("window");
                Display defaultDisplay = windowManager != null ? windowManager.getDefaultDisplay() : null;
                if (defaultDisplay != null) {
                    int width = defaultDisplay.getWidth();
                    if (width > defaultDisplay.getHeight()) {
                        double p = ce.p(this.dq, width);
                        i = ((int) (p - (0.38d * p))) - 80;
                    } else {
                        i = ce.p(this.dq, width) - 36;
                    }
                } else {
                    i = 0;
                }
                int length = this.f3716e.length() <= 3 ? this.f3716e.length() : 3;
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        break;
                    }
                    String optString = this.f3716e.optString(i3);
                    if (!TextUtils.isEmpty(optString)) {
                        TextView textView2 = new TextView(this.dq);
                        textView2.setText(optString);
                        textView2.setTextSize(12.0f);
                        textView2.setTextColor(Color.parseColor("#161823"));
                        textView2.setAlpha(0.75f);
                        textView2.setBackgroundColor(Color.parseColor("#0F161823"));
                        int ox = ce.ox(this.dq, 6.0f);
                        textView2.setPadding(ox, 0, ox, 0);
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        int ox2 = ce.ox(this.dq, 3.0f);
                        layoutParams.leftMargin = ox2;
                        layoutParams.rightMargin = ox2;
                        textView2.setLayoutParams(layoutParams);
                        textView2.getPaint().getTextBounds(optString, 0, optString.length(), new Rect());
                        i -= ce.p(this.dq, r10.width()) + 20;
                        if (i >= 0) {
                            this.ia.addView(textView2);
                        } else if (this.ia.getChildCount() <= 0) {
                            this.ia.setVisibility(8);
                        }
                    }
                    i3++;
                }
            } else {
                this.ia.setVisibility(8);
            }
        }
        if (this.o != null && this.no != null) {
            float f2 = this.kx;
            if (f2 <= TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                LinearLayout linearLayout = this.kk;
                if (linearLayout != null) {
                    linearLayout.setVisibility(8);
                }
                this.o.setVisibility(8);
                this.no.setVisibility(8);
            } else {
                if (f2 > 5.0f) {
                    f2 = 5.0f;
                }
                this.kx = f2;
                this.no.setText(new DecimalFormat(".0").format(this.kx));
                this.o.setRating(this.kx);
                this.o.dq(ce.ox(this.dq, 16.0f), ce.ox(this.dq, 15.0f));
                this.o.dq(ce.ox(this.dq, 3.0f), 0, ce.ox(this.dq, 3.0f), 0);
                this.o.dq();
            }
        }
        if (this.ig != null) {
            String format = TextUtils.isEmpty(this.i) ? String.format("版本号：%1$s", "暂无") : String.format("版本号：%1$s", this.i);
            str = (i2 != 1 || TextUtils.isEmpty(this.le)) ? "| ".concat(format) : format.concat(String.format(" | 备案号：%1$s", this.le));
            if (i2 == 2) {
                TextPaint paint = this.ig.getPaint();
                Rect rect = new Rect();
                paint.getTextBounds(str, 0, str.length(), rect);
                double o = ce.o(this.dq);
                int width2 = (((int) (o - (0.4d * o))) - rect.width()) - ce.ox(this.dq, 106.0f);
                TextView textView3 = this.q;
                if (textView3 != null) {
                    TextPaint paint2 = textView3.getPaint();
                    String charSequence = this.q.getText().toString();
                    paint2.getTextBounds(charSequence, 0, charSequence.length(), rect);
                    width2 -= rect.width();
                }
                TextView textView4 = this.mn;
                if (textView4 != null) {
                    TextPaint paint3 = textView4.getPaint();
                    String charSequence2 = this.mn.getText().toString();
                    paint3.getTextBounds(charSequence2, 0, charSequence2.length(), rect);
                    width2 -= rect.width();
                }
                TextView textView5 = this.jy;
                if (textView5 != null) {
                    TextPaint paint4 = textView5.getPaint();
                    String charSequence3 = this.jy.getText().toString();
                    paint4.getTextBounds(charSequence3, 0, charSequence3.length(), rect);
                    width2 -= rect.width();
                }
                if (width2 <= 0) {
                    ((LinearLayout.LayoutParams) this.ig.getLayoutParams()).weight = 1.0f;
                }
            }
            if (i2 == 1) {
                this.ig.setText(str);
            } else if (!TextUtils.isEmpty(this.le)) {
                this.ig.setText(String.format(" 备案号：%1$s", this.le));
            }
        } else {
            str = "";
        }
        TextView textView6 = this.mp;
        if (textView6 != null) {
            textView6.setSelected(true);
            String format2 = TextUtils.isEmpty(this.k) ? String.format("开发者：%1$s", "补充中，可于应用官网查看") : String.format("开发者：%1$s", this.k);
            if (i2 == 2) {
                format2 = awf.i(format2, "  ", str);
            }
            this.mp.setText(format2);
        }
    }

    public s p(String str) {
        this.r = str;
        return this;
    }

    public String p() {
        return this.n;
    }

    public s s(String str) {
        this.i = str;
        return this;
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        ox();
    }
}
