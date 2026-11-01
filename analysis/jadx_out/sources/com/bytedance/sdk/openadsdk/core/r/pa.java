package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class pa {

    /* renamed from: d, reason: collision with root package name */
    private com.bykv.vk.openvk.component.video.api.ox.ox f3506d;
    private com.bykv.vk.openvk.component.video.api.ox.ox dq;
    private com.bykv.vk.openvk.component.video.api.ox.dq ox;

    public pa() {
    }

    public pa(JSONObject jSONObject) {
        pa paVar;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        JSONObject optJSONObject = jSONObject.optJSONObject(MediaFormat.KEY_VIDEO);
        if (optJSONObject != null) {
            com.bykv.vk.openvk.component.video.api.ox.ox oxVar = new com.bykv.vk.openvk.component.video.api.ox.ox();
            oxVar.d(optJSONObject.optInt("cover_height"));
            oxVar.ox(optJSONObject.optInt("cover_width"));
            oxVar.dq(optJSONObject.optString("resolution"));
            str4 = "cover_width";
            oxVar.dq(optJSONObject.optLong("size"));
            oxVar.dq(optJSONObject.optDouble("video_duration"));
            oxVar.d(optJSONObject.optString("cover_url"));
            oxVar.ox(optJSONObject.optString("video_url"));
            oxVar.p(optJSONObject.optString("endcard"));
            oxVar.s(optJSONObject.optString("file_hash"));
            str = "endcard";
            str2 = "video_url";
            oxVar.dq((float) optJSONObject.optDouble("play_speed_ratio", -1.0d));
            oxVar.dq(optJSONObject.optInt("fallback_endcard_judge", 0));
            oxVar.p(optJSONObject.optInt("video_preload_size", 307200));
            str5 = "reward_video_cached_type";
            oxVar.s(optJSONObject.optInt(str5, 0));
            oxVar.iw(optJSONObject.optInt("execute_cached_type", 0));
            str3 = "resolution";
            oxVar.d(optJSONObject.optDouble("start", -1.0d));
            paVar = this;
            paVar.dq = oxVar;
        } else {
            paVar = this;
            str = "endcard";
            str2 = "video_url";
            str3 = "resolution";
            str4 = "cover_width";
            str5 = "reward_video_cached_type";
        }
        JSONObject optJSONObject2 = jSONObject.optJSONObject("h265_video");
        if (optJSONObject2 != null) {
            com.bykv.vk.openvk.component.video.api.ox.ox oxVar2 = new com.bykv.vk.openvk.component.video.api.ox.ox();
            oxVar2.d(optJSONObject2.optInt("cover_height"));
            oxVar2.ox(optJSONObject2.optInt(str4));
            oxVar2.dq(optJSONObject2.optString(str3));
            oxVar2.dq(optJSONObject2.optLong("size"));
            oxVar2.dq(optJSONObject2.optDouble("video_duration"));
            oxVar2.d(optJSONObject2.optString("cover_url"));
            oxVar2.ox(optJSONObject2.optString(str2));
            oxVar2.p(optJSONObject2.optString(str));
            oxVar2.s(optJSONObject2.optString("file_hash"));
            oxVar2.dq((float) optJSONObject2.optDouble("play_speed_ratio", -1.0d));
            oxVar2.dq(optJSONObject2.optInt("fallback_endcard_judge", 0));
            oxVar2.p(optJSONObject2.optInt("video_preload_size", 307200));
            oxVar2.s(optJSONObject2.optInt(str5, 0));
            oxVar2.iw(optJSONObject2.optInt("execute_cached_type", 0));
            oxVar2.d(optJSONObject2.optDouble("start", -1.0d));
            paVar.f3506d = oxVar2;
        }
        JSONObject optJSONObject3 = jSONObject.optJSONObject(MediaFormat.KEY_AUDIO);
        if (optJSONObject3 != null) {
            com.bykv.vk.openvk.component.video.api.ox.dq dqVar = new com.bykv.vk.openvk.component.video.api.ox.dq();
            dqVar.d(optJSONObject3.optString("audio_url"));
            dqVar.dq(optJSONObject3.optInt("reward_audio_cached_type", Integer.MIN_VALUE));
            dqVar.d(optJSONObject3.optLong("audio_preload_size", -2147483648L));
            dqVar.dq(optJSONObject3.optLong("size", -2147483648L));
            dqVar.dq(optJSONObject3.optString("file_hash"));
            dqVar.d(optJSONObject3.optDouble("audio_duration", -2.147483648E9d));
            dqVar.dq(optJSONObject3.optDouble("start", -1.0d));
            dqVar.d(optJSONObject3.optInt("repeat_count", 0));
            paVar.ox = dqVar;
        }
    }

    private static pa cd(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.jv();
    }

    public static String d(j jVar) {
        pa cd = cd(jVar);
        if (cd == null) {
            return "";
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            return ce.ia(jVar);
        }
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar = cd.dq;
        return oxVar == null ? "" : oxVar.no();
    }

    public static com.bykv.vk.openvk.component.video.api.ox.ox dq(j jVar, int i) {
        pa cd = cd(jVar);
        if (cd == null) {
            return null;
        }
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar = new com.bykv.vk.openvk.component.video.api.ox.ox();
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar2 = cd.dq;
        if (oxVar2 != null) {
            oxVar.d(oxVar2.d());
            oxVar.ox(cd.dq.ox());
            oxVar.dq(cd.dq.kk());
            oxVar.dq(cd.dq.s());
            oxVar.dq(cd.dq.iw());
            oxVar.d(cd.dq.no());
            oxVar.ox(cd.dq.ig());
            oxVar.p(cd.dq.mp());
            oxVar.s(cd.dq.jy());
            oxVar.dq(cd.dq.dq());
            oxVar.p(cd.dq.f());
            oxVar.s(cd.dq.fw());
            oxVar.iw(cd.dq.cd());
            oxVar.dq(cd.dq.ia());
            oxVar.d(cd.dq.mn());
        }
        boolean z = false;
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            oxVar.d(ce.ia(jVar));
            oxVar.ox(ce.mn(jVar));
            oxVar.s(com.bykv.vk.openvk.component.video.api.iw.d.dq(ce.mn(jVar)));
            oxVar.dq(-1L);
            oxVar.dq(ce.d(jVar));
            oxVar.p(0);
            oxVar.s(1);
        }
        if (com.bytedance.sdk.openadsdk.h.o.dq(jVar)) {
            oxVar.ox(cd.ox.s());
            oxVar.s(0);
            oxVar.p(0);
            oxVar.s(cd.ox.d());
            oxVar.dq(cd.ox.ox());
            oxVar.d(cd.ox.p());
            oxVar.dq(cd.ox.iw() * (cd.ox.mn() + 1));
        }
        if (l.kx(jVar)) {
            if (TextUtils.isEmpty(oxVar.ig()) && i == 1) {
                z = true;
            }
            if (i != 2 ? z : true) {
                oxVar.ox(l.h(jVar));
                oxVar.dq(l.ji(jVar));
            }
        }
        return oxVar;
    }

    public static com.bykv.vk.openvk.component.video.api.ox.p dq(int i, j jVar) {
        return dq(i, jVar, 0);
    }

    public static com.bykv.vk.openvk.component.video.api.ox.p dq(int i, j jVar, int i2) {
        if (jVar.mx() == 1 && !com.bytedance.sdk.openadsdk.core.op.p()) {
            jVar.yy(0);
        }
        if (com.bytedance.sdk.openadsdk.h.o.dq(jVar)) {
            jVar.yy(0);
        }
        com.bykv.vk.openvk.component.video.api.ox.p pVar = new com.bykv.vk.openvk.component.video.api.ox.p(i != 1 ? i != 2 ? i != 3 ? i != 4 ? "" : com.bytedance.sdk.openadsdk.h.kk.dq(jVar.mx()).p() : com.bytedance.sdk.openadsdk.h.kk.dq(jVar.mx()).ox() : com.bytedance.sdk.openadsdk.h.kk.dq(jVar.mx()).d() : com.bytedance.sdk.openadsdk.h.kk.dq(jVar.mx()).dq(), dq(jVar, i2), jy(jVar), jVar.mx(), jVar.jn());
        pVar.dq(jVar.we());
        return pVar;
    }

    public static String dq(j jVar) {
        pa cd = cd(jVar);
        if (cd == null) {
            return "";
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            return ce.mn(jVar);
        }
        if (com.bytedance.sdk.openadsdk.h.o.dq(jVar)) {
            return f(jVar).s();
        }
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar = cd.dq;
        return oxVar == null ? "" : oxVar.ig();
    }

    public static com.bykv.vk.openvk.component.video.api.ox.dq f(j jVar) {
        pa cd = cd(jVar);
        if (cd == null) {
            return null;
        }
        return cd.ox;
    }

    public static com.bykv.vk.openvk.component.video.api.ox.p fw(j jVar) {
        pa jv;
        com.bykv.vk.openvk.component.video.api.ox.p dq = dq(4, jVar);
        dq.dq(true);
        if (jVar != null && (jv = jVar.jv()) != null) {
            com.bykv.vk.openvk.component.video.api.ox.ox e2 = dq.e();
            com.bykv.vk.openvk.component.video.api.ox.dq dqVar = jv.ox;
            if (dqVar != null && e2 != null) {
                e2.ox(dqVar.s());
                e2.s(0);
                e2.p(0);
                e2.s(jv.ox.d());
                e2.dq(jv.ox.ox());
                e2.d(jv.ox.p());
                e2.dq(jv.ox.iw() * (jv.ox.mn() + 1));
            }
        }
        return dq;
    }

    public static String ia(j jVar) {
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar;
        pa cd = cd(jVar);
        return (cd == null || (oxVar = cd.dq) == null) ? "" : oxVar.mp();
    }

    public static boolean ig(j jVar) {
        pa cd = cd(jVar);
        if (cd == null) {
            return false;
        }
        return cd.dq.le();
    }

    public static double iw(j jVar) {
        pa cd = cd(jVar);
        if (cd == null) {
            return 0.0d;
        }
        if (com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar)) {
            int d2 = ce.d(jVar);
            com.bytedance.sdk.openadsdk.f.d.ox.d ds = jVar.ds();
            if (ds != null && ds.k() == 9) {
                d2 *= 2;
            }
            return d2;
        }
        if (com.bytedance.sdk.openadsdk.h.o.dq(jVar)) {
            return (f(jVar).mn() + 1) * ((int) f(jVar).iw());
        }
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar = cd.dq;
        if (oxVar == null) {
            return 0.0d;
        }
        return oxVar.iw();
    }

    public static com.bykv.vk.openvk.component.video.api.ox.ox jy(j jVar) {
        pa cd = cd(jVar);
        if (cd == null) {
            return null;
        }
        return cd.f3506d;
    }

    public static int kk(j jVar) {
        if (cd(jVar) == null) {
            return TTAdConstant.VIDEO_INFO_CODE;
        }
        if (TextUtils.isEmpty(dq(jVar))) {
            return TTAdConstant.VIDEO_URL_CODE;
        }
        if (TextUtils.isEmpty(d(jVar))) {
            return TTAdConstant.VIDEO_COVER_URL_CODE;
        }
        return 200;
    }

    public static String mn(j jVar) {
        pa cd = cd(jVar);
        return cd == null ? "" : com.bytedance.sdk.openadsdk.core.video.ox.dq.dq(jVar) ? com.bykv.vk.openvk.component.video.api.iw.d.dq(ce.mn(jVar)) : com.bytedance.sdk.openadsdk.h.o.dq(jVar) ? f(jVar).d() : cd.dq.jy();
    }

    public static com.bykv.vk.openvk.component.video.api.ox.ox mp(j jVar) {
        return dq(jVar, 0);
    }

    public static boolean no(j jVar) {
        pa cd = cd(jVar);
        return (cd == null || cd.ox == null) ? false : true;
    }

    public static boolean o(j jVar) {
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar;
        pa cd = cd(jVar);
        return (cd == null || (oxVar = cd.dq) == null || oxVar.dq() != 1) ? false : true;
    }

    public static int ox(j jVar) {
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar;
        pa cd = cd(jVar);
        if (cd == null || (oxVar = cd.dq) == null) {
            return 0;
        }
        return oxVar.d();
    }

    public static int p(j jVar) {
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar;
        pa cd = cd(jVar);
        if (cd == null || (oxVar = cd.dq) == null) {
            return 0;
        }
        return oxVar.ox();
    }

    public static com.bykv.vk.openvk.component.video.api.ox.ox q(j jVar) {
        pa cd = cd(jVar);
        if (cd == null) {
            return null;
        }
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar = cd.dq;
        if (oxVar != null) {
            return oxVar;
        }
        if (com.bytedance.sdk.openadsdk.h.o.dq(jVar) && jVar.dr() == 3) {
            return oxVar;
        }
        if (!com.bytedance.sdk.openadsdk.h.o.dq(jVar)) {
            return cd.dq;
        }
        com.bykv.vk.openvk.component.video.api.ox.ox oxVar2 = new com.bykv.vk.openvk.component.video.api.ox.ox();
        if (com.bytedance.sdk.openadsdk.h.o.dq(jVar)) {
            oxVar2.ox(cd.ox.s());
            oxVar2.s(0);
            oxVar2.p(0);
            oxVar2.s(cd.ox.d());
            oxVar2.dq(cd.ox.ox());
            oxVar2.dq(cd.ox.iw() * (cd.ox.mn() + 1));
        }
        cd.dq = oxVar2;
        return oxVar2;
    }

    public static int[] s(j jVar) {
        com.bykv.vk.openvk.component.video.api.ox.ox jy;
        if (jVar == null) {
            return null;
        }
        if (jVar.gv() == 166 && ce.dq(jVar)) {
            return new int[]{ce.ig(jVar), ce.mp(jVar)};
        }
        if (jVar.mx() == 1 && jVar.jn() == 1 && (jy = jy(jVar)) != null) {
            return jy.o();
        }
        com.bykv.vk.openvk.component.video.api.ox.ox q = q(jVar);
        if (q != null) {
            return q.o();
        }
        return null;
    }

    public void dq(com.bykv.vk.openvk.component.video.api.ox.ox oxVar) {
        this.dq = oxVar;
    }

    public void dq(JSONObject jSONObject) {
        try {
            com.bykv.vk.openvk.component.video.api.ox.ox oxVar = this.dq;
            if (oxVar != null) {
                jSONObject.put(MediaFormat.KEY_VIDEO, oxVar.gh());
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            com.bykv.vk.openvk.component.video.api.ox.ox oxVar2 = this.f3506d;
            if (oxVar2 != null) {
                jSONObject.put("h265_video", oxVar2.gh());
            }
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        try {
            com.bykv.vk.openvk.component.video.api.ox.dq dqVar = this.ox;
            if (dqVar != null) {
                jSONObject.put(MediaFormat.KEY_AUDIO, dqVar.dq());
            }
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
    }
}
