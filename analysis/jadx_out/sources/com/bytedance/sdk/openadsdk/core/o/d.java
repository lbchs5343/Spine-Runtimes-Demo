package com.bytedance.sdk.openadsdk.core.o;

import android.content.Context;
import android.os.Message;
import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.core.ir.c;
import com.bytedance.sdk.openadsdk.core.ir.op;
import com.bytedance.sdk.openadsdk.core.r.j;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.bytedance.sdk.openadsdk.downloadnew.core.ValueSetConstants;
import g.abn;
import g.hat;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class d extends com.bytedance.sdk.openadsdk.core.o.ox.ia {
    private Map<String, Object> h;
    private final com.bytedance.sdk.openadsdk.core.h.dq.dq.d ji;

    public d(Context context, j jVar, String str, boolean z) {
        super(context, jVar, str, z);
        this.ji = new com.bytedance.sdk.openadsdk.core.h.dq.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.o.d.1
            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void d(Bridge bridge) {
                ValueSet values;
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).mn.set(7);
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ia.set(true);
                String stringValue = !TextUtils.isEmpty(values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME)) ? values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME) : "";
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    d.this.dq("onInstalled", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), stringValue, ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                } else if (((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig != null) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig.dq(stringValue, ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void d(Bridge bridge, int i) {
                ValueSet values;
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).mn.set(4);
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ia.set(false);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    d.this.dq("onDownloadPaused", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                } else if (((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig != null) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig.d(values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void dq() {
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).mn.set(1);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    d.this.dq("onIdle", 0L, 0L, null, null);
                } else if (((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig != null) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void dq(Bridge bridge) {
                ValueSet values;
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).mn.set(5);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    d.this.dq("onDownloadFailed", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                } else if (((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig != null) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig.ox(values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void dq(Bridge bridge, int i) {
                ValueSet values;
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).mn.set(3);
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ia.set(false);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    d.this.dq("onDownloadActive", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                    return;
                }
                if (((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig != null) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig.dq(values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                }
                if (((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig == null || ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig.ox() || ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).s == null) {
                    return;
                }
                com.bytedance.sdk.openadsdk.core.i.dq.d(((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).s.ff());
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void dq(Bridge bridge, Bridge bridge2) {
                if (bridge == null || bridge.values() == null) {
                    return;
                }
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).mn.set(2);
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    d.this.dq("onIdle", 0L, 0L, null, null);
                } else if (((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig != null) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig.dq();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.h.dq.dq.d
            public void ox(Bridge bridge) {
                ValueSet values;
                ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).mn.set(6);
                if (bridge == null || (values = bridge.values()) == null) {
                    return;
                }
                if (com.bytedance.sdk.openadsdk.core.multipro.d.ox()) {
                    d.this.dq("onDownloadFinished", values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_CURRENT_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                } else if (((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig != null) {
                    ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).ig.dq(values.longValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_TOTAL_BYTES), values.stringValue(ValueSetConstants.VALUE_DOWNLOAD_SHORT_GET_FILE_NAME), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).p.ox());
                }
            }
        };
    }

    private void fw() {
        com.bytedance.sdk.openadsdk.core.r.p gm = this.s.gm();
        if (gm != null) {
            this.h.put("download_url", gm.d());
        }
        this.h.put("download_status_listener", this.ji);
        this.h.put("event_tag", this.iw);
        this.h.put("dialog_to_landing_page_convert", new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.d.2
            @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
            public boolean dq(Map<String, Object> map) {
                d dVar = d.this;
                return dVar.dq(dVar.getContext(), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).s, ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).iw);
            }
        });
        this.h.put("download_popup_manager", no());
        this.h.put("download_manager_hash_code", Integer.valueOf(hashCode()));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public synchronized void d() {
        fw();
        this.o.set(true);
        if (this.wp != null) {
            op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())).dq(TTDownloadField.TT_DOWNLOAD_STATUSCHANGE_LISTENER, this.ji);
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
            com.bytedance.sdk.openadsdk.core.r.p gm = this.s.gm();
            if (gm != null) {
                hashMap.put("download_url", gm.d());
            }
            hashMap.putAll(this.h);
            hashMap.put("download_status_listener", this.ji);
            hashMap.put("event_tag", this.iw);
            hashMap.put(abn.EXTRA_SOURCE, Integer.valueOf(c.dq(this.iw)));
            hashMap.put("dialog_to_landing_page_convert", new com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.o.d.3
                @Override // com.bytedance.sdk.openadsdk.core.ia.dq.dq.dq
                public boolean dq(Map<String, Object> map) {
                    d dVar = d.this;
                    return dVar.dq(dVar.getContext(), ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).s, ((com.bytedance.sdk.openadsdk.core.o.ox.ia) d.this).iw);
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
        this.h.put("is_open_oppo_market_auto_download", Boolean.valueOf(z));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public void dq(int i) {
        this.h.put("need_check_compliance", Integer.valueOf(i));
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
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.iw, this.s, (JSONObject) null, o());
        com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(this.s, o(), z);
        this.h = new HashMap();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean dq() {
        Bridge bridge = this.wp;
        return bridge != null && com.bytedance.sdk.openadsdk.core.o.ox.d.d.dq(bridge, o()) == 2;
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
            if (this.p == null) {
                return;
            }
            AtomicBoolean atomicBoolean = this.o;
            if (atomicBoolean != null && atomicBoolean.get()) {
                this.o.set(false);
                if (this.wp != null) {
                    op<String, Object> dq = new op().dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o()));
                    Bridge bridge = this.wp;
                    hat g2 = hat.g(1);
                    g2.f19148c.put(0, dq);
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
        if (this.p == null) {
            return;
        }
        this.o.set(false);
        if (this.wp != null) {
            hat f2 = hat.f();
            f2.f19148c.put(0, new op().dq(TTDownloadField.TT_FORCE, Boolean.TRUE).dq(TTDownloadField.TT_HASHCODE, Integer.valueOf(o())));
            this.wp.call(8, f2.k(), Void.class);
        }
        d();
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public void ox(boolean z) {
        this.h.put("convert_from_landing_page", Boolean.valueOf(z));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public boolean ox() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public void p(boolean z) {
        this.kx = z;
        this.h.put("is_click_button", Boolean.valueOf(z));
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia
    public boolean p() {
        return false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.o.ox.ia, com.bytedance.sdk.openadsdk.core.o.d.ox
    public Map<String, Object> s() {
        return this.h;
    }
}
