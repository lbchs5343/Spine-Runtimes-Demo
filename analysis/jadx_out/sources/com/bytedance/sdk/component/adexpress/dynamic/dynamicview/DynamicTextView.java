package com.bytedance.sdk.component.adexpress.dynamic.dynamicview;

import android.content.Context;
import android.text.TextUtils;
import android.view.ViewGroup;
import android.widget.TextView;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.component.adexpress.dynamic.ox.ia;
import com.bytedance.sdk.component.adexpress.dynamic.p.no;
import com.bytedance.sdk.component.adexpress.p.mn;
import com.bytedance.sdk.component.adexpress.widget.AnimationText;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.component.utils.r;
import g.abn;
import g.awf;
import java.text.DecimalFormat;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;

/* loaded from: classes.dex */
public class DynamicTextView extends DynamicBaseWidgetImp {
    public DynamicTextView(Context context, DynamicRootView dynamicRootView, ia iaVar) {
        super(context, dynamicRootView, iaVar);
        this.ia += 6;
        if (this.ig.wn()) {
            AnimationText animationText = new AnimationText(context, this.ig.mn(), this.ig.s(), 1, this.ig.ia());
            this.jy = animationText;
            animationText.setMaxLines(1);
        } else {
            TextView textView = new TextView(context);
            this.jy = textView;
            textView.setIncludeFontPadding(false);
        }
        this.jy.setTag(Integer.valueOf(getClickArea()));
        addView(this.jy, getWidgetLayoutParams());
    }

    private boolean kk() {
        DynamicRootView dynamicRootView = this.q;
        return (dynamicRootView == null || dynamicRootView.getRenderRequest() == null || this.q.getRenderRequest().no() == 4) ? false : true;
    }

    private void no() {
        if (this.jy instanceof AnimationText) {
            String text = getText();
            ArrayList arrayList = new ArrayList();
            try {
                JSONArray jSONArray = new JSONArray(text);
                for (int i = 0; i < jSONArray.length(); i++) {
                    arrayList.add(jSONArray.optString(i));
                }
            } catch (JSONException e2) {
                e2.printStackTrace();
                arrayList.add(text);
            }
            ((AnimationText) this.jy).setMaxLines(1);
            ((AnimationText) this.jy).setTextColor(this.ig.mn());
            ((AnimationText) this.jy).setTextSize(this.ig.s());
            ((AnimationText) this.jy).setAnimationText(arrayList);
            ((AnimationText) this.jy).setAnimationType(this.ig.nh());
            ((AnimationText) this.jy).setAnimationDuration(this.ig.j() * 1000);
            ((AnimationText) this.jy).dq();
        }
    }

    private void o() {
        int dq;
        if (awf.h(this.mp, abn.EXTRA_SOURCE) || awf.h(this.mp, abn.EXTRA_TITLE) || awf.h(this.mp, "text_star")) {
            int[] d2 = no.d(this.ig.iw(), this.ig.s(), true);
            int dq2 = (int) mn.dq(getContext(), this.ig.d());
            int dq3 = (int) mn.dq(getContext(), this.ig.ox());
            int dq4 = (int) mn.dq(getContext(), this.ig.p());
            int dq5 = (int) mn.dq(getContext(), this.ig.dq());
            int min = Math.min(dq2, dq5);
            if (awf.h(this.mp, abn.EXTRA_SOURCE) && (dq = ((this.ia - ((int) mn.dq(getContext(), this.ig.s()))) - dq2) - dq5) > 1 && dq <= min * 2) {
                int i = dq / 2;
                this.jy.setPadding(dq3, dq2 - i, dq4, dq5 - (dq - i));
                return;
            }
            int i2 = (((d2[1] + dq2) + dq5) - this.ia) - 2;
            if (i2 <= 1) {
                return;
            }
            if (i2 <= min * 2) {
                int i3 = i2 / 2;
                this.jy.setPadding(dq3, dq2 - i3, dq4, dq5 - (i2 - i3));
            } else if (i2 > dq2 + dq5) {
                final int i4 = (i2 - dq2) - dq5;
                this.jy.setPadding(dq3, 0, dq4, 0);
                if (i4 <= ((int) mn.dq(getContext(), 1.0f)) + 1) {
                    ((TextView) this.jy).setTextSize(this.ig.s() - 1.0f);
                } else if (i4 <= (((int) mn.dq(getContext(), 1.0f)) + 1) * 2) {
                    ((TextView) this.jy).setTextSize(this.ig.s() - 2.0f);
                } else {
                    post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicTextView.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ViewGroup.LayoutParams layoutParams = DynamicTextView.this.jy.getLayoutParams();
                                DynamicTextView dynamicTextView = DynamicTextView.this;
                                layoutParams.height = dynamicTextView.ia + i4;
                                dynamicTextView.jy.setLayoutParams(layoutParams);
                                DynamicTextView.this.jy.setTranslationY(-i4);
                                ((ViewGroup) DynamicTextView.this.jy.getParent()).setClipChildren(false);
                                ((ViewGroup) DynamicTextView.this.jy.getParent().getParent()).setClipChildren(false);
                            } catch (Throwable unused) {
                            }
                        }
                    });
                }
            } else if (dq2 > dq5) {
                this.jy.setPadding(dq3, dq2 - (i2 - min), dq4, dq5 - min);
            } else {
                this.jy.setPadding(dq3, dq2 - min, dq4, dq5 - (i2 - min));
            }
        }
        if (awf.h(this.mp, "fillButton")) {
            this.jy.setTextAlignment(2);
            ((TextView) this.jy).setGravity(17);
        }
    }

    public void dq(TextView textView, int i, Context context, String str) {
        textView.setText("(" + String.format(r.dq(context, str), Integer.valueOf(i)) + ")");
        if (i == -1) {
            textView.setVisibility(8);
        }
    }

    public String getText() {
        String iw = this.ig.iw();
        if (TextUtils.isEmpty(iw)) {
            if (!com.bytedance.sdk.component.adexpress.p.dq() && awf.h(this.mp, "text_star")) {
                iw = "5";
            }
            if (!com.bytedance.sdk.component.adexpress.p.dq() && awf.h(this.mp, "score-count")) {
                iw = "6870";
            }
        }
        return (awf.h(this.mp, abn.EXTRA_TITLE) || awf.h(this.mp, MediaFormat.KEY_SUBTITLE)) ? iw.replace("\n", "") : iw;
    }

    @Override // com.bytedance.sdk.component.adexpress.dynamic.dynamicview.DynamicBaseWidgetImp, com.bytedance.sdk.component.adexpress.dynamic.dynamicview.p
    public boolean ia() {
        int i;
        double d2;
        super.ia();
        if (TextUtils.isEmpty(getText())) {
            this.jy.setVisibility(4);
            return true;
        }
        if (this.ig.wn()) {
            no();
            return true;
        }
        ((TextView) this.jy).setText(this.ig.iw());
        ((TextView) this.jy).setTextDirection(5);
        this.jy.setTextAlignment(this.ig.ia());
        ((TextView) this.jy).setTextColor(this.ig.mn());
        ((TextView) this.jy).setTextSize(this.ig.s());
        if (this.ig.le()) {
            int k = this.ig.k();
            if (k > 0) {
                ((TextView) this.jy).setLines(k);
                ((TextView) this.jy).setEllipsize(TextUtils.TruncateAt.END);
            }
        } else {
            ((TextView) this.jy).setMaxLines(1);
            ((TextView) this.jy).setGravity(17);
            ((TextView) this.jy).setEllipsize(TextUtils.TruncateAt.END);
        }
        ia iaVar = this.mp;
        if (iaVar != null && iaVar.o() != null) {
            if (com.bytedance.sdk.component.adexpress.p.dq() && kk() && (awf.h(this.mp, "text_star") || awf.h(this.mp, "score-count") || awf.h(this.mp, "score-count-type-1") || awf.h(this.mp, "score-count-type-2"))) {
                setVisibility(8);
                return true;
            }
            if (awf.h(this.mp, "score-count") || awf.h(this.mp, "score-count-type-2")) {
                try {
                    try {
                        i = Integer.parseInt(getText());
                    } catch (NumberFormatException unused) {
                        i = -1;
                    }
                    if (i < 0) {
                        if (com.bytedance.sdk.component.adexpress.p.dq()) {
                            setVisibility(8);
                            return true;
                        }
                        this.jy.setVisibility(0);
                    }
                    if (TextUtils.equals(this.mp.o().getType(), "score-count-type-2")) {
                        ((TextView) this.jy).setText(String.format(new DecimalFormat("(###,###,###)").format(i), Integer.valueOf(i)));
                        ((TextView) this.jy).setGravity(17);
                        return true;
                    }
                    dq((TextView) this.jy, i, getContext(), "tt_comment_num");
                } catch (Exception unused2) {
                }
            } else if (awf.h(this.mp, "text_star")) {
                try {
                    d2 = Double.parseDouble(getText());
                } catch (Exception e2) {
                    ig.p("DynamicStarView applyNativeStyle", e2.toString());
                    d2 = -1.0d;
                }
                if (d2 < 0.0d || d2 > 5.0d) {
                    if (com.bytedance.sdk.component.adexpress.p.dq()) {
                        setVisibility(8);
                        return true;
                    }
                    this.jy.setVisibility(0);
                }
                ((TextView) this.jy).setIncludeFontPadding(false);
                ((TextView) this.jy).setText(String.format("%.1f", Double.valueOf(d2)));
            } else if (TextUtils.equals("privacy-detail", this.mp.o().getType())) {
                ((TextView) this.jy).setText("功能 | 权限 | 隐私");
            } else if (awf.h(this.mp, "development-name")) {
                ((TextView) this.jy).setText(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_text_privacy_development") + getText());
            } else if (awf.h(this.mp, "app-version")) {
                ((TextView) this.jy).setText(r.dq(com.bytedance.sdk.component.adexpress.p.getContext(), "tt_text_privacy_app_version") + getText());
            } else {
                ((TextView) this.jy).setText(getText());
            }
            this.jy.setTextAlignment(this.ig.ia());
            ((TextView) this.jy).setGravity(this.ig.kk());
            if (com.bytedance.sdk.component.adexpress.p.dq()) {
                o();
            }
        }
        return true;
    }
}
