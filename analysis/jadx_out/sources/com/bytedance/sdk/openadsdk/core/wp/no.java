package com.bytedance.sdk.openadsdk.core.wp;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.ats.AutoService;
import com.bytedance.sdk.openadsdk.core.r.j;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class no {
    private static final HashMap<String, ig> dq = new HashMap<>();

    public static void dq(j jVar) {
        ox oxVar = (ox) AutoService.dq(ox.class);
        if (oxVar != null && oxVar.p() && oxVar.ox() && o.d() && jVar != null && jVar.ds() != null) {
            String el = jVar.el();
            String fa = jVar.fa();
            String mn = jVar.ds().mn();
            if (TextUtils.isEmpty(mn)) {
                return;
            }
            ig igVar = new ig();
            igVar.dq(1);
            igVar.dq(el);
            igVar.d(fa);
            dq.put(mn, igVar);
        }
    }
}
