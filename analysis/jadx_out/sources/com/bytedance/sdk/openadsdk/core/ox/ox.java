package com.bytedance.sdk.openadsdk.core.ox;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.k;
import com.bytedance.sdk.openadsdk.core.ir.kx;
import com.bytedance.sdk.openadsdk.core.ir.o;
import com.bytedance.sdk.openadsdk.core.wp;
import g.he;
import g.tn;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class ox {

    /* renamed from: d, reason: collision with root package name */
    private static volatile ox f3343d;
    private volatile boolean ia;
    private SharedPreferences o;
    private AtomicBoolean dq = new AtomicBoolean(false);
    private AtomicBoolean ox = new AtomicBoolean(false);
    private AtomicInteger p = new AtomicInteger(he.UNDEFINED_ITEM_ID);
    private AtomicInteger s = new AtomicInteger(he.UNDEFINED_ITEM_ID);
    private volatile String iw = null;
    private AtomicInteger mn = new AtomicInteger(he.UNDEFINED_ITEM_ID);
    private AtomicInteger kk = new AtomicInteger(he.UNDEFINED_ITEM_ID);
    private AtomicInteger no = new AtomicInteger(he.UNDEFINED_ITEM_ID);

    private ox() {
    }

    public static String d(String str) {
        String p = dq().p();
        if (TextUtils.isEmpty(p)) {
            return null;
        }
        return tn.ad("https://", p, str);
    }

    public static ox dq() {
        if (f3343d == null) {
            synchronized (ox.class) {
                try {
                    if (f3343d == null) {
                        f3343d = new ox();
                    }
                } finally {
                }
            }
        }
        return f3343d;
    }

    private void dq(String str, int i) {
        try {
            if (this.dq.get()) {
                com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_bidding_opt_libra", str, Integer.valueOf(i));
                return;
            }
            if (this.o == null) {
                this.o = o();
            }
            SharedPreferences.Editor edit = this.o.edit();
            edit.putInt(str, i);
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    private void dq(String str, String str2) {
        try {
            if (this.dq.get()) {
                com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_bidding_opt_libra", str, str2);
                return;
            }
            if (this.o == null) {
                this.o = o();
            }
            SharedPreferences.Editor edit = this.o.edit();
            edit.putString(str, str2);
            edit.apply();
        } catch (Throwable unused) {
        }
    }

    private boolean dq(int i, int i2) {
        if (i2 == 0) {
            return false;
        }
        if (i2 == 1) {
            return true;
        }
        return i2 == 3 && i != 5;
    }

    private void ig() {
        com.bytedance.sdk.openadsdk.core.k.dq dqVar = new com.bytedance.sdk.openadsdk.core.k.dq();
        i.dq(dqVar);
        i.s();
        i.ox(dqVar);
        i.p(dqVar);
        i.d(dqVar);
        i.s(dqVar);
        i.f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void no() {
        boolean ox = ox();
        if (ox) {
            com.bytedance.sdk.openadsdk.core.component.splash.dq.p.s();
            p.dq();
            d.dq();
        }
        try {
            if (!s.dq()) {
                String d2 = d("/api/ad/union/ping");
                if (!TextUtils.isEmpty(d2)) {
                    com.bytedance.sdk.component.kk.d.ox ox2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
                    ox2.dq(d2);
                    ox2.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ox.ox.2
                        @Override // com.bytedance.sdk.component.kk.dq.dq
                        public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                        }

                        @Override // com.bytedance.sdk.component.kk.dq.dq
                        public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                        }
                    });
                }
            }
        } catch (Throwable unused) {
        }
        if (ox) {
            o.d(3);
            dq.dq(wp.getContext(), 3);
            k.p();
            ig();
            kx.dq(259200000L);
        }
    }

    private SharedPreferences o() {
        return com.bytedance.sdk.openadsdk.api.plugin.d.d(wp.getContext(), "sp_bidding_opt_libra", 0);
    }

    public void d(int i) {
        dq("key_net_queue_limit", i);
        this.s.set(i);
    }

    public boolean d() {
        if (!this.ia) {
            this.dq.set(com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_bidding_opt_libra", "key_support_multiprocess", 2) == 1);
            this.ia = true;
        }
        return this.dq.get();
    }

    public void dq(int i) {
        dq("key_req_body_opt", i);
        this.p.set(i);
    }

    public void dq(String str) {
        dq("key_url_ads", str);
        this.iw = str;
    }

    public void dq(JSONObject jSONObject) {
        if (jSONObject != null) {
            try {
                ox(jSONObject.optInt("network_module", 1));
                dq(jSONObject.optInt("if_req_body_opt", 1));
                d(jSONObject.optInt("net_queue_limit", 7));
                p(jSONObject.optInt("req_build_opt", 0));
                s(jSONObject.optBoolean("_use_pl_", false) ? 1 : 0);
            } catch (Throwable unused) {
            }
        }
    }

    public void dq(boolean z) {
        this.dq.set(z);
        if (z) {
            dq("key_support_multiprocess", 1);
        }
    }

    public void ia() {
        try {
            com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_bidding_opt_libra");
            SharedPreferences.Editor edit = o().edit();
            edit.clear();
            edit.apply();
            this.p.set(0);
            this.s.set(7);
            this.kk.set(0);
        } catch (Throwable unused) {
        }
    }

    public int iw() {
        try {
            if (this.mn.get() == Integer.MAX_VALUE) {
                if (this.dq.get()) {
                    this.mn.set(com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_bidding_opt_libra", "key_network_module", 1));
                } else {
                    if (this.o == null) {
                        this.o = o();
                    }
                    this.mn.set(this.o.getInt("key_network_module", 1));
                }
            }
            return this.mn.get();
        } catch (Throwable unused) {
            return 1;
        }
    }

    public boolean iw(int i) {
        if (i <= 0) {
            return false;
        }
        return dq(i, mn());
    }

    public void kk() {
        mn.dq(new kk("advance_init_rb") { // from class: com.bytedance.sdk.openadsdk.core.ox.ox.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (ox.this.ox.get()) {
                        return;
                    }
                    ox.this.ox.set(true);
                    ox.this.no();
                } catch (Throwable unused) {
                }
            }
        }, 10);
    }

    public int mn() {
        try {
            if (this.kk.get() == Integer.MAX_VALUE) {
                if (this.dq.get()) {
                    this.kk.set(com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_bidding_opt_libra", "key_req_build_opt", 1));
                } else {
                    if (this.o == null) {
                        this.o = o();
                    }
                    this.kk.set(this.o.getInt("key_req_build_opt", 1));
                }
            }
            return this.kk.get();
        } catch (Exception unused) {
            return 0;
        }
    }

    public void ox(int i) {
        dq("key_network_module", i);
    }

    public boolean ox() {
        try {
            if (this.p.get() == Integer.MAX_VALUE) {
                if (this.dq.get()) {
                    this.p.set(com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_bidding_opt_libra", "key_req_body_opt", 1));
                } else {
                    if (this.o == null) {
                        this.o = o();
                    }
                    this.p.set(this.o.getInt("key_req_body_opt", 1));
                }
            }
        } catch (Throwable unused) {
        }
        return this.p.get() == 1;
    }

    public String p() {
        try {
            if (TextUtils.isEmpty(this.iw)) {
                if (this.dq.get()) {
                    this.iw = com.bytedance.sdk.component.mn.ox.dq.d.d("sp_bidding_opt_libra", "key_url_ads", "api-access.pangolin-sdk-toutiao.com");
                } else {
                    if (this.o == null) {
                        this.o = o();
                    }
                    this.iw = this.o.getString("key_url_ads", "api-access.pangolin-sdk-toutiao.com");
                }
            }
        } catch (Throwable unused) {
        }
        this.iw = TextUtils.isEmpty(this.iw) ? "api-access.pangolin-sdk-toutiao.com" : this.iw;
        return this.iw;
    }

    public void p(int i) {
        dq("key_req_build_opt", i);
        this.kk.set(i);
    }

    public int s() {
        try {
            if (this.s.get() == Integer.MAX_VALUE) {
                if (this.dq.get()) {
                    this.s.set(com.bytedance.sdk.component.mn.ox.dq.d.dq("sp_bidding_opt_libra", "key_net_queue_limit", 7));
                } else {
                    if (this.o == null) {
                        this.o = o();
                    }
                    this.s.set(this.o.getInt("key_net_queue_limit", 7));
                }
            }
            return this.s.get();
        } catch (Throwable unused) {
            return 7;
        }
    }

    public void s(int i) {
        if (this.no.get() == i) {
            return;
        }
        dq("_use_pl_", i);
        this.no.set(i);
    }
}
