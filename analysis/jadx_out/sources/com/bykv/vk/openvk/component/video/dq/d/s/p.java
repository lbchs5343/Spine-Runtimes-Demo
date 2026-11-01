package com.bykv.vk.openvk.component.video.dq.d.s;

import android.text.TextUtils;
import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.q;
import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
public class p implements d {
    private ig dq;

    public p() {
        this.dq = null;
        this.dq = com.bykv.vk.openvk.component.video.api.ox.ox();
    }

    @Override // com.bykv.vk.openvk.component.video.dq.d.s.d
    public dq dq(s sVar) throws IOException {
        q.dq dqVar = new q.dq();
        try {
            Map<String, String> map = sVar.s;
            if (map != null) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    if (!TextUtils.isEmpty(key)) {
                        String value = entry.getValue();
                        if (value == null) {
                            value = "";
                        }
                        dqVar.d(key, value);
                    }
                }
            }
            f dq = this.dq.dq(dqVar.dq(sVar.f555d).dq().d()).dq();
            com.bykv.vk.openvk.component.video.api.iw.ox.dq("NetworkSoureVolleyImpl", "response code = ", Integer.valueOf(dq.ox()));
            return new iw(dq, sVar);
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }
}
