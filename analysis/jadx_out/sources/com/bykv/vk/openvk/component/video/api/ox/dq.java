package com.bykv.vk.openvk.component.video.api.ox;

import android.text.TextUtils;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private String f512d;
    private String dq;
    private int ia;
    private long ox = -2147483648L;
    private int p = Integer.MIN_VALUE;
    private long s = -2147483648L;
    private double iw = -2.147483648E9d;
    private double mn = -2.147483648E9d;

    public String d() {
        return this.dq;
    }

    public void d(double d2) {
        this.iw = d2;
    }

    public void d(int i) {
        if (i < 0) {
            i = 0;
        }
        this.ia = i;
    }

    public void d(long j) {
        this.s = j;
    }

    public void d(String str) {
        this.f512d = str;
    }

    public JSONObject dq() {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(this.f512d)) {
                jSONObject.putOpt("audio_url", this.f512d);
            }
            if (!TextUtils.isEmpty(this.dq)) {
                jSONObject.putOpt("file_hash", this.dq);
            }
            long j = this.ox;
            if (j > 0) {
                jSONObject.put("size", j);
            }
            int i = this.p;
            if (i >= 0) {
                jSONObject.put("reward_audio_cached_type", i);
            }
            long j2 = this.s;
            if (j2 >= 0) {
                jSONObject.put("audio_preload_size", j2);
            }
            double d2 = this.iw;
            if (d2 > 0.0d) {
                jSONObject.put("audio_duration", d2);
            }
            double d3 = this.mn;
            if (d3 > 0.0d) {
                jSONObject.put("start", d3);
            }
            int i2 = this.ia;
            if (i2 > 0) {
                jSONObject.put("repeat_count", i2);
            }
            return jSONObject;
        } catch (Exception e2) {
            e2.getMessage();
            return null;
        }
    }

    public void dq(double d2) {
        this.mn = d2;
    }

    public void dq(int i) {
        this.p = i;
    }

    public void dq(long j) {
        this.ox = j;
    }

    public void dq(String str) {
        this.dq = str;
    }

    public double iw() {
        return this.iw;
    }

    public int mn() {
        return this.ia;
    }

    public long ox() {
        return this.ox;
    }

    public double p() {
        return this.mn;
    }

    public String s() {
        return this.f512d;
    }
}
