package com.bytedance.sdk.openadsdk.core.d.dq;

import android.content.Context;
import android.graphics.Point;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public class d extends dq {
    public d() {
    }

    public d(j jVar, Context context) {
        this.dq = jVar;
        this.f2787d = context;
    }

    public boolean d(View view) {
        if (view != null && this.dq != null) {
            String valueOf = String.valueOf(view.getTag(2097610717));
            if (view.getTag(2097610717) != null && !TextUtils.isEmpty(valueOf)) {
                if ("click".equals(valueOf)) {
                    return this.ox.s();
                }
                return true;
            }
            Context context = this.f2787d;
            if (context == null) {
                context = wp.getContext();
            }
            if (dq(view, context)) {
                return this.dq.n() != 1 || this.ox.s();
            }
            if (this.dq.bl() == 1 && !this.ox.s()) {
                return false;
            }
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq
    public int dq(Map<String, Object> map, ox oxVar) {
        return !d(this.p) ? 1 : 0;
    }

    public boolean dq(View view, Context context) {
        int id = view.getId();
        List<Integer> no = this.ox.no();
        if (no != null && no.size() == 0) {
            no.add(2114387835);
            no.add(2114387869);
            no.add(2114387636);
            no.add(2114387469);
            no.add(2114387471);
            no.add(2114387962);
            no.add(2114387731);
            no.add(2114387628);
        }
        return no != null && no.contains(Integer.valueOf(id));
    }

    public boolean dq(View view, Point point) {
        int i;
        int i2;
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                View childAt = viewGroup.getChildAt(i3);
                Context context = this.f2787d;
                if (context == null) {
                    context = wp.getContext();
                }
                if (dq(childAt, context)) {
                    int[] iArr = new int[2];
                    childAt.getLocationOnScreen(iArr);
                    int i4 = point.x;
                    int i5 = iArr[0];
                    return i4 >= i5 && i4 <= childAt.getWidth() + i5 && (i = point.y) >= (i2 = iArr[1]) && i <= childAt.getHeight() + i2;
                }
                if (dq(childAt, point)) {
                    return true;
                }
            }
        }
        return false;
    }
}
