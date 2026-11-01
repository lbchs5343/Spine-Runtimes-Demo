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
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.core.r.r;
import com.bytedance.sdk.openadsdk.core.wp;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTDownloadAdapter;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.config.IDownloadButtonClickListener;
import com.ss.android.download.api.config.OnItemClickListener;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadEventConfig;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.downloadad.api.download.AdDownloadController;
import com.ss.android.downloadad.api.download.AdDownloadModel;
import g.hat;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class q extends ig {
    private String ia;
    private int ig = 0;
    private DownloadModel iw;
    private boolean jy;
    private AdDownloadController kk;
    private final j mn;
    private volatile com.bytedance.sdk.openadsdk.core.o.ox.ox.ox mp;
    private Bridge no;
    private DownloadEventConfig o;
    private WeakReference<Context> ox;
    private String p;
    private volatile boolean q;
    private AdDownloadModel.Builder s;

    public q(Context context, String str, j jVar, String str2, boolean z) {
        this.ox = new WeakReference<>(context);
        this.mn = jVar;
        this.ia = str2;
        this.p = str;
        AdDownloadModel.Builder dq = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(str, str2, jVar, (JSONObject) null);
        this.s = dq;
        this.iw = dq.build();
        this.kk = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(jVar, z).build();
        this.o = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(this.ia).build();
        this.no = com.bytedance.sdk.openadsdk.core.no.ia().h();
        s(false);
    }

    private boolean cd() {
        if (this.no != null) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.p).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge = this.no;
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
        if (dq(getContext(), this.mn, this.ia)) {
            return true;
        }
        d2.dq(oxVar, this.ia, this.p, new com.bytedance.sdk.openadsdk.core.o.ox.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.q.2
            @Override // com.bytedance.sdk.openadsdk.core.o.ox.dq.d
            public void dq() {
                q.this.gh();
                q.this.d(true);
            }
        });
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dq(final int i, final Map<String, Object> map) {
        try {
            if (this.no == null) {
                return;
            }
            if (ig()) {
                Bridge bridge = this.no;
                hat f2 = hat.f();
                f2.f19148c.put(0, map);
                bridge.call(13, f2.k(), Void.class);
                this.q = false;
                return;
            }
            if (com.bytedance.sdk.openadsdk.core.op.f3334d < 4500) {
                Bridge bridge2 = this.no;
                hat f3 = hat.f();
                f3.f19148c.put(0, map);
                bridge2.call(i, f3.k(), Void.class);
                this.q = false;
                return;
            }
            map.put(TTDownloadField.TT_ITEM_CLICK_LISTENER, new OnItemClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.q.6
                @Override // com.ss.android.download.api.config.OnItemClickListener
                public void onItemClick(DownloadModel downloadModel, DownloadEventConfig downloadEventConfig, DownloadController downloadController) {
                    q.this.o.setDownloadScene(1);
                    map.remove(TTDownloadField.TT_ITEM_CLICK_LISTENER);
                    Bridge bridge3 = q.this.no;
                    int i2 = i;
                    hat f4 = hat.f();
                    f4.f19148c.put(0, map);
                    bridge3.call(i2, f4.k(), Void.class);
                }
            });
            Bridge bridge3 = this.no;
            hat f4 = hat.f();
            f4.f19148c.put(0, map);
            bridge3.call(i, f4.k(), Void.class);
            this.q = false;
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

    private void dq(final Map<String, Object> map) {
        com.bytedance.sdk.openadsdk.core.o.o.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.q.5
            @Override // java.lang.Runnable
            public void run() {
                q.this.dq(17, (Map<String, Object>) map);
            }
        }, this.mn);
    }

    private boolean f() {
        j jVar = this.mn;
        if (jVar != null && jVar.kf() != null) {
            String dq = this.mn.kf().dq();
            if (TextUtils.isEmpty(dq)) {
                return false;
            }
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
        if (this.no == null || r.gh(this.mn) == 1 || r.o(this.mn) || !cd()) {
            return true;
        }
        com.bytedance.sdk.openadsdk.h.mn.dq(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.q.3
            @Override // java.lang.Runnable
            public void run() {
                Toast.makeText(q.this.getContext(), "应用正在下载...", 0).show();
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
            com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(r, new IDownloadButtonClickListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.q.4
                @Override // com.ss.android.download.api.config.IDownloadButtonClickListener
                public void handleComplianceDialog(boolean z) {
                }

                @Override // com.ss.android.download.api.config.IDownloadButtonClickListener
                public void handleMarketFailedComplianceDialog() {
                    if (r == null || q.this.kk == null) {
                        return;
                    }
                    q.this.kk.setDownloadMode(0);
                    q.this.d().dq(q.this.p());
                    r.remove(TTDownloadField.TT_DOWNLOAD_BUTTON_CLICK_LISTENER);
                    if (q.this.mp()) {
                        return;
                    }
                    q.this.dq((com.bytedance.sdk.openadsdk.core.r.ox) null);
                }
            });
            dq(r);
        }
    }

    private void i() {
        AdDownloadController adDownloadController;
        if (com.bytedance.sdk.openadsdk.core.op.f3334d < 5400 || !dq() || this.iw == null || this.q || (adDownloadController = this.kk) == null) {
            return;
        }
        try {
            adDownloadController.setEnableOppoAutoDownload(false);
        } catch (Throwable unused) {
        }
    }

    private boolean ig() {
        j jVar = this.mn;
        if (jVar != null) {
            return r.dq(jVar);
        }
        return false;
    }

    private synchronized void iw() {
        if (this.no == null) {
            return;
        }
        if (ig()) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_ID, Long.valueOf(this.iw.getId())).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge = this.no;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(18, f2.k(), Boolean.class);
            return;
        }
        op<String, Object> dq2 = new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.iw.getDownloadUrl()).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
        Bridge bridge2 = this.no;
        hat g2 = hat.g(1);
        g2.f19148c.put(0, dq2);
        bridge2.call(4, g2.k(), Void.class);
    }

    private boolean jy() {
        j jVar = this.mn;
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
        int i = this.ig;
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("tt_download_check") { // from class: com.bytedance.sdk.openadsdk.core.o.ox.q.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.openadsdk.core.r.ox dq = wp.dq().dq(q.this.mn, q.this.p);
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
                    com.bytedance.sdk.openadsdk.core.r.s hy = q.this.mn.hy();
                    if (hy == null) {
                        q.this.mn.dq(s);
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
                    if (q.this.q()) {
                        return;
                    }
                    q.this.s.setAppIcon(s.iw());
                    q.this.s.setAppName(s.mp());
                    q.this.s.setPackageName(s.ig());
                    q.this.dq(dq);
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
        if (this.no == null) {
            return;
        }
        if (!ig()) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_DOWNLOAD_MODEL, this.iw).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge = this.no;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(5, f2.k(), Void.class);
            return;
        }
        op<String, Object> dq2 = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_ID, Long.valueOf(this.iw.getId()));
        Bridge bridge2 = this.no;
        hat f3 = hat.f();
        f3.f19148c.put(0, dq2);
        if (((Boolean) bridge2.call(19, f3.k(), Boolean.class)).booleanValue()) {
            op<String, Object> dq3 = new op().dq(TTDownloadField.TT_ID, Long.valueOf(this.iw.getId())).dq(TTDownloadField.TT_LOG_EXTRA, this.iw.getLogExtra()).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
            Bridge bridge3 = this.no;
            hat f4 = hat.f();
            f4.f19148c.put(0, dq3);
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
        return ig() ? new op().dq(TTDownloadField.TT_USERAGENT, null).dq(TTDownloadField.TT_IS_DISABLE_DIALOG, Boolean.TRUE).dq(TTDownloadField.TT_DOWNLOAD_MODEL, this.iw).dq(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG, this.o).dq(TTDownloadField.TT_DOWNLOAD_CONTROLLER, this.kk).dq(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER, null).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())) : new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.p).dq(TTDownloadField.TT_ID, Long.valueOf(this.iw.getId())).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_ACTION_TYPE_BUTTON, 2).dq(TTDownloadField.TT_DOWNLOAD_EVENT_CONFIG, this.o).dq(TTDownloadField.TT_DOWNLOAD_CONTROLLER, this.kk);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ig
    public com.bytedance.sdk.openadsdk.core.o.ox.ox.ox d() {
        if (this.mp == null) {
            synchronized (this) {
                try {
                    if (this.mp == null) {
                        this.mp = new com.bytedance.sdk.openadsdk.core.o.ox.ox.ox(getContext(), this.mn);
                    }
                } finally {
                }
            }
        }
        return this.mp;
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
        AdDownloadController adDownloadController;
        if (com.bytedance.sdk.openadsdk.core.op.f3334d >= 5400 && z) {
            this.q = z;
            if (dq() && (adDownloadController = this.kk) != null) {
                try {
                    adDownloadController.setEnableOppoAutoDownload(true);
                } catch (Throwable unused) {
                }
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(int i) {
        this.ig = i;
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
        AdDownloadController adDownloadController = this.kk;
        return adDownloadController != null && adDownloadController.getDownloadMode() == 2;
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
        if (this.no != null) {
            hat f2 = hat.f();
            f2.f19148c.put(0, new op().dq(TTDownloadField.TT_DOWNLOAD_URL, this.iw.getDownloadUrl()).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_FORCE, Boolean.TRUE));
            this.no.call(8, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean ox() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void p(boolean z) {
        this.jy = z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public Map<String, Object> s() {
        return new HashMap();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void s(boolean z) {
        no();
    }
}
