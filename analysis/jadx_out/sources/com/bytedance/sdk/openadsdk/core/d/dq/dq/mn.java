package com.bytedance.sdk.openadsdk.core.d.dq.dq;

import android.view.View;
import com.bytedance.sdk.openadsdk.core.ir.c;
import java.util.Map;

/* loaded from: classes3.dex */
public class mn extends d {
    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d
    public int d(Map<String, Object> map) {
        View view = this.p;
        if (view == null) {
            return 1;
        }
        boolean p = c.p(view.getContext(), this.dq.ux());
        map.put("is_need_report_click_call", Boolean.TRUE);
        map.put("convert_res", Boolean.valueOf(p));
        return 0;
    }
}
