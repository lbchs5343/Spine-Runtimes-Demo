package com.bytedance.sdk.gromore.dq.d;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.EventListener;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.ox;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.f.d.ox.dq f2302d;
    private ValueSet dq;
    private com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq ox;

    private dq(ValueSet valueSet) {
        this.dq = valueSet;
        if (valueSet != null) {
            com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = new com.bytedance.sdk.openadsdk.f.d.ox.dq(valueSet);
            this.f2302d = dqVar;
            this.ox = dqVar.q();
        }
    }

    public static dq dq(ValueSet valueSet) {
        return new dq(valueSet);
    }

    public Map<String, Object> cd() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.p();
        }
        return null;
    }

    public ValueSet d() {
        return this.dq;
    }

    public boolean dq() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.jy();
        }
        return false;
    }

    public Bridge e() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null && dqVar.p() != null) {
            Object obj = this.ox.p().get("qa_config_tool");
            if (obj instanceof Bridge) {
                return (Bridge) obj;
            }
        }
        return null;
    }

    public boolean f() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.d();
        }
        return false;
    }

    public ox fw() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.ox();
        }
        return null;
    }

    public boolean gh() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.s();
        }
        return false;
    }

    public Bridge h() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null && dqVar.p() != null) {
            Object obj = this.ox.p().get("qa_onetap_tool");
            if (obj instanceof Bridge) {
                return (Bridge) obj;
            }
        }
        return null;
    }

    public String i() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        return dqVar != null ? dqVar.mn() : "";
    }

    public String ia() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.p();
        }
        return null;
    }

    public boolean ig() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.o();
        }
        return false;
    }

    public String iw() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.d();
        }
        return null;
    }

    public Bridge ji() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null && dqVar.p() != null) {
            Object obj = this.ox.p().get("qa_preview_tool");
            if (obj instanceof Bridge) {
                return (Bridge) obj;
            }
        }
        return null;
    }

    public String jy() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.dq();
        }
        return null;
    }

    public boolean k() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.kk();
        }
        return false;
    }

    public String kk() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.s();
        }
        return null;
    }

    public Bridge kx() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null && dqVar.p() != null) {
            Object obj = this.ox.p().get("qa_event_tool");
            if (obj instanceof Bridge) {
                return (Bridge) obj;
            }
        }
        return null;
    }

    public boolean le() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.ia();
        }
        return false;
    }

    public boolean mn() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.ox();
        }
        return false;
    }

    public int[] mp() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.kk();
        }
        return null;
    }

    public boolean no() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.mn();
        }
        return false;
    }

    public int o() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.iw();
        }
        return 0;
    }

    public EventListener ox() {
        ValueSet valueSet = this.dq;
        if (valueSet != null) {
            return (EventListener) valueSet.objectValue(15, EventListener.class);
        }
        return null;
    }

    public boolean p() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.ia();
        }
        return false;
    }

    public Map<String, Object> q() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.f();
        }
        return null;
    }

    public JSONObject r() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.iw();
        }
        return null;
    }

    public String s() {
        com.bytedance.sdk.openadsdk.f.d.ox.dq dqVar = this.f2302d;
        if (dqVar != null) {
            return dqVar.dq();
        }
        return null;
    }

    public boolean wp() {
        com.bytedance.sdk.openadsdk.mediation.init.dq.d.dq.dq dqVar = this.ox;
        if (dqVar != null) {
            return dqVar.o();
        }
        return false;
    }
}
