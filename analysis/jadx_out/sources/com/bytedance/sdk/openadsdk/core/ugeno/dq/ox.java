package com.bytedance.sdk.openadsdk.core.ugeno.dq;

import android.content.Context;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.core.r.j;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox extends com.bytedance.sdk.openadsdk.core.ugeno.ox.ox {
    public ox(Context context, j jVar, com.bytedance.sdk.openadsdk.core.ugeno.ox.dq dqVar, ViewGroup viewGroup) {
        super(context, jVar, dqVar, viewGroup);
    }

    private JSONObject mp() {
        try {
            return new JSONObject(dq.dq(this.iw, this.mn).dq(this.iw));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox.ox
    public JSONObject dq() {
        return mp();
    }

    @Override // com.bytedance.sdk.openadsdk.core.ugeno.ox.ox, com.bytedance.sdk.component.adexpress.d.p
    public int ox() {
        return 8;
    }
}
