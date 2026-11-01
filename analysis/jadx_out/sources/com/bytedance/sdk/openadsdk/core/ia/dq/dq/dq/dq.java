package com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.component.utils.q;
import com.bytedance.sdk.openadsdk.core.h;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.no;
import com.bytedance.sdk.openadsdk.core.o.o;
import com.bytedance.sdk.openadsdk.core.o.ox.jy;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import g.hat;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class dq implements com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq {

    /* renamed from: d, reason: collision with root package name */
    protected Context f2952d;
    protected j dq;
    protected DownloadStatusChangeListener ia;
    private volatile boolean ig;
    protected boolean iw;
    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq mp;
    private r o;
    protected String ox;
    protected com.bytedance.sdk.openadsdk.core.o.ox.ox.ox p;
    protected String s;
    protected volatile boolean mn = false;
    private int no = 0;
    protected Bridge kk = no.ia().h();

    private com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq d(final com.bytedance.sdk.openadsdk.core.r.ox oxVar, final Map<String, Object> map) {
        return new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.5
            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq, com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleComplianceDialog(boolean z) {
                if (z && dq.this.dq(oxVar, (com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq) null, map)) {
                    return;
                }
                dq.this.dq((com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq) null, map);
            }

            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq, com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
            public void handleMarketFailedComplianceDialog() {
            }
        };
    }

    private void d(com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq dqVar, Map<String, Object> map) {
        if (this.kk == null) {
            return;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_ITEM_CLICK_LISTENER, null).dq(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER, dqVar).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(ox(map))).dq(map);
        if (com.bytedance.sdk.openadsdk.core.op.f3334d < 4500) {
            Bridge bridge = this.kk;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(17, f2.k(), Void.class);
            return;
        }
        dq.put(TTDownloadField.TT_ITEM_CLICK_LISTENER, dq(map, dq));
        Bridge bridge2 = this.kk;
        hat f3 = hat.f();
        f3.f19148c.put(0, dq);
        bridge2.call(17, f3.k(), Void.class);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.r.ox oxVar, Map<String, Object> map) {
        dq(d(oxVar, map), map);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final Map<String, Object> map, final com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq dqVar) {
        o.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.3
            @Override // java.lang.Runnable
            public void run() {
                dq.this.dq(dqVar, map);
            }
        }, this.dq);
        this.ig = false;
    }

    private boolean iw(Map<String, Object> map) {
        r rVar;
        if (this.kk != null && (rVar = this.o) != null && rVar.s() != 1 && !this.o.ox()) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(ox(map))).dq(TTDownloadField.TT_DOWNLOAD_URL, this.s);
            Bridge bridge = this.kk;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            if (((Boolean) bridge.call(6, f2.k(), Boolean.class)).booleanValue()) {
                com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Toast.makeText(dq.this.f2952d, "应用正在下载...", 0).show();
                    }
                });
                return false;
            }
        }
        return true;
    }

    private void mn(Map<String, Object> map) {
        if (this.kk != null) {
            int ox = ox(map);
            if (map != null) {
                map.put(TTDownloadField.TT_HASHCODE, Integer.valueOf(ox));
            }
            Bridge bridge = this.kk;
            hat f2 = hat.f();
            f2.f19148c.put(0, map);
            bridge.call(16, f2.k(), Void.class);
        }
    }

    public static int ox(Map<String, Object> map) {
        if (map == null) {
            return 0;
        }
        Object obj = map.get("download_manager_hash_code");
        if (obj instanceof Integer) {
            return ((Integer) obj).intValue();
        }
        return 0;
    }

    private void s(Map<String, Object> map) {
        int ox = ox(map);
        dq(this.ig, ox);
        if (this.f2952d == null || TextUtils.isEmpty(this.s) || !iw(map)) {
            return;
        }
        this.p.dq(d(ox), this.dq);
        op<String, Object> dq = new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.s);
        dq.put("is_feed_register_direct_download", map.get("is_feed_register_direct_download"));
        dq.put("download_manager_hash_code", map.get("download_manager_hash_code"));
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq p = p(dq);
        if (p == null || dq((com.bytedance.sdk.openadsdk.core.r.ox) null, p, dq)) {
            return;
        }
        dq(true, ox);
        dq(dq, p);
    }

    public com.bytedance.sdk.openadsdk.core.o.ox.ox.dq d(int i) {
        return ox(i) ? new com.bytedance.sdk.openadsdk.core.o.ox.ox.s() : this.mn ? new com.bytedance.sdk.openadsdk.core.o.ox.ox.p() : new com.bytedance.sdk.openadsdk.core.o.ox.ox.d();
    }

    public void d(boolean z) {
        this.iw = z;
    }

    public abstract void d(boolean z, int i);

    public boolean d(Map<String, Object> map) {
        if (this.dq.ro() || TextUtils.isEmpty(this.s)) {
            return false;
        }
        if (q.ox(this.f2952d) != 0) {
            s(map);
            return true;
        }
        try {
            Context context = this.f2952d;
            Toast.makeText(context, com.bytedance.sdk.component.utils.r.dq(context, "tt_no_network"), 0).show();
        } catch (Exception unused) {
        }
        return true;
    }

    public abstract com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.d dq(Map<String, Object> map, op<String, Object> opVar);

    public void dq(int i) {
        this.no = i;
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq dqVar, Map<String, Object> map) {
        try {
            if (dqVar == null) {
                mn(map);
                this.ig = false;
            } else {
                d(dqVar, map);
                this.ig = false;
            }
        } catch (Throwable unused) {
        }
    }

    public void dq(com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar) {
        this.mp = dqVar;
    }

    public void dq(r rVar) {
        this.o = rVar;
    }

    public void dq(DownloadStatusChangeListener downloadStatusChangeListener) {
        this.ia = downloadStatusChangeListener;
    }

    public void dq(final Map<String, Object> map, final boolean z) {
        int i = this.no;
        if (i == 1) {
            jy.dq(wp.getContext());
            return;
        }
        if (i == 2) {
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt_download_check") { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.4
                @Override // java.lang.Runnable
                public void run() {
                    h<com.bytedance.sdk.openadsdk.core.ig.dq> dq = wp.dq();
                    dq dqVar = dq.this;
                    com.bytedance.sdk.openadsdk.core.r.ox dq2 = dq.dq(dqVar.dq, dqVar.s);
                    if (dq2 == null || !dq2.s()) {
                        jy.dq(wp.getContext());
                    } else if (z) {
                        dq.this.dq(dq2, (Map<String, Object>) map);
                    } else {
                        dq.this.dq((com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq) null, map);
                    }
                }
            });
        } else if (z) {
            dq((com.bytedance.sdk.openadsdk.core.r.ox) null, map);
        } else {
            dq((com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq) null, map);
        }
    }

    public void dq(boolean z) {
        this.mn = z;
    }

    public void dq(boolean z, int i) {
        if (com.bytedance.sdk.openadsdk.core.op.f3334d >= 5400 && ox(i)) {
            d(z, i);
        }
    }

    public boolean dq() {
        return (this.dq == null || this.f2952d == null || this.kk == null || TextUtils.isEmpty(this.s) || TextUtils.isEmpty(this.ox) || this.p == null) ? false : true;
    }

    public boolean dq(com.bytedance.sdk.openadsdk.core.r.ox oxVar, final com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq dqVar, final Map<String, Object> map) {
        boolean dq = com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq(map);
        final int ox = ox(map);
        if (!this.p.p(dq)) {
            return false;
        }
        com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq dqVar2 = this.mp;
        if (dqVar2 != null && dqVar2.dq(new HashMap())) {
            return true;
        }
        this.p.dq(oxVar, this.ox, this.s, new com.bytedance.sdk.openadsdk.core.o.ox.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.2
            @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.d
            public void dq() {
                if (!dq.this.ox(ox)) {
                    dq.this.dq(dqVar, map);
                } else {
                    dq.this.dq(true, ox);
                    dq.this.dq((Map<String, Object>) map, dqVar);
                }
            }
        });
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
    public boolean dq(Map<String, Object> map) {
        if (dq()) {
            return d(map);
        }
        return false;
    }

    public abstract boolean ox(int i);

    public abstract com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq.dq.dq p(Map<String, Object> map);
}
