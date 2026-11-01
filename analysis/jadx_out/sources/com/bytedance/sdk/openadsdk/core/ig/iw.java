package com.bytedance.sdk.openadsdk.core.ig;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.core.ir.e;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.wp;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class iw {
    private static volatile iw dq;

    /* renamed from: d, reason: collision with root package name */
    private ox f2978d = ox.dq();
    private Map<String, Object> ox;

    public static class d extends kk implements Serializable {

        /* renamed from: d, reason: collision with root package name */
        public final AtomicBoolean f2979d;
        public final AtomicInteger dq;
        public boolean iw;
        private AtomicBoolean mn;
        public j ox;
        public String p;
        public Map<String, Object> s;

        public d() {
            super("EventData");
            this.dq = new AtomicInteger(0);
            this.f2979d = new AtomicBoolean(false);
            this.mn = new AtomicBoolean(false);
        }

        public d(j jVar, String str, Map<String, Object> map, boolean z) {
            super("EventData");
            this.dq = new AtomicInteger(0);
            this.f2979d = new AtomicBoolean(false);
            this.mn = new AtomicBoolean(false);
            this.ox = jVar;
            this.p = str;
            this.s = map;
            this.iw = z;
        }

        public static d dq(j jVar, String str, Map<String, Object> map, boolean z) {
            return new d(jVar, str, map, z);
        }

        public int d() {
            return this.dq.get();
        }

        public void dq(boolean z) {
            this.mn.set(z);
        }

        public boolean ox() {
            return this.mn.get();
        }

        public void p() {
            this.dq.incrementAndGet();
        }

        @Override // java.lang.Runnable
        public void run() {
            AtomicBoolean atomicBoolean;
            j jVar;
            if (this.ox == null || TextUtils.isEmpty(this.p) || (atomicBoolean = this.f2979d) == null) {
                return;
            }
            if (this.iw) {
                atomicBoolean.get();
                com.bytedance.sdk.openadsdk.core.ig.ox.ox(this.ox, this.p, this.f2979d.get() ? "lp_dpl_success" : "lp_dpl_failed");
                return;
            }
            Map<String, Object> map = this.s;
            if (map != null) {
                map.get("loop_duration");
            }
            com.bytedance.sdk.openadsdk.core.ig.ox.ia(this.ox, this.p, this.f2979d.get() ? "dpl_success" : "dpl_failed", this.s);
            AtomicBoolean atomicBoolean2 = this.f2979d;
            if (atomicBoolean2 == null || !atomicBoolean2.get() || (jVar = this.ox) == null) {
                return;
            }
            iw.d(jVar, this.p);
        }

        public d setResult(boolean z) {
            this.f2979d.set(z);
            return this;
        }
    }

    public class dq implements Runnable {

        /* renamed from: d, reason: collision with root package name */
        private d f2980d;

        public dq(d dVar) {
            this.f2980d = dVar;
        }

        private void d(d dVar) {
            if (dVar == null) {
                return;
            }
            dVar.p();
            if (dVar.d() * iw.this.f2978d.dq > iw.this.f2978d.f2981d) {
                ox(dVar.setResult(false));
            } else {
                com.bytedance.sdk.component.o.mn.p().schedule(iw.this.new dq(dVar), iw.this.f2978d.dq, TimeUnit.MILLISECONDS);
            }
        }

        private void dq(d dVar) {
            if (dVar == null) {
                return;
            }
            boolean dq = no.ia().dq();
            boolean dq2 = no.ia().dq(true);
            int d2 = dVar.d() * iw.this.f2978d.dq;
            int ji = wp.d().ji();
            if (ji <= 0 || ji >= 5000) {
                ji = 1000;
            }
            if (d2 > ji && !dVar.ox()) {
                dVar.dq(true);
                com.bytedance.sdk.openadsdk.core.ig.ox.dq(dVar.ox, dVar.p, "dpl_popup", d2);
            }
            if (!dq) {
                d(dVar);
                return;
            }
            if (dVar.s == null) {
                dVar.s = new HashMap();
            }
            dVar.s.put("is_background", Boolean.valueOf(dq));
            dVar.s.put("has_focus", Boolean.valueOf(dq2));
            dVar.s.put("loop_duration", Integer.valueOf(d2));
            dVar.s.put("rom_new_version", e.q());
            ox(dVar.setResult(true));
        }

        private void ox(d dVar) {
            if (dVar == null) {
                return;
            }
            com.bytedance.sdk.component.o.mn.dq(dVar, 5);
        }

        @Override // java.lang.Runnable
        public void run() {
            d dVar = this.f2980d;
            if (dVar != null) {
                dq(dVar);
            }
        }
    }

    public static class ox {
        public int dq = MediaPlayer.MEDIA_PLAYER_OPTION_TT_HLS_DRM;

        /* renamed from: d, reason: collision with root package name */
        public int f2981d = MediaPlayer.MEDIA_PLAYER_OPTION_ERROR_CODE;
        public int ox = 1000;
        public int p = TTAdConstant.DEFAULT_LIVE_SHOW_TIME_MAX;

        public static ox dq() {
            return new ox();
        }
    }

    private iw() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(j jVar, String str) {
        if (jVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        com.bytedance.sdk.component.mn.dq dq2 = com.bytedance.sdk.openadsdk.core.ox.dq();
        dq2.dq("save_jump_success_time", System.currentTimeMillis());
        JSONObject ve = jVar.ve();
        if (ve == null) {
            return;
        }
        dq2.dq("save_dpl_success_materialmeta", ve.toString());
        dq2.dq("save_jump_success_ad_tag", str);
    }

    public static iw dq() {
        if (dq == null) {
            synchronized (iw.class) {
                try {
                    if (dq == null) {
                        dq = new iw();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    public void dq(j jVar, String str, boolean z) {
        com.bytedance.sdk.component.o.mn.p().schedule(new dq(d.dq(jVar, str, this.ox, z)), 0L, TimeUnit.MILLISECONDS);
    }
}
