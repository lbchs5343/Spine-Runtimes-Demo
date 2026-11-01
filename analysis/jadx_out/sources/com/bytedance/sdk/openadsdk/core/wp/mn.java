package com.bytedance.sdk.openadsdk.core.wp;

import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.Result;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.hat;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public abstract class mn implements EventListener {
    private void dq(Result result) {
        if (result != null) {
            try {
                ValueSet values = result.values();
                if (values != null) {
                    String stringValue = values.stringValue(6);
                    JSONObject jSONObject = (JSONObject) values.objectValue(7, JSONObject.class);
                    jSONObject.put(TTDownloadField.TT_LABEL, stringValue);
                    com.bytedance.sdk.component.ia.d.p.dq.dq dqVar = new com.bytedance.sdk.component.ia.d.p.dq.dq(UUID.randomUUID().toString(), jSONObject);
                    dqVar.dq((byte) 0);
                    dqVar.d((byte) 2);
                    com.bytedance.sdk.component.ia.d.dq.dq(dqVar, "csj");
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        }
    }

    public ValueSet d(int i) {
        hat f2 = hat.f();
        f2.f19148c.put(32, String.valueOf(c.s()));
        return f2.k();
    }

    public ValueSet d(int i, Result result) {
        JSONObject jw = wp.d().jw();
        if (jw == null) {
            return null;
        }
        hat f2 = hat.f();
        f2.f19148c.put(33, jw);
        return f2.k();
    }

    public ValueSet dq(int i) {
        hat f2 = hat.f();
        f2.f19148c.put(31, i.ox());
        return f2.k();
    }

    public ValueSet dq(int i, Result result) {
        return null;
    }

    public ValueSet dq(int i, ia iaVar) {
        return null;
    }

    public ValueSet dq(int i, p pVar) {
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.EventListener
    public ValueSet onEvent(int i, Result result) {
        if (i == 1) {
            return dq(i);
        }
        if (i == 6) {
            return dq(i, new p(result, i));
        }
        if (i == 3) {
            return d(i, result);
        }
        if (i == 4) {
            return d(i);
        }
        switch (i) {
            case 8:
                return dq(i, new ia(result, i));
            case 9:
                return dq(i, result);
            case 10:
                dq(result);
                return null;
            default:
                return null;
        }
    }
}
