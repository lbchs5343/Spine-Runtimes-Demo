package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import g.awf;
import g.tn;
import java.util.ArrayList;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ob {

    /* renamed from: d, reason: collision with root package name */
    private String f3501d;
    private int dq;
    private ArrayList<xi> iw;
    private String ox;
    private String p;
    private String s;

    public ob(JSONObject jSONObject) {
        JSONObject optJSONObject;
        this.dq = 0;
        this.ox = "再看一个获取";
        this.p = "更多奖励";
        this.iw = new ArrayList<>();
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("play_again")) == null) {
            return;
        }
        this.dq = optJSONObject.optInt("again_type", 0);
        this.ox = optJSONObject.optString("entrance_prefix", "再看一个获取");
        this.p = optJSONObject.optString("entrance_suffix", "更多奖励");
        this.f3501d = optJSONObject.optString("pre_sessions");
        this.s = optJSONObject.optString("play_again_rit");
        JSONArray optJSONArray = optJSONObject.optJSONArray("again_dialog_config");
        if (optJSONArray != null) {
            this.iw = new ArrayList<>();
            for (int i = 0; i < optJSONArray.length(); i++) {
                JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                if (optJSONObject2 != null) {
                    this.iw.add(new xi(optJSONObject2));
                }
            }
        }
    }

    public static String d(String str) {
        return awf.c(str, "custom_again");
    }

    public static boolean d(j jVar) {
        ob iw = iw(jVar);
        if (iw == null) {
            return false;
        }
        int i = iw.dq;
        return (i == 1 || i == 3) && dq(jVar);
    }

    public static String dq(j jVar, String str, String str2) {
        ob iw = iw(jVar);
        if (iw == null) {
            return (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) ? "再看一个获取更多奖励" : tn.ad("再看一个获取", str2, str);
        }
        StringBuilder sb = new StringBuilder();
        sb.append(TextUtils.isEmpty(iw.ox) ? "再看一个获取" : iw.ox);
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2)) {
            sb.append(TextUtils.isEmpty(iw.p) ? "更多奖励" : iw.p);
        } else {
            sb.append(str2);
            sb.append(str);
        }
        return sb.toString();
    }

    public static String dq(String str) {
        return awf.c(str, "again");
    }

    public static boolean dq(j jVar) {
        ob iw = iw(jVar);
        if (iw == null || t.dq(jVar)) {
            return false;
        }
        int i = iw.dq;
        return (i == 1 || i == 2 || i == 3) && !TextUtils.isEmpty(iw.f3501d);
    }

    private static ob iw(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.lm();
    }

    public static String ox(j jVar) {
        ob iw = iw(jVar);
        if (iw == null) {
            return null;
        }
        return iw.f3501d;
    }

    public static String p(j jVar) {
        ob iw = iw(jVar);
        if (iw == null) {
            return null;
        }
        return iw.s;
    }

    public static ArrayList<xi> s(j jVar) {
        ob iw = iw(jVar);
        return iw != null ? iw.iw : new ArrayList<>();
    }

    public void dq(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("again_type", this.dq);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        try {
            jSONObject2.put("entrance_prefix", this.ox);
        } catch (JSONException e3) {
            e3.printStackTrace();
        }
        try {
            jSONObject2.put("entrance_suffix", this.p);
        } catch (JSONException e4) {
            e4.printStackTrace();
        }
        try {
            jSONObject2.put("pre_sessions", this.f3501d);
        } catch (JSONException e5) {
            e5.printStackTrace();
        }
        try {
            jSONObject2.put("play_again_rit", this.s);
        } catch (JSONException e6) {
            e6.printStackTrace();
        }
        try {
            JSONArray jSONArray = new JSONArray();
            ArrayList<xi> arrayList = this.iw;
            if (arrayList != null && arrayList.size() != 0) {
                Iterator<xi> it = this.iw.iterator();
                while (it.hasNext()) {
                    jSONArray.put(it.next().dq());
                }
            }
            jSONObject2.put("again_dialog_config", jSONArray);
            try {
                jSONObject.put("play_again", jSONObject2);
            } catch (JSONException e7) {
                e7.printStackTrace();
            }
        } catch (JSONException e8) {
            throw new RuntimeException(e8);
        }
    }
}
