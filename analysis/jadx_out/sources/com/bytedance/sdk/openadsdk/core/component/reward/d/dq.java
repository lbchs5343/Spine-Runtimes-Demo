package com.bytedance.sdk.openadsdk.core.component.reward.d;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.webkit.DownloadListener;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.component.reward.activity.TTBaseVideoActivity;
import com.bytedance.sdk.openadsdk.core.fw;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.o.ox.ia;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.o;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter;
import g.awf;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq {
    com.bytedance.sdk.openadsdk.core.o.d.ox dq;
    private String iw;
    private String mn;
    private TTBaseVideoActivity p;
    private j s;

    /* renamed from: d, reason: collision with root package name */
    View f2555d = null;
    final Map<String, com.bytedance.sdk.openadsdk.core.o.d.ox> ox = awf.ab();
    private long ia = 0;
    private long kk = 0;
    private long o = 0;
    private long no = 0;
    private long ig = 0;
    private long mp = 0;
    private boolean jy = true;

    /* renamed from: f, reason: collision with root package name */
    private final ox f2556f = new ox();
    private boolean q = false;

    public interface d {
        void d(boolean z, long j, long j2, String str, String str2);

        void dq(boolean z);

        void dq(boolean z, long j, long j2, String str, String str2);

        void dq(boolean z, long j, String str, String str2);

        void dq(boolean z, String str, String str2);

        void ox(boolean z, long j, long j2, String str, String str2);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.component.reward.d.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0144dq {
        void dq(View view, o oVar);

        void dq(String str, JSONObject jSONObject);
    }

    public class ox implements DownloadListener {

        /* renamed from: d, reason: collision with root package name */
        private boolean f2560d = true;

        public ox() {
        }

        public void dq(boolean z) {
            this.f2560d = z;
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j) {
            dq(this.f2560d);
            dq.this.dq(str, true);
            dq.this.p.dq(1);
        }
    }

    public dq(TTBaseVideoActivity tTBaseVideoActivity) {
        this.p = tTBaseVideoActivity;
    }

    private void dq(final String str) {
        mn.d(new kk("executeMultiProcessAppDownloadCallBack") { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.dq.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    dq.this.dq(3).dq(str, "recycleRes", 0L, 0L, "", "");
                } catch (Throwable th) {
                    ig.d("RewardFullDownloadManager", "executeAppDownloadCallback execute throw Exception : ", th);
                }
            }
        }, 5);
    }

    private void ia() {
        j jVar = this.s;
        if (jVar == null || jVar.y() != 4) {
            return;
        }
        this.dq = com.bytedance.sdk.openadsdk.core.o.s.dq((Context) this.p, this.s, this.iw, false);
    }

    public com.bytedance.sdk.openadsdk.core.o.d.ox d() {
        return this.dq;
    }

    public fw dq(int i) {
        return fw.dq.dq(com.bytedance.sdk.openadsdk.core.multipro.aidl.dq.dq(wp.getContext()).dq(i));
    }

    public void dq() {
        j jVar;
        if (this.dq == null && (jVar = this.s) != null && jVar.y() == 4) {
            this.dq = com.bytedance.sdk.openadsdk.core.o.s.dq((Context) this.p, this.s, this.iw, false);
        }
    }

    public void dq(View view, InterfaceC0144dq interfaceC0144dq, o oVar) {
        if (this.dq == null || view == null) {
            interfaceC0144dq.dq(view, oVar);
            return;
        }
        if (view.getId() == 2114387612) {
            interfaceC0144dq.dq("click_play_star_level", (JSONObject) null);
            return;
        }
        if (view.getId() == 2114387633) {
            interfaceC0144dq.dq("click_play_star_nums", (JSONObject) null);
        } else if (view.getId() == 2114387880) {
            interfaceC0144dq.dq("click_play_source", (JSONObject) null);
        } else if (view.getId() == 2114387798) {
            interfaceC0144dq.dq("click_play_logo", (JSONObject) null);
        }
    }

    public void dq(final d dVar) {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.dq;
        if (oxVar == null) {
            return;
        }
        oxVar.dq(new com.bytedance.sdk.openadsdk.core.o.d.dq() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void d(long j, long j2, String str, String str2) {
                boolean z;
                if (System.currentTimeMillis() - dq.this.kk > NativeExpressView.cd) {
                    dq.this.kk = System.currentTimeMillis();
                    z = true;
                } else {
                    z = false;
                }
                d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.d(z, j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq() {
                boolean z;
                if (System.currentTimeMillis() - dq.this.ia > NativeExpressView.cd) {
                    dq.this.ia = System.currentTimeMillis();
                    z = true;
                } else {
                    z = false;
                }
                d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq(z);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, long j2, String str, String str2) {
                boolean z;
                if (System.currentTimeMillis() - dq.this.o > NativeExpressView.cd) {
                    dq.this.o = System.currentTimeMillis();
                    z = true;
                } else {
                    z = false;
                }
                d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq(z, j, j2, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(long j, String str, String str2) {
                boolean z;
                if (System.currentTimeMillis() - dq.this.ig > NativeExpressView.cd) {
                    dq.this.ig = System.currentTimeMillis();
                    z = true;
                } else {
                    z = false;
                }
                d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq(z, j, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void dq(String str, String str2) {
                boolean z;
                if (System.currentTimeMillis() - dq.this.mp > NativeExpressView.cd) {
                    dq.this.mp = System.currentTimeMillis();
                    z = true;
                } else {
                    z = false;
                }
                d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq(z, str, str2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.d.dq
            public void ox(long j, long j2, String str, String str2) {
                boolean z;
                if (System.currentTimeMillis() - dq.this.no > NativeExpressView.cd) {
                    dq.this.no = System.currentTimeMillis();
                    z = true;
                } else {
                    z = false;
                }
                d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.ox(z, j, j2, str, str2);
                }
            }
        });
    }

    public void dq(final InterfaceC0144dq interfaceC0144dq) {
        this.dq.dq(1, new ITTDownloadAdapter.OnEventLogHandler() { // from class: com.bytedance.sdk.openadsdk.core.component.reward.d.dq.3
            @Override // com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter.OnEventLogHandler
            public boolean onEventLog(int i, String str, String str2, String str3, Object obj) {
                if (i == 1 && !TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                    if ((str2.equals("rewarded_video") || str2.equals("fullscreen_interstitial_ad")) && str3.equals("click_start")) {
                        interfaceC0144dq.dq(dq.this.f2555d, new o());
                        dq.this.f2555d = null;
                        return true;
                    }
                    if (str2.equals("fullscreen_interstitial_ad") || str2.equals("rewarded_video")) {
                        str3.getClass();
                        if (str3.equals("click_continue")) {
                            com.bytedance.sdk.openadsdk.core.ig.ox.d(dq.this.s, str2, "click_play_continue", (Map<String, Object>) null);
                        } else if (str3.equals("click_pause")) {
                            com.bytedance.sdk.openadsdk.core.ig.ox.d(dq.this.s, str2, "click_play_pause", (Map<String, Object>) null);
                            return true;
                        }
                    }
                    return true;
                }
                return true;
            }
        });
    }

    public void dq(dq.InterfaceC0174dq interfaceC0174dq) {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.dq(interfaceC0174dq);
        }
    }

    public void dq(j jVar, String str, String str2) {
        if (this.q) {
            return;
        }
        this.q = true;
        this.s = jVar;
        this.iw = str;
        ia();
        this.mn = str2;
    }

    public void dq(String str, boolean z) {
        if (!this.ox.containsKey(str)) {
            com.bytedance.sdk.openadsdk.core.o.d.ox dq = com.bytedance.sdk.openadsdk.core.o.s.dq(this.p, str, this.s, this.iw);
            if (z) {
                dq.dq(jy.dq(this.s));
            }
            if (dq instanceof ia) {
                ((ia) dq).no().dq(this.jy);
            } else if (dq instanceof com.bytedance.sdk.openadsdk.core.o.ox.ig) {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ig) dq).d().dq(this.jy);
            }
            this.ox.put(str, dq);
            dq.d(c.gh(this.s), false);
            return;
        }
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.ox.get(str);
        if (oxVar != null) {
            if (z) {
                oxVar.dq(jy.dq(this.s));
            }
            if (oxVar instanceof ia) {
                ((ia) oxVar).no().dq(this.jy);
            } else if (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ig) {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ig) oxVar).d().dq(this.jy);
            }
            oxVar.d(c.gh(this.s), false);
        }
    }

    public void dq(boolean z) {
        this.jy = z;
        this.f2556f.dq(z);
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.dq;
        if (oxVar instanceof ia) {
            ((ia) oxVar).no().dq(this.jy);
        } else if (oxVar instanceof com.bytedance.sdk.openadsdk.core.o.ox.ig) {
            ((com.bytedance.sdk.openadsdk.core.o.ox.ig) oxVar).d().dq(this.jy);
        }
    }

    public void iw() {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.kk();
        }
        for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : this.ox.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().kk();
            }
        }
        try {
            dq(this.mn);
        } catch (Throwable th) {
            ig.d("RewardFullDownloadManager", "remove from ITTAppDownloadListener throw Exception : ", th);
        }
    }

    public ox mn() {
        return this.f2556f;
    }

    public boolean ox() {
        return this.dq != null;
    }

    public void p() {
        com.bytedance.sdk.openadsdk.core.o.d.ox oxVar = this.dq;
        if (oxVar != null) {
            oxVar.dq(this.p);
            this.dq.ia();
        }
        for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : this.ox.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue().ia();
            }
        }
    }

    public void s() {
        for (Map.Entry<String, com.bytedance.sdk.openadsdk.core.o.d.ox> entry : this.ox.entrySet()) {
            if (entry.getValue() != null) {
                entry.getValue();
            }
        }
    }
}
