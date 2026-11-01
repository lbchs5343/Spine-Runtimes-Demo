package com.bytedance.sdk.openadsdk.core.d.dq.dq;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wn;
import java.util.Map;

/* loaded from: classes3.dex */
public class ia extends d {
    private void d(com.bytedance.sdk.openadsdk.core.o.d.ox oxVar) {
        com.bytedance.sdk.openadsdk.core.r.o oVar;
        if (oxVar == null || this.p == null || this.f2787d == null || (oVar = this.ox) == null) {
            return;
        }
        if (oVar.i()) {
            oxVar.d(true);
            return;
        }
        try {
            View view = this.p;
            if (view instanceof TextView) {
                if (view instanceof TextView) {
                    CharSequence text = ((TextView) view).getText();
                    if (TextUtils.isEmpty(text)) {
                        return;
                    }
                    if (!text.toString().contains("下载")) {
                        return;
                    }
                }
                Resources resources = this.f2787d.getResources();
                if (resources == null) {
                    return;
                }
                String resourceEntryName = resources.getResourceEntryName(this.p.getId());
                if (!TextUtils.isEmpty(resourceEntryName) && resourceEntryName.startsWith("tt")) {
                    oxVar.d(true);
                }
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.d.dq.dq.d
    public int d(Map<String, Object> map) {
        iw iwVar;
        if (wn.dq(this.dq, this.s.mp()) && !"feed_video_middle_page".equals(this.s.no())) {
            return !this.iw.dq(map, true, c.dq(this.s.kk()), this.s.iw(), false, true) ? 1 : 0;
        }
        if (this.ox != null && (iwVar = this.s) != null && iwVar.cd() != null) {
            kk kkVar = new kk();
            kkVar.s = this.s;
            kkVar.dq(this.s.d());
            kkVar.dq(this.s.mp());
            kkVar.dq(this.f2787d);
            kkVar.ox(this.s.iw());
            kkVar.iw = this.iw;
            return kkVar.d(map);
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox ia = this.s.ia();
        if (ia == null) {
            return 1;
        }
        d(ia);
        ox(map);
        ia.p(this.p instanceof Button);
        j jVar = this.dq;
        com.bytedance.sdk.openadsdk.core.r.o oVar = this.ox;
        ia.dq(jVar, oVar != null && oVar.dq());
        map.put("convert_res", Boolean.TRUE);
        this.iw.d();
        return 0;
    }
}
