package com.bykv.vk.openvk.component.video.api.ox;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private int f513d;
    private int dq;
    private String ia;
    private int ig;
    private String iw;
    private String kk;
    private String mn;
    private int mp;
    private double no;
    private String o;
    private long ox;
    private double p;
    private String s;
    private float q = -1.0f;
    private int jy = 0;

    /* renamed from: f, reason: collision with root package name */
    private int f514f = 0;
    private int fw = 0;
    private int cd = 0;
    private int gh = 307200;
    private int r = 1;

    public int cd() {
        return this.cd;
    }

    public int d() {
        return this.dq;
    }

    public void d(double d2) {
        this.no = d2;
    }

    public void d(int i) {
        this.dq = i;
    }

    public void d(String str) {
        this.iw = str;
    }

    public int dq() {
        return this.ig;
    }

    public void dq(double d2) {
        this.p = d2;
    }

    public void dq(float f2) {
        this.q = f2;
    }

    public void dq(int i) {
        this.ig = i;
    }

    public void dq(long j) {
        this.ox = j;
    }

    public void dq(String str) {
        this.s = str;
    }

    public int f() {
        if (this.gh < 0) {
            this.gh = 307200;
        }
        long j = this.gh;
        long j2 = this.ox;
        if (j > j2) {
            this.gh = (int) j2;
        }
        return this.gh;
    }

    public int fw() {
        return this.fw;
    }

    public JSONObject gh() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("cover_height", d());
            jSONObject.put("cover_url", no());
            jSONObject.put("cover_width", ox());
            jSONObject.put("endcard", mp());
            jSONObject.put("file_hash", jy());
            jSONObject.put("resolution", kk());
            jSONObject.put("size", s());
            jSONObject.put("video_duration", iw());
            jSONObject.put("video_url", ig());
            jSONObject.put("playable_download_url", q());
            jSONObject.put("if_playable_loading_show", r());
            jSONObject.put("remove_loading_page_type", i());
            jSONObject.put("fallback_endcard_judge", dq());
            jSONObject.put("video_preload_size", f());
            jSONObject.put("reward_video_cached_type", fw());
            jSONObject.put("execute_cached_type", cd());
            jSONObject.put("endcard_render", p());
            jSONObject.put("replay_time", wp());
            jSONObject.put("play_speed_ratio", ia());
            if (mn() > 0.0d) {
                jSONObject.put("start", mn());
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public int i() {
        return this.f514f;
    }

    public float ia() {
        return this.q;
    }

    public String ig() {
        return this.mn;
    }

    public double iw() {
        return this.p;
    }

    public void iw(int i) {
        this.cd = i;
    }

    public String jy() {
        if (TextUtils.isEmpty(this.o)) {
            this.o = com.bykv.vk.openvk.component.video.api.iw.d.dq(this.mn);
        }
        return this.o;
    }

    public boolean k() {
        return this.fw == 0;
    }

    public String kk() {
        return this.s;
    }

    public boolean le() {
        return this.cd == 1;
    }

    public double mn() {
        return this.no;
    }

    public String mp() {
        return this.ia;
    }

    public String no() {
        return this.iw;
    }

    public int[] o() {
        try {
            int indexOf = this.s.indexOf("x");
            return new int[]{Integer.parseInt(this.s.substring(0, indexOf).trim()), Integer.parseInt(this.s.substring(indexOf + 1).trim())};
        } catch (Throwable th) {
            com.bykv.vk.openvk.component.video.api.iw.ox.d("VideoInfo", "getWidthAndHeight error", th);
            return null;
        }
    }

    public int ox() {
        return this.f513d;
    }

    public void ox(int i) {
        this.f513d = i;
    }

    public void ox(String str) {
        this.mn = str;
    }

    public int p() {
        return this.mp;
    }

    public void p(int i) {
        this.gh = i;
    }

    public void p(String str) {
        this.ia = str;
    }

    public String q() {
        return this.kk;
    }

    public int r() {
        return this.jy;
    }

    public long s() {
        return this.ox;
    }

    public void s(int i) {
        this.fw = i;
    }

    public void s(String str) {
        this.o = str;
    }

    public int wp() {
        return this.r;
    }
}
