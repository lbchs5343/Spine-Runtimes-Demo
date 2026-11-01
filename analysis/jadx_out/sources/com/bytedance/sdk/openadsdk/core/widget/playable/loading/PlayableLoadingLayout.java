package com.bytedance.sdk.openadsdk.core.widget.playable.loading;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.d.p;
import com.bytedance.sdk.openadsdk.res.s;
import com.bytedance.sdk.openadsdk.widget.TTLoadingProgressBar;
import java.util.Locale;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class PlayableLoadingLayout extends LinearLayout {

    /* renamed from: d, reason: collision with root package name */
    protected TextView f3713d;
    protected TTLoadingProgressBar dq;
    protected TextView ox;
    protected JSONObject p;

    public PlayableLoadingLayout(Context context, JSONObject jSONObject) {
        super(context);
        this.p = jSONObject;
    }

    public void d() {
        setVisibility(0);
    }

    public void dq() {
        setVisibility(8);
    }

    public void dq(Context context) {
        setVisibility(8);
        addView(s.ia(context));
        TTLoadingProgressBar tTLoadingProgressBar = (TTLoadingProgressBar) findViewById(2114387688);
        this.dq = tTLoadingProgressBar;
        tTLoadingProgressBar.getProgressBar().setBackgroundColor(Color.parseColor("#FC625C"));
        this.f3713d = (TextView) findViewById(2114387935);
        this.ox = (TextView) findViewById(2114387731);
        JSONObject jSONObject = this.p;
        if (jSONObject != null) {
            String optString = jSONObject.optString("button_text");
            if (TextUtils.isEmpty(optString)) {
                return;
            }
            this.ox.setText(optString);
        }
    }

    public void setBtnPlayOnClickListener(p pVar) {
        TextView textView = this.ox;
        if (textView == null || pVar == null) {
            return;
        }
        textView.setOnClickListener(pVar);
    }

    public void setBtnPlayOnTouchListener(p pVar) {
        TextView textView = this.ox;
        if (textView == null || pVar == null) {
            return;
        }
        textView.setOnTouchListener(pVar);
    }

    public void setProgress(int i) {
        if (i < 0) {
            i = 0;
        }
        if (i > 100) {
            i = 100;
        }
        TTLoadingProgressBar tTLoadingProgressBar = this.dq;
        if (tTLoadingProgressBar != null) {
            tTLoadingProgressBar.setProgress(i);
        }
        TextView textView = this.f3713d;
        if (textView != null) {
            textView.setText(String.format(Locale.getDefault(), "%d%%", Integer.valueOf(i)));
        }
    }
}
