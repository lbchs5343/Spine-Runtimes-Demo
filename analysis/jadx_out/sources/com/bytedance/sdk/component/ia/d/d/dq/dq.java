package com.bytedance.sdk.component.ia.d.d.dq;

import com.bytedance.sdk.component.ia.d.d.d;
import com.bytedance.sdk.component.ia.dq.ia;
import com.bytedance.sdk.component.ia.dq.p;
import com.bytedance.sdk.component.ia.dq.s;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private AtomicLong dq = new AtomicLong(0);

    /* renamed from: d, reason: collision with root package name */
    private AtomicLong f1893d = new AtomicLong(0);
    private AtomicLong ox = new AtomicLong(0);
    private AtomicLong p = new AtomicLong(0);
    private AtomicLong s = new AtomicLong(0);
    private AtomicLong iw = new AtomicLong(0);
    private AtomicLong mn = new AtomicLong(0);
    private AtomicLong ia = new AtomicLong(0);
    private AtomicLong kk = new AtomicLong(0);
    private AtomicLong o = new AtomicLong(0);
    private AtomicLong no = new AtomicLong(0);
    private AtomicLong ig = new AtomicLong(0);
    private AtomicLong mp = new AtomicLong(0);
    private AtomicLong q = new AtomicLong(0);
    private AtomicLong jy = new AtomicLong(0);

    /* renamed from: f, reason: collision with root package name */
    private AtomicLong f1895f = new AtomicLong(0);
    private AtomicLong fw = new AtomicLong(0);
    private AtomicLong cd = new AtomicLong(0);
    private AtomicLong gh = new AtomicLong(0);
    private AtomicLong r = new AtomicLong(0);
    private AtomicLong i = new AtomicLong(0);
    private AtomicLong le = new AtomicLong(0);
    private AtomicLong k = new AtomicLong(0);
    private AtomicLong wp = new AtomicLong(0);

    /* renamed from: e, reason: collision with root package name */
    private AtomicLong f1894e = new AtomicLong(0);
    private AtomicLong kx = new AtomicLong(0);
    private AtomicLong h = new AtomicLong(0);

    public AtomicLong cd() {
        return this.s;
    }

    public AtomicLong d() {
        return this.kx;
    }

    public AtomicLong dq() {
        return this.f1894e;
    }

    public JSONObject dq(long j, s sVar) {
        JSONObject jSONObject = new JSONObject();
        try {
            long j2 = mp().get();
            long j3 = 1;
            jSONObject.put("create_save_cost_ts_avg", (f().get() * 1.0f) / (j2 == 0 ? 1L : j2));
            jSONObject.put("save_success_count", j2);
            long j4 = ig().get();
            jSONObject.put("save_upload_cost_ts_avg", (fw().get() * 1.0f) / (j4 == 0 ? 1L : j4));
            jSONObject.put("will_send_count", j4);
            jSONObject.put("sdk_event_index", j);
            jSONObject.put("sdk_send_success_count", this.ig.get());
            jSONObject.put("all_delete_count", cd().get());
            jSONObject.put("success_delete_count", gh().get());
            jSONObject.put("invalid_delete_count", r().get());
            jSONObject.put("will_save_count", i().get());
            jSONObject.put("did_send_count", q().get());
            jSONObject.put("send_success_valid_count", le().get());
            long j5 = no().get();
            jSONObject.put("send_success_invalid_count", k().get());
            jSONObject.put("send_fail_count", j5);
            jSONObject.put("before_save_count", jy().get());
            jSONObject.put("tm_count", ia().get());
            jSONObject.put("success_tm", iw().get());
            jSONObject.put("queue_timeout_tm", s().get());
            jSONObject.put("after_upload_tm", p().get());
            jSONObject.put("quit_tm", ox().get());
            long j6 = e().get();
            long j7 = kx().get();
            jSONObject.put("success_request_cost_ts_avg", (h().get() * 1.0f) / (j6 == 0 ? 1L : j6));
            float f2 = ji().get() * 1.0f;
            if (j7 != 0) {
                j3 = j7;
            }
            jSONObject.put("fail_request_cost_ts_avg", f2 / j3);
            jSONObject.put("request_count", wp().get());
            jSONObject.put("request_success_count", j6);
            jSONObject.put("request_fail_count", j7);
            jSONObject.put("is_multi_process", sVar.no());
            jSONObject.put("app_start_time", d.p);
            jSONObject.put("app_first_time", d.s);
            jSONObject.put("stop_counts", kk().get());
            p p = sVar.p();
            if (p != null) {
                jSONObject.put("is_debug", p.dq());
                ia ig = p.ig();
                if (ig != null) {
                    jSONObject.put("is_plugin", ig.ia());
                    return jSONObject;
                }
            }
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    public synchronized void dq(long j) {
        this.dq.getAndAdd(j);
        this.f1893d.incrementAndGet();
    }

    public AtomicLong e() {
        return this.jy;
    }

    public AtomicLong f() {
        return this.dq;
    }

    public AtomicLong fw() {
        return this.ox;
    }

    public AtomicLong gh() {
        return this.iw;
    }

    public AtomicLong h() {
        return this.fw;
    }

    public AtomicLong i() {
        return this.kk;
    }

    public AtomicLong ia() {
        return this.r;
    }

    public AtomicLong ig() {
        return this.p;
    }

    public AtomicLong iw() {
        return this.i;
    }

    public AtomicLong ji() {
        return this.cd;
    }

    public AtomicLong jy() {
        return this.gh;
    }

    public AtomicLong k() {
        return this.mp;
    }

    public AtomicLong kk() {
        return this.h;
    }

    public AtomicLong kx() {
        return this.f1895f;
    }

    public AtomicLong le() {
        return this.no;
    }

    public AtomicLong mn() {
        return this.ig;
    }

    public AtomicLong mp() {
        return this.f1893d;
    }

    public AtomicLong no() {
        return this.ia;
    }

    public synchronized void o() {
        fw().set(0L);
        e().set(0L);
        kx().set(0L);
        wp().set(0L);
        ji().set(0L);
        h().set(0L);
        k().set(0L);
        le().set(0L);
        r().set(0L);
        f().set(0L);
        cd().set(0L);
        i().set(0L);
        gh().set(0L);
        q().set(0L);
        ig().set(0L);
        mp().set(0L);
        no().set(0L);
        jy().set(0L);
        ia().set(0L);
        iw().set(0L);
        s().set(0L);
        p().set(0L);
        ox().set(0L);
        d().set(0L);
        dq().set(0L);
        kk().set(0L);
    }

    public AtomicLong ox() {
        return this.wp;
    }

    public AtomicLong p() {
        return this.k;
    }

    public AtomicLong q() {
        return this.o;
    }

    public AtomicLong r() {
        return this.mn;
    }

    public AtomicLong s() {
        return this.le;
    }

    public AtomicLong wp() {
        return this.q;
    }
}
