package com.bytedance.sdk.openadsdk.core.ugeno.component.interact;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.ce;
import com.bytedance.sdk.openadsdk.core.r.f;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class TouchWebView extends WebView {

    /* renamed from: d, reason: collision with root package name */
    private j f3558d;
    private f dq;

    public TouchWebView(Context context) {
        super(context);
    }

    private void dq(boolean z, float f2, float f3) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("convert", z ? 1 : 0);
            jSONObject.put("down_x", f2);
            jSONObject.put("down_y", f3);
        } catch (Exception e2) {
            ig.dq("xeasy", "e:" + e2.getMessage());
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.dq(this.f3558d, "easy_play_click", jSONObject);
    }

    public void dq(j jVar, f fVar) {
        this.f3558d = jVar;
        this.dq = fVar;
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            motionEvent.getRawX();
            motionEvent.getRawY();
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int p = ce.p(getContext(), x);
            int p2 = ce.p(getContext(), y);
            f fVar = this.dq;
            if (fVar != null && !fVar.dq(p, p2)) {
                ig.dq("xeasy", "nc");
                dq(false, x, y);
                return false;
            }
            ig.dq("xeasy", "c");
            dq(true, x, y);
        }
        return super.onTouchEvent(motionEvent);
    }
}
