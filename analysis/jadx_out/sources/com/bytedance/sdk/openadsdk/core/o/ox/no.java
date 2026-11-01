package com.bytedance.sdk.openadsdk.core.o.ox;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.download.api.download.DownloadController;
import com.ss.android.download.api.download.DownloadModel;
import com.ss.android.download.api.download.DownloadStatusChangeListener;
import com.ss.android.download.api.model.DownloadShortInfo;
import com.ss.android.downloadad.api.download.AdDownloadController;
import g.abn;
import g.hat;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class no extends ia {
    private Map<String, Object> bl;
    private AdDownloadController h;
    private DownloadModel ji;
    private final DownloadStatusChangeListener n;

    public no(Context context, j jVar, String str, boolean z) {
        super(context, jVar, str, z);
        this.n = new DownloadStatusChangeListener() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.no.1
            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadActive(DownloadShortInfo downloadShortInfo, int i) {
                j jVar2;
                no.this.mn.set(3);
                no.this.ia.set(false);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    no noVar = no.this;
                    noVar.dq("onDownloadActive", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, noVar.p.ox());
                    return;
                }
                no noVar2 = no.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = noVar2.ig;
                if (sVar != null) {
                    sVar.dq(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, noVar2.p.ox());
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar2 = no.this.ig;
                if (sVar2 == null || sVar2.ox() || (jVar2 = no.this.s) == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.i.dq.d(jVar2.ff());
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadFailed(DownloadShortInfo downloadShortInfo) {
                no.this.mn.set(5);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    no noVar = no.this;
                    noVar.dq("onDownloadFailed", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, noVar.p.ox());
                    return;
                }
                no noVar2 = no.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = noVar2.ig;
                if (sVar != null) {
                    sVar.ox(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, noVar2.p.ox());
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadFinished(DownloadShortInfo downloadShortInfo) {
                no.this.mn.set(6);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    no noVar = no.this;
                    noVar.dq("onDownloadFinished", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, noVar.p.ox());
                    return;
                }
                no noVar2 = no.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = noVar2.ig;
                if (sVar != null) {
                    sVar.dq(downloadShortInfo.totalBytes, downloadShortInfo.fileName, noVar2.p.ox());
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadPaused(DownloadShortInfo downloadShortInfo, int i) {
                no.this.mn.set(4);
                no.this.ia.set(false);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    no noVar = no.this;
                    noVar.dq("onDownloadPaused", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, noVar.p.ox());
                    return;
                }
                no noVar2 = no.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = noVar2.ig;
                if (sVar != null) {
                    sVar.d(downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, downloadShortInfo.fileName, noVar2.p.ox());
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onDownloadStart(DownloadModel downloadModel, DownloadController downloadController) {
                no.this.mn.set(2);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    no.this.dq("onIdle", 0L, 0L, null, null);
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = no.this.ig;
                if (sVar != null) {
                    sVar.dq();
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onIdle() {
                no.this.mn.set(1);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    no.this.dq("onIdle", 0L, 0L, null, null);
                    return;
                }
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = no.this.ig;
                if (sVar != null) {
                    sVar.dq();
                }
            }

            @Override // com.ss.android.download.api.download.DownloadStatusChangeListener
            public void onInstalled(DownloadShortInfo downloadShortInfo) {
                no.this.mn.set(7);
                no.this.ia.set(true);
                String str2 = !TextUtils.isEmpty(downloadShortInfo.fileName) ? downloadShortInfo.fileName : "";
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    no noVar = no.this;
                    noVar.dq("onInstalled", downloadShortInfo.totalBytes, downloadShortInfo.currentBytes, str2, noVar.p.ox());
                    return;
                }
                no noVar2 = no.this;
                com.bytedance.sdk.openadsdk.core.o.d.s sVar = noVar2.ig;
                if (sVar != null) {
                    sVar.dq(str2, noVar2.p.ox());
                }
            }
        };
    }

    private void fw() {
        this.bl.put("download_model", this.ji);
        this.bl.put("download_controller", this.h);
        com.bytedance.sdk.openadsdk.core.r.p gm = this.s.gm();
        if (gm != null) {
            this.bl.put("download_url", gm.d());
        }
        this.bl.put("download_status_listener", this.n);
        this.bl.put("event_tag", this.iw);
        this.bl.put("dialog_to_landing_page_convert", new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.no.2
            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
            public boolean dq(Map<String, Object> map) {
                no noVar = no.this;
                Context context = noVar.getContext();
                no noVar2 = no.this;
                return noVar.dq(context, noVar2.s, noVar2.iw);
            }
        });
        this.bl.put("download_popup_manager", no());
        this.bl.put("download_manager_hash_code", Integer.valueOf(hashCode()));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public synchronized void d() {
        fw();
        this.o.set(true);
        if (this.wp != null) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER, this.n).dq(TTDownloadField.TT_DOWNLOAD_MODEL, this.ji);
            Bridge bridge = this.wp;
            hat f2 = hat.f();
            f2.f19148c.put(0, dq);
            bridge.call(5, f2.k(), Void.class);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void d(JSONObject jSONObject, boolean z) {
        if (com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq()) {
            c.kx();
            HashMap hashMap = new HashMap();
            hashMap.put("material_meta", this.s);
            hashMap.put("context", getContext());
            hashMap.put("is_market_covert", Boolean.valueOf(dq()));
            hashMap.put("download_model", this.ji);
            hashMap.put("download_controller", this.h);
            com.bytedance.sdk.openadsdk.core.r.p gm = this.s.gm();
            if (gm != null) {
                hashMap.put("download_url", gm.d());
            }
            hashMap.putAll(this.bl);
            hashMap.put("download_status_listener", this.n);
            hashMap.put("event_tag", this.iw);
            hashMap.put(abn.EXTRA_SOURCE, Integer.valueOf(c.dq(this.iw)));
            hashMap.put("dialog_to_landing_page_convert", new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.ox.no.3
                @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
                public boolean dq(Map<String, Object> map) {
                    no noVar = no.this;
                    Context context = noVar.getContext();
                    no noVar2 = no.this;
                    return noVar.dq(context, noVar2.s, noVar2.iw);
                }
            });
            hashMap.put("download_popup_manager", no());
            hashMap.putAll(com.bytedance.sdk.component.no.s.dq.dq().dq(this.s.hashCode() + this.s.el()));
            hashMap.put("convert_from_downloader", Boolean.TRUE);
            hashMap.put("download_manager_hash_code", Integer.valueOf(o()));
            hashMap.put("is_feed_register_direct_download", Boolean.valueOf(z));
            HashMap hashMap2 = new HashMap();
            hashMap.put("download_manager_hash_code", Integer.valueOf(o()));
            com.bytedance.sdk.openadsdk.core.ia.dq.p.dq.dq(this.s, hashMap2, "clickEvent", hashMap, this.iw, new HashMap());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void d(boolean z) {
        this.bl.put("is_open_oppo_market_auto_download", Boolean.valueOf(z));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(int i) {
        this.bl.put("need_check_compliance", Integer.valueOf(i));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.component.utils.e.dq
    public void dq(Message message) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(j jVar, boolean z) {
        if (getContext() == null) {
            return;
        }
        d(c.gh(jVar), z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public void dq(boolean z) {
        this.ji = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(this.iw, this.s, null).build();
        this.h = com.bytedance.sdk.openadsdk.core.o.ox.d.ox.dq(this.s, z).build();
        this.bl = new HashMap();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq() {
        AdDownloadController adDownloadController = this.h;
        return adDownloadController != null && adDownloadController.getDownloadMode() == 2;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq(JSONObject jSONObject, boolean z) {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq(boolean z, boolean z2) {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public synchronized void iw() {
        try {
            AtomicBoolean atomicBoolean = this.o;
            if (atomicBoolean != null && atomicBoolean.get()) {
                this.o.set(false);
                if (this.wp != null) {
                    op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
                    DownloadModel downloadModel = this.ji;
                    op<String, Object> dq2 = dq.dq(TTDownloadField.TT_DOWNLOAD_URL, downloadModel != null ? downloadModel.getDownloadUrl() : "");
                    Bridge bridge = this.wp;
                    hat g2 = hat.g(1);
                    g2.f19148c.put(0, dq2);
                    bridge.call(4, g2.k(), Void.class);
                }
            }
            mp();
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.d.ox
    public void mn() {
        AtomicBoolean atomicBoolean = this.o;
        if (atomicBoolean != null) {
            atomicBoolean.set(false);
        }
        if (this.wp != null) {
            hat f2 = hat.f();
            op opVar = new op();
            DownloadModel downloadModel = this.ji;
            f2.f19148c.put(0, opVar.dq(TTDownloadField.TT_DOWNLOAD_URL, downloadModel != null ? downloadModel.getDownloadUrl() : "").dq(TTDownloadField.TT_FORCE, Boolean.TRUE).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())));
            this.wp.call(8, f2.k(), Void.class);
        }
        d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public void ox(boolean z) {
        this.bl.put("convert_from_landing_page", Boolean.valueOf(z));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean ox() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public void p(boolean z) {
        this.kx = z;
        this.bl.put("is_click_button", Boolean.valueOf(z));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public boolean p() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public Map<String, Object> s() {
        return this.bl;
    }
}
