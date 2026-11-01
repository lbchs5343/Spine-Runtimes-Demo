package com.bytedance.sdk.openadsdk.core.d.dq.dq;

import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.i;
import com.bytedance.sdk.openadsdk.f.d.d.q;
import java.util.Map;

/* loaded from: classes3.dex */
public class kk extends d {
    protected boolean mn = false;

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d
    public int d(Map<String, Object> map) {
        boolean z;
        String str;
        boolean z2;
        boolean z3;
        String no = this.s.no();
        if (this.s.s()) {
            if ((this.s.mp() instanceof q) || this.mn) {
                map.put("is_need_report_click_button", Boolean.TRUE);
            }
            boolean iw = this.s.iw();
            map.put("key_open_video_detail_page_direct", Boolean.TRUE);
            str = no;
            z2 = iw;
            z = false;
            z3 = false;
        } else {
            boolean ox = i.ox(this.dq);
            iw iwVar = this.s;
            String no2 = ox ? iwVar.no() : c.dq(iwVar.kk());
            this.s.dq(no2);
            this.s.d(ox);
            z = ox;
            str = no2;
            z2 = true;
            z3 = true;
        }
        ox(map);
        this.iw.dq(this.dq, map);
        return !this.iw.dq(map, z, str, z2, z3, false) ? 1 : 0;
    }

    public void s(boolean z) {
        this.mn = z;
    }
}
