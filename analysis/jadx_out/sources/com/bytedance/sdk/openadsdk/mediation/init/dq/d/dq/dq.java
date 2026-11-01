package com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq;

import com.bykv.vk.openvk.api.proto.ValueSet;
import g.hat;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    public final ValueSet dq;

    public dq(ValueSet valueSet) {
        this.dq = valueSet == null ? hat.f19147b : valueSet;
    }

    public boolean d() {
        return this.dq.booleanValue(264102);
    }

    public String dq() {
        return (String) this.dq.objectValue(264101, String.class);
    }

    public boolean ia() {
        return this.dq.booleanValue(264108);
    }

    public JSONObject iw() {
        return (JSONObject) this.dq.objectValue(264106, JSONObject.class);
    }

    public boolean kk() {
        return this.dq.booleanValue(264109);
    }

    public String mn() {
        return (String) this.dq.objectValue(264107, String.class);
    }

    public String no() {
        return (String) this.dq.objectValue(264111, String.class);
    }

    public boolean o() {
        return this.dq.booleanValue(264110);
    }

    public ox ox() {
        ValueSet valueSet = (ValueSet) this.dq.objectValue(264103, ValueSet.class);
        if (valueSet != null) {
            return new ox(valueSet);
        }
        return null;
    }

    public Map<String, Object> p() {
        return (Map) this.dq.objectValue(264104, Map.class);
    }

    public boolean s() {
        return this.dq.booleanValue(264105);
    }
}
