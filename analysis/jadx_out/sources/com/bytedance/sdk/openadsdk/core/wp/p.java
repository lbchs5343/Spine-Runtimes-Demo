package com.bytedance.sdk.openadsdk.core.wp;

import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p extends ia {
    public p(Result result, int i) {
        super(result, i);
    }

    public iw d() {
        ValueSet values;
        if (ox() == null || (values = ox().values()) == null) {
            return null;
        }
        return new iw((JSONObject) values.objectValue(4, JSONObject.class));
    }

    public boolean dq() {
        if (ox() != null) {
            return ox().isSuccess();
        }
        return false;
    }
}
