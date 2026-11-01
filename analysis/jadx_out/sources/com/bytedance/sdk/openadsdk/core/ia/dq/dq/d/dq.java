package com.bytedance.sdk.openadsdk.core.ia.dq.dq.d;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.C;
import com.bytedance.sdk.component.utils.d;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTPlayableWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoScrollWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTVideoWebPageActivity;
import com.bytedance.sdk.openadsdk.core.activity.base.TTWebPageActivity;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.multipro.d.dq;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.ugeno.kk;
import com.bytedance.sdk.openadsdk.f.d.d.o;
import g.abn;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class dq implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {
    private boolean ia;
    private String ig;
    private String kk;
    private Map<String, Object> mn;
    private com.bytedance.sdk.openadsdk.core.video.d.d mp;
    private int o;
    private Context ox;
    private j p;
    private Object s;
    private boolean dq = false;

    /* renamed from: d, reason: collision with root package name */
    private boolean f2949d = false;
    private int iw = Integer.MIN_VALUE;
    private boolean no = false;

    public dq(j jVar, Context context, String str, int i) {
        this.p = jVar;
        this.ox = context;
        this.kk = str;
        this.o = i;
    }

    private Class d(Class cls) {
        int i;
        com.bytedance.sdk.openadsdk.core.multipro.d.dq p = p();
        if (p != null) {
            this.mn.put("video_is_auto_play", Boolean.valueOf(p.p));
        }
        if (TTVideoWebPageActivity.class.equals(cls) && (p != null || this.ia)) {
            try {
                if (p != null) {
                    i = (int) ((p.mn / p.s) * 100.0f);
                } else {
                    com.bytedance.sdk.openadsdk.core.multipro.d.dq dqVar = new com.bytedance.sdk.openadsdk.core.multipro.d.dq();
                    dqVar.mn = 100L;
                    dqVar.dq = true;
                    dqVar.p = c.i(this.p);
                    this.mn.put("multi_process_data", dqVar.dq().toString());
                    i = 100;
                }
                this.iw = i;
                if (this.p.fp() == 0) {
                    return TTVideoScrollWebPageActivity.class;
                }
                if (this.p.fp() > 0 && i > this.p.fp()) {
                    if (c.i(this.p)) {
                        return TTVideoScrollWebPageActivity.class;
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return cls;
    }

    private boolean d(String str) {
        if (!q.dq(str)) {
            return false;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        try {
            intent.setData(Uri.parse(str));
            if (!(this.ox instanceof Activity)) {
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
            }
            com.bytedance.sdk.component.utils.d.dq(this.ox, intent, null);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private static boolean dq(Object obj) {
        if (obj == null || !(obj instanceof dq.InterfaceC0174dq)) {
            return false;
        }
        try {
            return ((dq.InterfaceC0174dq) obj).bl();
        } catch (Throwable unused) {
            return false;
        }
    }

    private void ox() {
        if (this.no && this.p != null) {
            if (this.mn == null) {
                this.mn = new HashMap();
            }
            if (TextUtils.isEmpty(this.ig)) {
                this.ig = this.p.ae();
            }
            this.mn.put(abn.EXTRA_URL, this.ig);
            this.mn.put("gecko_id", this.p.rp());
            this.mn.put("web_title", this.p.lk());
            this.mn.put(PluginConstants.KEY_SDK_VERSION, Integer.valueOf(op.f3334d));
            this.mn.put("adid", this.p.fx());
            this.mn.put("log_extra", this.p.dn());
            this.mn.put("icon_url", this.p.wq() == null ? null : this.p.wq().dq());
            this.mn.put("event_tag", this.kk);
            this.mn.put(abn.EXTRA_SOURCE, Integer.valueOf(this.o));
            this.mn.put("is_outer_click", Boolean.TRUE);
            c.dq(this.mn, this.p);
        }
    }

    private com.bytedance.sdk.openadsdk.core.multipro.d.dq p() {
        Object obj;
        if (!j.d(this.p) || (obj = this.s) == null) {
            return null;
        }
        com.bytedance.sdk.openadsdk.core.multipro.d.dq op = obj instanceof dq.InterfaceC0174dq ? ((dq.InterfaceC0174dq) obj).op() : null;
        if (op != null) {
            this.mn.put("multi_process_data", op.dq().toString());
        }
        Object obj2 = this.s;
        if (!(obj2 instanceof com.bytedance.sdk.openadsdk.core.nativeexpress.d)) {
            return op;
        }
        com.bytedance.sdk.openadsdk.core.multipro.d.dq no = ((com.bytedance.sdk.openadsdk.core.nativeexpress.d) obj2).no();
        if (no != null) {
            this.mn.put("multi_process_data", no.dq().toString());
        }
        return no;
    }

    public Class<?> d() {
        boolean z = this.dq;
        this.dq = false;
        if (this.f2949d) {
            return TTPlayableWebPageActivity.class;
        }
        if (this.s instanceof o) {
            return kk.iw(this.p) ? TTNativePageActivity.class : TTWebPageActivity.class;
        }
        if (!j.d(this.p) || z || dq(this.s) || !c.s(this.p)) {
            return kk.iw(this.p) ? TTNativePageActivity.class : TTWebPageActivity.class;
        }
        if (kk.iw(this.p)) {
            return TTNativePageActivity.class;
        }
        j jVar = this.p;
        return (jVar == null || !jVar.d()) ? d(TTVideoWebPageActivity.class) : TTWebPageActivity.class;
    }

    public void d(Map<String, Object> map) {
        this.mn = map;
    }

    public void d(boolean z) {
        this.f2949d = z;
    }

    public int dq() {
        return this.iw;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.video.d.d dVar) {
        this.mp = dVar;
    }

    public void dq(String str) {
        this.ig = str;
    }

    public void dq(boolean z) {
        this.dq = z;
    }

    public boolean dq(Class cls) {
        if (this.p.y() == 2) {
            return d(this.p.ae());
        }
        com.bytedance.sdk.openadsdk.core.video.d.d dVar = this.mp;
        if (dVar != null && new d(dVar).dq(new HashMap())) {
            return true;
        }
        Intent intent = new Intent(this.ox, (Class<?>) cls);
        if (!(this.ox instanceof Activity)) {
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
        }
        intent.putExtra("is_outer_click", true);
        ox();
        if (this.mn == null) {
            this.mn = new HashMap();
        }
        for (Map.Entry<String, Object> entry : this.mn.entrySet()) {
            Object value = entry.getValue();
            if (value != null) {
                intent.putExtra(entry.getKey(), value.toString());
            }
        }
        com.bytedance.sdk.component.utils.d.dq(this.ox, intent, new d.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.d.dq.1
            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq() {
            }

            @Override // com.bytedance.sdk.component.utils.d.dq
            public void dq(Throwable th) {
            }
        });
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(Map<String, Object> map) {
        if (this.p == null) {
            return false;
        }
        return dq((Class) d());
    }

    public void ox(boolean z) {
        this.ia = z;
    }

    public void p(boolean z) {
        this.no = z;
    }
}
