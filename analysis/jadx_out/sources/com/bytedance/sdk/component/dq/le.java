package com.bytedance.sdk.component.dq;

import android.text.TextUtils;
import g.tn;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
class le {

    /* renamed from: d, reason: collision with root package name */
    private final Map<String, i> f1873d;
    private final Collection<String> dq;
    private final no ox;
    private final Set<dq> p;

    public interface dq {
    }

    private i dq(String str, JSONObject jSONObject) {
        i iVar = this.f1873d.get(str);
        if (iVar == null) {
            i iVar2 = new i(str, this.ox.ox(), this.ox.dq(), this.ox.d(), jSONObject);
            this.f1873d.put(str, iVar2);
            return iVar2;
        }
        if (jSONObject != null) {
            iVar.update(jSONObject);
        }
        return iVar;
    }

    public void d(dq dqVar) {
        this.p.remove(dqVar);
    }

    public i dq(String str) {
        if (this.dq.contains(str) || TextUtils.equals(str, "host")) {
            return dq(str, null);
        }
        throw new IllegalArgumentException(tn.ad("Namespace: ", str, " not registered."));
    }

    public void dq(dq dqVar) {
        this.p.add(dqVar);
    }
}
