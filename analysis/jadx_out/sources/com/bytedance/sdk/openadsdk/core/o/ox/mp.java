package com.bytedance.sdk.openadsdk.core.o.ox;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.Toast;
import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.r.fw;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.hat;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class mp extends ig {
    private String iw;
    private volatile com.bytedance.sdk.openadsdk.core.o.ox.ox.ox kk;
    private volatile boolean o;
    private WeakReference<Context> ox;
    private String p;
    private final j s;
    private int ia = 0;
    private boolean no = false;
    private Bridge mn = com.bytedance.sdk.openadsdk.core.no.ia().h();

    public mp(Context context, String str, j jVar, String str2, boolean z) {
        this.ox = new WeakReference<>(context);
        this.s = jVar;
        this.iw = str2;
        this.p = str;
        s(z);
    }

    private boolean cd() {
        if (this.mn != null) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.p).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge = this.mn;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            if (((Boolean) bridge.call(6, f2.k(), Boolean.class)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    private boolean d(com.bytedance.sdk.openadsdk.core.r.ox oxVar) {
        com.bytedance.sdk.openadsdk.core.o.ox.ox.ox d2 = d();
        if (!d2.p(false) || cd()) {
            return false;
        }
        if (dq(getContext(), this.s, this.iw)) {
            return true;
        }
        d2.dq(oxVar, this.iw, this.p, new com.bytedance.sdk.openadsdk.core.o.ox.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.mp.2
            @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.d
            public void dq() {
                mp.this.gh();
                mp.this.d(true);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final int i, final Map<String, Object> map) {
        try {
            if (this.mn == null) {
                return;
            }
            if (ig()) {
                Bridge bridge = this.mn;
                hat f2 = hat.f();
                f2.f19148c.put(0, map);
                bridge.call(13, f2.k(), Void.class);
                this.o = false;
                return;
            }
            if (com.bytedance.sdk.openadsdk.core.op.f3334d < 4500) {
                Bridge bridge2 = this.mn;
                hat f3 = hat.f();
                f3.f19148c.put(0, map);
                bridge2.call(i, f3.k(), Void.class);
                this.o = false;
                return;
            }
            map.put(TTDownloadField.TT_ITEM_CLICK_LISTENER, new com.bytedance.sdk.openadsdk.core.h.dq.dq.p() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.mp.6
                @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.p
                public void dq(Bridge bridge3, Bridge bridge4, Bridge bridge5) {
                    com.bytedance.sdk.openadsdk.core.o.ox.d.d.d(1, mp.this.o());
                    map.remove(TTDownloadField.TT_ITEM_CLICK_LISTENER);
                    Bridge bridge6 = mp.this.mn;
                    int i2 = i;
                    hat f4 = hat.f();
                    f4.f19148c.put(0, map);
                    bridge6.call(i2, f4.k(), Void.class);
                }
            });
            Bridge bridge3 = this.mn;
            hat f4 = hat.f();
            f4.f19148c.put(0, map);
            bridge3.call(i, f4.k(), Void.class);
            this.o = false;
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(com.bytedance.sdk.openadsdk.core.r.ox oxVar) {
        i();
        if (d(oxVar)) {
            return;
        }
        gh();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(String str, String str2, String str3) {
        if (this.mn == null) {
            return;
        }
        op<String, Object> dq = new op().dq(TTDownloadField.TT_APP_ICON, str).dq(TTDownloadField.TT_APP_NAME, str2).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_PACKAGE_NAME, str3);
        Bridge bridge = this.mn;
        hat f2 = hat.f();
        f2.f19148c.put(0, dq);
        bridge.call(24, f2.k(), Boolean.class);
    }

    private void dq(final Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.o.o.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.mp.5
            @Override // java.lang.Runnable
            public void run() {
                mp.this.dq(17, (Map<String, Object>) map);
            }
        }, this.s);
    }

    private boolean f() {
        j jVar = this.s;
        if (jVar != null && jVar.kf() != null) {
            String dq = this.s.kf().dq();
            if (TextUtils.isEmpty(dq)) {
                return false;
            }
            fw.dq((String) null);
            Uri parse = Uri.parse(dq);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(parse);
            if (c.dq(getContext(), intent)) {
                if (!(getContext() instanceof Activity)) {
                    intent.addFlags(C.ENCODING_PCM_MU_LAW);
                }
                try {
                    getContext().startActivity(intent);
                    return true;
                } catch (Throwable unused) {
                }
            }
        }
        return false;
    }

    private boolean fw() {
        if (this.mn == null || r.gh(this.s) == 1 || r.o(this.s) || !cd()) {
            return true;
        }
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.mp.3
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(mp.this.getContext(), "应用正在下载...", 0).show();
            }
        });
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Context getContext() {
        Context context;
        try {
            WeakReference<Context> weakReference = this.ox;
            return (weakReference == null || (context = weakReference.get()) == null) ? wp.getContext() : context;
        } catch (Throwable unused) {
            return wp.getContext();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gh() {
        final Map<String, Object> r = r();
        if (!dq()) {
            dq(16, r);
        } else {
            com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(r, new com.bytedance.sdk.openadsdk.core.h.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.mp.4
                @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
                public void handleComplianceDialog(boolean z) {
                }

                @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.dq, com.ss.android.download.api.config.IDownloadButtonClickListener
                public void handleMarketFailedComplianceDialog() {
                    if (r == null) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(0, mp.this.o());
                    mp.this.d().dq(mp.this.p());
                    r.remove(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER);
                    if (mp.this.mp()) {
                        return;
                    }
                    mp.this.dq((com.bytedance.sdk.openadsdk.core.r.ox) null);
                }
            });
            dq(r);
        }
    }

    private void i() {
        if (com.bytedance.sdk.openadsdk.core.op.f3334d >= 5400 && dq() && !this.o) {
            com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(false, (com.bytedance.sdk.openadsdk.core.h.dq.dq.ox) null, o());
        }
    }

    private boolean ig() {
        j jVar = this.s;
        if (jVar != null) {
            return r.dq(jVar);
        }
        return false;
    }

    private synchronized void iw() {
        if (this.mn == null) {
            return;
        }
        if (ig()) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge = this.mn;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(18, f2.k(), Boolean.class);
            return;
        }
        op<String, Object> dq2 = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
        Bridge bridge2 = this.mn;
        hat g2 = hat.g(1);
        g2.f19148c.put(0, dq2);
        bridge2.call(4, g2.k(), Void.class);
    }

    private boolean jy() {
        j jVar = this.s;
        com.bytedance.sdk.openadsdk.core.r.s hy = jVar != null ? jVar.hy() : null;
        String ig = hy != null ? hy.ig() : "";
        Intent d2 = TextUtils.isEmpty(ig) ? null : c.d(getContext(), ig);
        if (d2 == null || !c.ox(getContext(), ig)) {
            return false;
        }
        try {
            getContext().startActivity(d2);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean mp() {
        int i = this.ia;
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt_download_check") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.mp.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.r.ox dq = wp.dq().dq(mp.this.s, mp.this.p);
                    if (dq == null || !dq.s()) {
                        jy.dq(wp.getContext());
                        return;
                    }
                    String iw = dq.iw();
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject = new JSONObject(iw);
                    } catch (JSONException unused) {
                    }
                    com.bytedance.sdk.openadsdk.core.r.s s = com.bytedance.sdk.openadsdk.core.d.s(jSONObject);
                    com.bytedance.sdk.openadsdk.core.r.s hy = mp.this.s.hy();
                    if (hy == null) {
                        mp.this.s.dq(s);
                    } else {
                        hy.kk(s.mp());
                        hy.d(s.s());
                        hy.p(s.mn());
                        hy.d(s.no());
                        hy.s(s.ia());
                        hy.ia(s.ig());
                        hy.ox(s.iw());
                        hy.iw(s.kk());
                        hy.mn(s.o());
                        s = hy;
                    }
                    if (mp.this.q()) {
                        return;
                    }
                    mp.this.dq(s.iw(), s.mp(), s.ig());
                    mp.this.dq(dq);
                }
            });
            return true;
        }
        if (q()) {
            return true;
        }
        jy.dq(wp.getContext());
        return true;
    }

    private synchronized void no() {
        if (this.mn == null) {
            return;
        }
        if (!ig()) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge = this.mn;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(5, f2.k(), Void.class);
            return;
        }
        op opVar = new op();
        opVar.dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
        Bridge bridge2 = this.mn;
        hat f3 = hat.f();
        f3.f19148c.put(0, opVar);
        if (((Boolean) bridge2.call(19, f3.k(), Boolean.class)).booleanValue()) {
            op<String, Object> dq2 = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge3 = this.mn;
            hat f4 = hat.f();
            f4.f19148c.put(0, dq2);
            bridge3.call(14, f4.k(), Boolean.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.bytedance.sdk.openadsdk.core.o.ox.ox.dq p() {
        return dq() ? new com.bytedance.sdk.openadsdk.core.o.ox.ox.s() : new com.bytedance.sdk.openadsdk.core.o.ox.ox.p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean q() {
        return f() || jy();
    }

    private Map<String, Object> r() {
        long longValue = Double.valueOf(this.s.fx()).longValue();
        return ig() ? new op().dq(TTDownloadField.TT_USERAGENT, null).dq(TTDownloadField.TT_IS_DISABLE_DIALOG, Boolean.TRUE).dq(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER, null).dq(TTDownloadField.TT_ACTION_TYPE_BUTTON, 2).dq(TTDownloadField.TT_ID, Long.valueOf(longValue)).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())) : new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.p).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_ID, Long.valueOf(longValue)).dq(TTDownloadField.TT_ACTION_TYPE_BUTTON, 2);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ig
    public com.bytedance.sdk.openadsdk.core.o.ox.ox.ox d() {
        if (this.kk == null) {
            synchronized (this) {
                try {
                    if (this.kk == null) {
                        this.kk = new com.bytedance.sdk.openadsdk.core.o.ox.ox.ox(getContext(), this.s);
                    }
                } finally {
                }
            }
        }
        return this.kk;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void d(JSONObject jSONObject, boolean z) {
        d().dq(p());
        if (fw()) {
            if (dq() || !mp()) {
                dq((com.bytedance.sdk.openadsdk.core.r.ox) null);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void d(boolean z) {
        if (com.bytedance.sdk.openadsdk.core.op.f3334d >= 5400 && z) {
            this.o = z;
            if (dq()) {
                com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(true, com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.s, this.no), o());
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(int i) {
        this.ia = i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(int i, ITTDownloadAdapter.OnEventLogHandler onEventLogHandler) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(Activity activity) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(com.bytedance.sdk.openadsdk.core.o.d.dq dqVar, boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(j jVar, boolean z) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq() {
        Bridge bridge = this.mn;
        return bridge != null && com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(bridge, o()) == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq(JSONObject jSONObject, boolean z) {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq(boolean z, boolean z2) {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void ia() {
        no();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void kk() {
        iw();
        WeakReference<Context> weakReference = this.ox;
        if (weakReference != null) {
            weakReference.clear();
            this.ox = null;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void mn() {
        if (this.mn != null) {
            hat f2 = hat.f();
            f2.f19148c.put(0, new op().dq(TTDownloadField.TT_FORCE, Boolean.TRUE).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())));
            this.mn.call(8, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean ox() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void p(boolean z) {
        this.no = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public Map<String, Object> s() {
        return new HashMap();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void s(boolean z) {
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.p, this.iw, this.s, (JSONObject) null, o());
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.s, o(), z);
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.iw, o());
        no();
    }
}
