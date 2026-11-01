package com.bytedance.sdk.openadsdk.core.component.reward.business.insertad;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    int f2547d;
    String dq;
    String ia;
    JSONArray iw;
    int kk;
    boolean mn;
    int ox;
    boolean p;
    boolean s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        int f2548d;
        String dq;
        int ia;
        JSONArray iw;
        com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq kk;
        boolean mn;
        int ox;
        boolean p;
        boolean s;

        public dq d(int i) {
            this.ox = i;
            return this;
        }

        public dq d(boolean z) {
            this.s = z;
            return this;
        }

        public dq dq(int i) {
            this.f2548d = i;
            return this;
        }

        public dq dq(com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq dqVar) {
            this.kk = dqVar;
            return this;
        }

        public dq dq(String str) {
            this.dq = str;
            return this;
        }

        public dq dq(Set<Integer> set) {
            this.iw = new JSONArray((Collection) set);
            return this;
        }

        public dq dq(boolean z) {
            this.p = z;
            return this;
        }

        public ox dq() {
            return new ox(this.dq, this.f2548d, this.ox, this.p, this.s, this.iw, this.mn, this.kk, this.ia);
        }

        public dq ox(int i) {
            this.ia = i;
            return this;
        }

        public dq ox(boolean z) {
            this.mn = z;
            return this;
        }
    }

    public ox(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.dq = jSONObject.optString("meta_md5");
            this.f2547d = jSONObject.optInt("consume_time");
            this.ox = jSONObject.optInt("reduce_time");
            this.p = jSONObject.optBoolean("is_video_completed");
            this.s = jSONObject.optBoolean("is_user_interacted");
            this.iw = jSONObject.optJSONArray("reward_verify_array");
            this.mn = jSONObject.optBoolean("is_mute");
            this.ia = jSONObject.optString("play_again_string");
            this.kk = jSONObject.optInt("carousel_type");
        } catch (Exception unused) {
        }
    }

    private ox(String str, int i, int i2, boolean z, boolean z2, JSONArray jSONArray, boolean z3, com.bytedance.sdk.openadsdk.core.component.reward.business.d.dq dqVar, int i3) {
        this.dq = str;
        this.f2547d = i;
        this.ox = i2;
        this.p = z;
        this.s = z2;
        this.iw = jSONArray;
        this.mn = z3;
        this.ia = dqVar.ia();
        this.kk = i3;
    }

    public int d() {
        return this.f2547d;
    }

    public String dq() {
        return this.dq;
    }

    public int ia() {
        return this.kk;
    }

    public boolean iw() {
        return this.mn;
    }

    public Map<Integer, Boolean> kk() {
        HashMap hashMap = new HashMap();
        for (int i = 0; i < this.iw.length(); i++) {
            try {
                hashMap.put((Integer) this.iw.get(i), Boolean.TRUE);
            } catch (Exception unused) {
            }
        }
        return hashMap;
    }

    public String mn() {
        return this.ia;
    }

    public JSONObject o() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("meta_md5", this.dq);
            jSONObject.put("consume_time", this.f2547d);
            jSONObject.put("reduce_time", this.ox);
            jSONObject.put("is_video_completed", this.p);
            jSONObject.put("is_user_interacted", this.s);
            jSONObject.put("reward_verify_array", this.iw);
            jSONObject.put("is_mute", this.mn);
            jSONObject.put("play_again_string", this.ia);
            jSONObject.put("carousel_type", this.kk);
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public int ox() {
        return this.ox;
    }

    public boolean p() {
        return this.p;
    }

    public boolean s() {
        return this.s;
    }
}
