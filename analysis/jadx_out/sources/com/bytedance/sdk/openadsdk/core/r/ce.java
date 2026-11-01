package com.bytedance.sdk.openadsdk.core.r;

import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ce {

    /* renamed from: d, reason: collision with root package name */
    private String f3428d;
    private int dq;
    private String ia;
    private int ig;
    private String iw;
    private int kk;
    private String mn;
    private boolean mp;
    private int no;
    private int o;
    private int ox;
    private int p;
    private String s;

    public ce(JSONObject jSONObject) {
        JSONObject optJSONObject;
        if (jSONObject == null || (optJSONObject = jSONObject.optJSONObject("live_ad")) == null) {
            return;
        }
        this.mp = true;
        dq(optJSONObject.optInt("live_show_time", 60));
        this.f3428d = optJSONObject.optString("live_author_nickname");
        this.ox = optJSONObject.optInt("live_author_follower_count", -1);
        this.p = optJSONObject.optInt("live_watch_count", -1);
        this.s = optJSONObject.optString("live_description");
        this.iw = optJSONObject.optString("live_feed_url");
        this.mn = optJSONObject.optString("live_cover_image_url");
        this.ia = optJSONObject.optString("live_avatar_url");
        this.kk = optJSONObject.optInt("live_avatar_width");
        this.o = optJSONObject.optInt("live_avatar_height");
        this.no = optJSONObject.optInt("live_cover_width");
        this.ig = optJSONObject.optInt("live_cover_height");
    }

    public static int d(j jVar) {
        ce q = q(jVar);
        if (q == null) {
            return 0;
        }
        return q.dq;
    }

    public static boolean dq(j jVar) {
        ce q = q(jVar);
        if (q == null) {
            return false;
        }
        return q.mp;
    }

    public static String ia(j jVar) {
        ce q = q(jVar);
        return q == null ? "" : q.mn;
    }

    public static int ig(j jVar) {
        ce q = q(jVar);
        if (q == null) {
            return 0;
        }
        return q.no;
    }

    public static String iw(j jVar) {
        ce q = q(jVar);
        return q == null ? "" : q.s;
    }

    public static String kk(j jVar) {
        ce q = q(jVar);
        return q == null ? "" : q.ia;
    }

    public static String mn(j jVar) {
        ce q = q(jVar);
        return q == null ? "" : q.iw;
    }

    public static int mp(j jVar) {
        ce q = q(jVar);
        if (q == null) {
            return 0;
        }
        return q.ig;
    }

    public static int no(j jVar) {
        ce q = q(jVar);
        if (q == null) {
            return 0;
        }
        return q.o;
    }

    public static int o(j jVar) {
        ce q = q(jVar);
        if (q == null) {
            return 0;
        }
        return q.kk;
    }

    public static String ox(j jVar) {
        ce q = q(jVar);
        return q == null ? "" : q.f3428d;
    }

    public static int p(j jVar) {
        ce q = q(jVar);
        if (q == null) {
            return 0;
        }
        return q.ox;
    }

    private static ce q(j jVar) {
        if (jVar == null) {
            return null;
        }
        return jVar.px();
    }

    public static int s(j jVar) {
        ce q = q(jVar);
        if (q == null) {
            return 0;
        }
        return q.p;
    }

    public void dq(int i) {
        if (i <= 0 || i > 300) {
            i = 60;
        }
        this.dq = i;
    }

    public void dq(JSONObject jSONObject) {
        if (this.mp) {
            try {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("live_show_time", this.dq);
                jSONObject2.put("live_author_nickname", this.f3428d);
                jSONObject2.put("live_author_follower_count", this.ox);
                jSONObject2.put("live_watch_count", this.p);
                jSONObject2.put("live_description", this.s);
                jSONObject2.put("live_feed_url", this.iw);
                jSONObject2.put("live_cover_image_url", this.mn);
                jSONObject2.put("live_avatar_url", this.ia);
                jSONObject2.put("live_cover_width", this.no);
                jSONObject2.put("live_cover_height", this.ig);
                jSONObject2.put("live_avatar_width", this.kk);
                jSONObject2.put("live_avatar_height", this.o);
                jSONObject.put("live_ad", jSONObject2);
            } catch (Exception unused) {
            }
        }
    }

    public boolean dq() {
        return this.mp;
    }
}
