package com.ss.android.socialbase.downloader.iw;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.ss.android.download.api.constant.BaseConstants;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class q {

    /* renamed from: d, reason: collision with root package name */
    private int f9420d;
    private final JSONObject dq;

    private q(JSONObject jSONObject) {
        this.dq = jSONObject;
    }

    private int d(int i) {
        int optInt = this.dq.optInt("thread_count", 4);
        if (optInt > 16) {
            optInt = 16;
        }
        if (optInt > 0) {
            return f() == 1 ? Math.min(optInt, i) : optInt;
        }
        if (f() > 0) {
            return i;
        }
        return 1;
    }

    public static q dq(JSONObject jSONObject) {
        return new q(jSONObject);
    }

    private int f() {
        return this.dq.optInt("url_balance", 2);
    }

    public boolean d() {
        return f() > 0;
    }

    public int dq() {
        return this.f9420d;
    }

    public void dq(int i) {
        this.f9420d = d(i);
    }

    public long ia() {
        long optInt = this.dq.optInt("segment_min_init_mb", 10) * BaseConstants.MB_VALUE;
        if (optInt < 5242880) {
            return 5242880L;
        }
        return optInt;
    }

    public int ig() {
        return this.dq.optInt("ip_strategy", 0);
    }

    public boolean iw() {
        return this.dq.optInt("segment_mode", 1) == 0;
    }

    public float jy() {
        return Math.min(Math.max(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, (float) this.dq.optDouble("poor_speed_ratio", 0.0d)), 1.0f);
    }

    public long kk() {
        long optInt = this.dq.optInt("segment_max_kb", 0) * BaseConstants.MB_VALUE;
        if (optInt < mn()) {
            return -1L;
        }
        return optInt;
    }

    public long mn() {
        long optInt = this.dq.optInt("segment_min_kb", 512) * 1024;
        if (optInt < 65536) {
            return 65536L;
        }
        return optInt;
    }

    public float mp() {
        return (float) this.dq.optDouble("main_ratio", 0.0d);
    }

    public long no() {
        long optInt = this.dq.optInt("read_timeout", -1);
        if (optInt >= 4000) {
            return optInt;
        }
        return -1L;
    }

    public long o() {
        long optInt = this.dq.optInt("connect_timeout", -1);
        if (optInt >= 2000) {
            return optInt;
        }
        return -1L;
    }

    public boolean ox() {
        return f() == 1;
    }

    public int p() {
        return this.dq.optInt("buffer_count", 512);
    }

    public int q() {
        return this.dq.optInt("ratio_segment", 0);
    }

    public int s() {
        return this.dq.optInt("buffer_size", 8192);
    }
}
