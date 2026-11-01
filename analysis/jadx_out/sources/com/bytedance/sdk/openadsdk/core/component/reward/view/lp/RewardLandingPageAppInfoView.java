package com.bytedance.sdk.openadsdk.core.component.reward.view.lp;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.s;
import g.tn;

/* loaded from: classes3.dex */
public class RewardLandingPageAppInfoView extends LinearLayout {
    private DownloadItemView dq;

    public RewardLandingPageAppInfoView(Context context) {
        super(context);
    }

    private View d(Context context, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(context);
        textView.setText("功能");
        textView.setTextColor(Color.parseColor("#262626"));
        textView.setTextSize(2, 10.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        textView.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(0, i);
        layoutParams.rightMargin = ce.ox(context, 6.0f);
        relativeLayout.addView(textView, layoutParams);
        int ox = ce.ox(context, 6.0f);
        ce.dq(textView, ox, ox, 0, 0);
        return textView;
    }

    private View dq(Context context, RelativeLayout relativeLayout) {
        TextView textView = new TextView(context);
        textView.setText("隐私");
        textView.setTextColor(Color.parseColor("#262626"));
        textView.setTextSize(2, 10.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        textView.setId(View.generateViewId());
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(11, -1);
        relativeLayout.addView(textView, layoutParams);
        int ox = ce.ox(context, 6.0f);
        ce.dq(textView, ox, ox, 0, 0);
        return textView;
    }

    private View dq(Context context, RelativeLayout relativeLayout, int i) {
        View view = new View(context);
        view.setBackgroundColor(Color.parseColor("#22000000"));
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(ce.ox(context, 1.5f), ce.ox(context, 8.0f));
        layoutParams.rightMargin = ce.ox(context, 6.0f);
        view.setId(View.generateViewId());
        layoutParams.addRule(0, i);
        layoutParams.addRule(15, -1);
        relativeLayout.addView(view, layoutParams);
        return view;
    }

    private View dq(final Context context, final j jVar, s sVar, final String str) {
        RelativeLayout relativeLayout = new RelativeLayout(context);
        TextView textView = new TextView(context);
        textView.setText("版本号：" + sVar.s());
        textView.setTextColor(Color.parseColor("#888888"));
        textView.setTextSize(2, 10.0f);
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            textView.setLineHeight(10);
        }
        ViewGroup.LayoutParams ac = tn.ac(-2, -2, 9, -1);
        textView.setId(View.generateViewId());
        relativeLayout.addView(textView, ac);
        String o = sVar.o();
        if (!TextUtils.isEmpty(o)) {
            TextView textView2 = new TextView(context);
            textView2.setText("  备案号：" + o);
            textView2.setTextColor(Color.parseColor("#888888"));
            textView2.setTextSize(2, 10.0f);
            if (i >= 28) {
                textView2.setLineHeight(10);
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(1, textView.getId());
            relativeLayout.addView(textView2, layoutParams);
        }
        View dq = dq(context, relativeLayout);
        dq.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardLandingPageAppInfoView.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                iw.dq(jVar, context, str);
            }
        });
        View ox = ox(context, relativeLayout, dq(context, relativeLayout, dq.getId()).getId());
        ox.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardLandingPageAppInfoView.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                iw.d(jVar, context, str);
            }
        });
        d(context, relativeLayout, dq(context, relativeLayout, ox.getId()).getId()).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.view.lp.RewardLandingPageAppInfoView.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                iw.dq(context, jVar, str);
            }
        });
        return relativeLayout;
    }

    private View dq(Context context, s sVar) {
        TextView textView = new TextView(context);
        textView.setText(sVar.mn());
        textView.setTextColor(Color.parseColor("#888888"));
        textView.setTextSize(2, 10.0f);
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        return textView;
    }

    private void dq(j jVar) {
        DownloadItemView downloadItemView = new DownloadItemView(getContext());
        this.dq = downloadItemView;
        downloadItemView.dq(jVar);
        addView(this.dq);
    }

    private View ox(Context context, RelativeLayout relativeLayout, int i) {
        TextView textView = new TextView(context);
        textView.setText("权限");
        textView.setTextColor(Color.parseColor("#262626"));
        textView.setTextSize(2, 10.0f);
        textView.setId(View.generateViewId());
        if (Build.VERSION.SDK_INT >= 28) {
            textView.setLineHeight(10);
        }
        RelativeLayout.LayoutParams ac = tn.ac(-2, -2, 0, i);
        ac.rightMargin = ce.ox(context, 6.0f);
        relativeLayout.addView(textView, ac);
        int ox = ce.ox(context, 6.0f);
        ce.dq(textView, ox, ox, 0, 0);
        return textView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        super.dispatchTouchEvent(motionEvent);
        return true;
    }

    public void dq(j jVar, String str) {
        if (jVar == null) {
            return;
        }
        setBackgroundColor(-1);
        setOrientation(1);
        Context context = getContext();
        dq(jVar);
        s hy = jVar.hy();
        if (hy == null) {
            return;
        }
        int ox = ce.ox(context, 12.0f);
        View dq = dq(context, hy);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        layoutParams.topMargin = ox;
        addView(dq, layoutParams);
        View dq2 = dq(context, jVar, hy, str);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
        layoutParams2.topMargin = ox;
        addView(dq2, layoutParams2);
        int ox2 = ce.ox(context, 16.0f);
        setPadding(ox2, ox, ox2, ox);
    }

    public void setDownLoadClickListener(View.OnClickListener onClickListener) {
        DownloadItemView downloadItemView = this.dq;
        if (downloadItemView == null || onClickListener == null) {
            return;
        }
        downloadItemView.setOnClickListener(onClickListener);
    }
}
