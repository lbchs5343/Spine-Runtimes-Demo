package com.bytedance.sdk.openadsdk.core.o.ox.ox;

import android.content.Context;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.openadsdk.core.activity.base.TTDelegateActivity;
import com.bytedance.sdk.openadsdk.core.ir.iw;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.ji;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.ugeno.ia.mn;
import com.bytedance.sdk.openadsdk.core.ugeno.kk;
import com.bytedance.sdk.openadsdk.core.wp;
import g.dlv;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private Context f3325d;
    private j dq;
    private dq ox;
    private com.bytedance.sdk.openadsdk.core.o.ox.dq.dq s;
    private boolean p = true;
    private boolean iw = false;
    private int mn = 0;
    private boolean ia = false;

    public ox(Context context, j jVar) {
        this.f3325d = context;
        this.dq = jVar;
    }

    private iw.dq d(final String str, final com.bytedance.sdk.openadsdk.core.o.ox.dq.d dVar) {
        return new iw.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ox.ox.4
            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void d() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void dq() {
                com.bytedance.sdk.openadsdk.core.o.ox.dq.d dVar2 = dVar;
                if (dVar2 != null) {
                    dVar2.dq();
                }
                if (ox.this.s != null) {
                    ox.this.s.dq();
                }
                iw.f3324d = true;
                com.bytedance.sdk.openadsdk.core.ig.ox.d(ox.this.dq, str, "pop_up_download", ox.this.dq());
            }

            @Override // com.bytedance.sdk.openadsdk.core.ir.iw.dq
            public void ox() {
                com.bytedance.sdk.openadsdk.core.ig.ox.d(ox.this.dq, str, "pop_up_cancel", ox.this.dq());
            }
        };
    }

    private void d(final String str) {
        if (r.cd(this.dq) != 4) {
            return;
        }
        TTDelegateActivity.dq(new mn() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ox.ox.2
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(int i, String str2) {
                ox.this.dq(str, 1, str2);
                TTDelegateActivity.dq((mn) null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(dlv dlvVar) {
                ox.this.dq(str, 0, "");
                TTDelegateActivity.dq((mn) null);
            }
        });
    }

    private String dq(String str) {
        int cd = r.cd(this.dq);
        try {
            if (cd != 4) {
                if (cd != 3) {
                    return str;
                }
                JSONObject jSONObject = new JSONObject(str);
                jSONObject.put("hand_icon_url", "https://sf3-fe-tos.pglstatp-toutiao.com/obj/csj-sdk-static/ugeno-source/download_hand_tap.json");
                return jSONObject.toString();
            }
            JSONObject jSONObject2 = new JSONObject(str);
            jSONObject2.put("ugen_url", r.r(this.dq));
            jSONObject2.put("ugen_md5", r.i(this.dq));
            jSONObject2.put("download_num", d(this.dq.py()));
            if (this.dq.gm() == null) {
                return jSONObject2.toString();
            }
            jSONObject2.put("app_size", ox(r1.mn()));
            jSONObject2.put("comment_num", dq(r1.iw()));
            return jSONObject2.toString();
        } catch (JSONException unused) {
            return str;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONObject dq() {
        JSONObject jSONObject = new JSONObject();
        try {
            dq dqVar = this.ox;
            jSONObject.put("download_type", dqVar != null ? dqVar.d() : 0);
            return jSONObject;
        } catch (Exception e2) {
            e2.printStackTrace();
            return jSONObject;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(j jVar, String str, int i, int i2, String str2) {
        JSONObject dq = dq();
        if (6 == i) {
            try {
                dq.put("easy_dl_render_fail_code", i2);
                if (jVar != null) {
                    String ox = jVar.ev().ox();
                    dq.put("easy_dl_render_fail_msg", str2);
                    dq.put("easy_dl_render_fail_dsl", p(ox));
                }
            } catch (Exception unused) {
            }
        }
        dq.put("show_easy_dl_dialog_code", i);
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.dq, str, "pop_up", dq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.r.ox oxVar, String str, com.bytedance.sdk.openadsdk.core.o.ox.dq.d dVar) {
        JSONException jSONException;
        String ip;
        String d2;
        String dq;
        ox oxVar2;
        String str2;
        iw.dq d3 = d(str, dVar);
        try {
            if (oxVar != null) {
                com.bytedance.sdk.openadsdk.core.r.s hy = this.dq.hy();
                if (hy != null) {
                    oxVar.dq(hy.p());
                    oxVar.dq(hy.ox());
                }
                ip = oxVar.iw();
                d2 = oxVar.dq();
                dq = oxVar.ox();
            } else {
                try {
                    ip = this.dq.ip();
                    d2 = jy.d(this.dq);
                    ji wq = this.dq.wq();
                    dq = wq != null ? wq.dq() : "";
                } catch (JSONException e2) {
                    e = e2;
                    jSONException = e;
                    jSONException.printStackTrace();
                    return;
                }
            }
            String str3 = dq;
            if (!kk.ig(this.dq)) {
                oxVar2 = this;
                str2 = str;
                try {
                    com.bytedance.sdk.openadsdk.core.ig.ox.d(oxVar2.dq, str2, "pop_up", dq());
                } catch (JSONException e3) {
                    e = e3;
                    jSONException = e;
                    jSONException.printStackTrace();
                    return;
                }
            } else if (kk.dq(this.f3325d, this.dq, d2)) {
                oxVar2 = this;
                str2 = str;
            } else {
                j jVar = this.dq;
                try {
                    dq(jVar, str, kk.d(this.f3325d, jVar, d2), 0, "");
                    oxVar2 = this;
                    str2 = str;
                } catch (JSONException e4) {
                    e = e4;
                    jSONException = e;
                    jSONException.printStackTrace();
                    return;
                }
            }
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("dialog_title", d2);
            jSONObject.put("dialog_icon_url", str3);
            jSONObject.put("dialog_app_description", oxVar2.dq.gl());
            String dq2 = dq(ip);
            d(str2);
            if (kk.dq(oxVar2.f3325d, oxVar2.dq, d2)) {
                oxVar2.dq(str2, d3, dq2, str3, jSONObject);
            } else {
                com.bytedance.sdk.openadsdk.core.ir.iw.d(oxVar2.f3325d, oxVar2.dq.fx(), dq2, jSONObject.toString(), d3);
            }
        } catch (JSONException e5) {
            jSONException = e5;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, int i, String str2) {
        JSONObject dq = dq();
        try {
            dq.put("ugen_dl_render_fail_msg", str2);
            dq.put("ugen_dl_render_fail", i);
        } catch (Exception unused) {
        }
        com.bytedance.sdk.openadsdk.core.ig.ox.d(this.dq, str, "pop_up", dq);
    }

    private void dq(String str, iw.dq dqVar, String str2, String str3, JSONObject jSONObject) throws JSONException {
        jSONObject.put("is_easy_dl_dialog_pop_up_style", true);
        com.bytedance.sdk.openadsdk.core.ir.iw.dq(this.f3325d, this.dq.fx(), kk.dq(this.f3325d, str2, this.dq, str3), jSONObject.toString(), dqVar, ox(str), this.dq);
    }

    private mn ox(final String str) {
        return new mn() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ox.ox.3
            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(int i, String str2) {
                ox oxVar = ox.this;
                oxVar.dq(oxVar.dq, str, 6, i, str2);
                TTDelegateActivity.dq((mn) null);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ugeno.ia.mn
            public void dq(dlv dlvVar) {
                ox oxVar = ox.this;
                oxVar.dq(oxVar.dq, str, 5, 0, "");
                TTDelegateActivity.dq((mn) null);
            }
        };
    }

    private String p(String str) {
        com.bytedance.sdk.component.mn.dq dq = com.bytedance.sdk.openadsdk.core.ox.dq();
        if (dq == null) {
            return null;
        }
        return dq.d(str, "");
    }

    public String d(long j) {
        return j >= 100000000 ? String.format("%d亿+", Long.valueOf(Math.round(j / 1.0E8d))) : j >= ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT ? String.format("%d万+", Long.valueOf(Math.round(j / 10000.0d))) : j > 0 ? String.valueOf(j) : "-";
    }

    public void d(boolean z) {
        this.iw = z;
    }

    public String dq(long j) {
        return j >= 100000000 ? String.format("%d亿+", Long.valueOf(j / 100000000)) : j >= ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT ? String.format("%d万+", Long.valueOf(j / ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT)) : j > 0 ? String.valueOf(j) : "-";
    }

    public void dq(int i) {
        this.mn = i;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.o.ox.dq.dq dqVar) {
        this.s = dqVar;
    }

    public void dq(dq dqVar) {
        dq(dqVar, this.dq);
    }

    public void dq(dq dqVar, j jVar) {
        this.ox = dqVar;
        if (dqVar == null) {
            return;
        }
        dqVar.dq(this.f3325d);
        dqVar.dq(jVar);
        dqVar.dq(this.p);
    }

    public void dq(com.bytedance.sdk.openadsdk.core.r.ox oxVar, final String str, final String str2, final com.bytedance.sdk.openadsdk.core.o.ox.dq.d dVar) {
        j jVar = this.dq;
        if (jVar == null) {
            return;
        }
        if (oxVar == null && jVar.ah() == 2 && !(this.ox instanceof s)) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt_download_check") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.ox.ox.1
                @Override // java.lang.Runnable
                public void run() {
                    ox.this.dq(wp.dq().dq(ox.this.dq, str2), str, dVar);
                }
            });
        } else {
            dq(oxVar, str, dVar);
        }
    }

    public void dq(String str, com.bytedance.sdk.openadsdk.core.o.ox.dq.d dVar) {
        if (this.dq == null) {
            return;
        }
        dq((com.bytedance.sdk.openadsdk.core.r.ox) null, str, dVar);
    }

    public void dq(boolean z) {
        this.p = z;
    }

    public String ox(long j) {
        return j <= 0 ? "-" : String.format("%.1fMB", Double.valueOf((j / 1024.0d) / 1024.0d));
    }

    public void ox(boolean z) {
        this.ia = z;
    }

    public boolean p(boolean z) {
        dq dqVar = this.ox;
        boolean z2 = true;
        if (dqVar == null) {
            return true;
        }
        if (dqVar instanceof d) {
            d dVar = (d) dqVar;
            if (!z && !this.ia) {
                z2 = false;
            }
            dVar.ox(z2);
            dVar.d(this.iw);
            dVar.dq(this.mn);
        }
        return this.ox.dq();
    }
}
