package com.bytedance.sdk.openadsdk.jy;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.f.d.ox.p;
import java.util.Map;

/* loaded from: classes3.dex */
public class ox {
    private String dq;

    private boolean d(String str) {
        return !TextUtils.equals(str, "0");
    }

    private void dq(String str) {
        if (!TextUtils.equals(this.dq, str)) {
            com.bytedance.sdk.openadsdk.core.live.d.dq().dq("setSensorEnable", !TextUtils.equals(str, "0"));
        }
        this.dq = str;
    }

    private boolean iw() {
        String mp = no.ia().mp();
        if (TextUtils.isEmpty(mp)) {
            return false;
        }
        mp.getClass();
        switch (mp) {
        }
        return false;
    }

    private Map<String, Object> s() {
        p kk;
        if (op.f3334d >= 6408 && (kk = no.ia().kk()) != null) {
            return kk.mp();
        }
        return null;
    }

    public String d() {
        Map<String, Object> s = s();
        if (s == null) {
            return null;
        }
        Object obj = s.get("od");
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public String dq() {
        Map<String, Object> s;
        try {
            s = s();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        if (s == null) {
            dq(null);
            return null;
        }
        Object obj = s.get("motion_info");
        if (obj instanceof String) {
            if (TextUtils.equals("0", (String) obj)) {
                dq("0");
                return "0";
            }
            dq("1");
            return "1";
        }
        dq(null);
        return null;
    }

    public boolean ox() {
        return !TextUtils.equals(dq(), "0");
    }

    public boolean p() {
        if (iw()) {
            return d(d());
        }
        return true;
    }
}
