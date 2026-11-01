package com.bykv.vk.openvk.component.video.dq;

import android.content.Context;
import android.os.Build;
import com.bykv.vk.openvk.component.video.api.dq.d;
import com.bykv.vk.openvk.component.video.api.iw.ox;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    public static int f556d = 10;
    public static int dq = 10;
    public static int ox = 10;
    public static int p = 10;
    private static d s;

    public static int d() {
        return dq;
    }

    public static void dq() {
        d dVar = s;
        if (dVar != null) {
            dVar.s();
        }
    }

    public static void dq(Context context) {
        com.bykv.vk.openvk.component.video.api.iw.dq.dq(context);
        if (Build.VERSION.SDK_INT < 23) {
            com.bykv.vk.openvk.component.video.dq.d.iw.dq.dq();
        }
    }

    public static void dq(d dVar) {
        s = dVar;
    }

    public static void dq(JSONObject jSONObject) {
        if (jSONObject == null) {
            return;
        }
        try {
            dq = jSONObject.optInt(MediationConstant.RIT_TYPE_SPLASH, 10);
            f556d = jSONObject.optInt("reward", 10);
            ox = jSONObject.optInt("brand", 10);
            int optInt = jSONObject.optInt("other", 10);
            p = optInt;
            if (dq < 0) {
                dq = 10;
            }
            if (f556d < 0) {
                f556d = 10;
            }
            if (ox < 0) {
                ox = 10;
            }
            if (optInt < 0) {
                p = 10;
            }
            ox.dq("MediaConfig", "splash=", Integer.valueOf(dq), ",reward=", Integer.valueOf(f556d), ",brand=", Integer.valueOf(ox), ",other=", Integer.valueOf(p));
        } catch (Throwable th) {
            ox.ox("MediaConfig", th.getMessage());
        }
    }

    public static int ox() {
        return f556d;
    }

    public static int p() {
        return ox;
    }

    public static int s() {
        return p;
    }
}
