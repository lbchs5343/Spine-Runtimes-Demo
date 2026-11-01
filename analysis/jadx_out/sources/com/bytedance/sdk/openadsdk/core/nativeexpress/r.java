package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.v;
import g.dlv;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class r {

    /* renamed from: d, reason: collision with root package name */
    private int f3265d;
    private double dq;
    private int ia;
    private List<dlv> iw;
    private NativeExpressView kk;
    private boolean mn = true;
    private List<com.bytedance.sdk.openadsdk.core.r.f> ox;
    private int p;
    private String s;

    public r(j jVar, JSONObject jSONObject, NativeExpressView nativeExpressView) {
        com.bytedance.sdk.openadsdk.core.r.f dq;
        this.p = -1;
        this.ia = -1;
        this.kk = nativeExpressView;
        this.ia = c.dq(jVar);
        if (jSONObject != null) {
            this.dq = jSONObject.optDouble("slide_threshold", 0.0d);
            this.f3265d = jSONObject.optInt("direction", 30);
            this.p = jSONObject.optInt("type", -1);
            this.s = jSONObject.optString("rgb_color");
            JSONArray optJSONArray = jSONObject.optJSONArray("rects");
            if (optJSONArray != null) {
                this.ox = new ArrayList();
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject = optJSONArray.optJSONObject(i);
                    if (optJSONObject != null && (dq = com.bytedance.sdk.openadsdk.core.r.f.dq(optJSONObject)) != null) {
                        this.ox.add(dq);
                    }
                }
            }
        }
        List<com.bytedance.sdk.openadsdk.core.r.f> list = this.ox;
        com.bytedance.sdk.component.utils.ig.dq("xdy", "priority:" + this.ia + " dirction:" + this.f3265d + " type:" + this.p + " hold:" + this.dq + " size:" + (list != null ? list.size() : 0));
    }

    public void d() {
        this.kk.r();
    }

    public void dq(MotionEvent motionEvent) {
        this.kk.dq(motionEvent);
    }

    public void dq(View view, int i, com.bytedance.sdk.component.adexpress.ox oxVar, v vVar) {
        NativeExpressView nativeExpressView = this.kk;
        if (nativeExpressView != null) {
            nativeExpressView.dq(view, i, oxVar, vVar);
        }
    }

    public void dq(NativeExpressView nativeExpressView) {
        if (this.ox != null) {
            Context context = nativeExpressView.getContext();
            for (com.bytedance.sdk.openadsdk.core.r.f fVar : this.ox) {
                View siteGestureView = new SiteGestureView(context, new v(this.p, this.dq, this.f3265d, this.ia), this);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(ce.ox(context, (float) fVar.ox), ce.ox(context, (float) fVar.p));
                layoutParams.leftMargin = ce.ox(context, (float) fVar.dq);
                layoutParams.topMargin = ce.ox(context, (float) fVar.f3439d);
                try {
                    if (!TextUtils.isEmpty(this.s) && com.bytedance.sdk.component.utils.ig.ox()) {
                        siteGestureView.setBackgroundColor(Color.parseColor(this.s));
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                nativeExpressView.addView(siteGestureView, layoutParams);
                com.bytedance.sdk.component.utils.ig.dq("xdy", "(" + fVar.dq + "," + fVar.f3439d + "," + fVar.ox + "," + fVar.p + ")");
            }
        }
    }

    public void dq(List<dlv> list) {
        this.iw = list;
    }

    public boolean dq() {
        View kk;
        List<dlv> list = this.iw;
        if (list == null || list.size() == 0) {
            return false;
        }
        for (dlv dlvVar : this.iw) {
            if (dlvVar != null && (kk = dlvVar.kk()) != null && kk.getVisibility() == 0) {
                return true;
            }
        }
        return false;
    }

    public boolean ox() {
        return this.mn;
    }

    public void p() {
        this.mn = false;
    }
}
