package com.ss.android.download.api.model;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.ss.android.downloadlib.addownload.no;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    private final String f9113d;
    private String dq;

    /* renamed from: f, reason: collision with root package name */
    private final JSONObject f9114f;
    private final JSONObject ia;
    private final Object ig;
    private final String iw;
    private final String jy;
    private final JSONObject kk;
    private final long mn;
    private final String mp;
    private final int no;
    private final List<String> o;
    private final String ox;
    private final boolean p;
    private final boolean q;
    private final long s;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private String f9115d;
        private String dq;

        /* renamed from: f, reason: collision with root package name */
        private String f9116f;
        private JSONObject fw;
        private JSONObject ia;
        private int ig;
        private String iw;
        private JSONObject kk;
        private long mn;
        private Object mp;
        private List<String> no;
        private Map<String, Object> o;
        private String ox;
        private String q;
        private long s;
        private boolean p = false;
        private boolean jy = false;

        public dq d(long j) {
            this.mn = j;
            return this;
        }

        public dq d(String str) {
            this.ox = str;
            return this;
        }

        public dq d(JSONObject jSONObject) {
            this.kk = jSONObject;
            return this;
        }

        public dq d(boolean z) {
            this.p = z;
            return this;
        }

        public dq dq(int i) {
            this.ig = i;
            return this;
        }

        public dq dq(long j) {
            this.s = j;
            return this;
        }

        public dq dq(Object obj) {
            this.mp = obj;
            return this;
        }

        public dq dq(String str) {
            this.f9115d = str;
            return this;
        }

        public dq dq(List<String> list) {
            this.no = list;
            return this;
        }

        public dq dq(JSONObject jSONObject) {
            this.ia = jSONObject;
            return this;
        }

        public dq dq(boolean z) {
            this.jy = z;
            return this;
        }

        public ox dq() {
            if (TextUtils.isEmpty(this.dq)) {
                this.dq = "umeng";
            }
            JSONObject jSONObject = new JSONObject();
            if (this.ia == null) {
                this.ia = new JSONObject();
            }
            try {
                Map<String, Object> map = this.o;
                if (map != null && !map.isEmpty()) {
                    for (Map.Entry<String, Object> entry : this.o.entrySet()) {
                        if (!this.ia.has(entry.getKey())) {
                            this.ia.putOpt(entry.getKey(), entry.getValue());
                        }
                    }
                }
                if (this.jy) {
                    this.f9116f = this.ox;
                    JSONObject jSONObject2 = new JSONObject();
                    this.fw = jSONObject2;
                    if (this.p) {
                        jSONObject2.put("ad_extra_data", this.ia.toString());
                    } else {
                        Iterator<String> keys = this.ia.keys();
                        while (keys.hasNext()) {
                            String next = keys.next();
                            this.fw.put(next, this.ia.get(next));
                        }
                    }
                    this.fw.put("category", this.dq);
                    this.fw.put(TTDownloadField.TT_TAG, this.f9115d);
                    this.fw.put("value", this.s);
                    this.fw.put("ext_value", this.mn);
                    if (!TextUtils.isEmpty(this.q)) {
                        this.fw.put(TTDownloadField.TT_REFER, this.q);
                    }
                    JSONObject jSONObject3 = this.kk;
                    if (jSONObject3 != null) {
                        this.fw = com.ss.android.download.api.ox.d.dq(jSONObject3, this.fw);
                    }
                    if (this.p) {
                        if (!this.fw.has("log_extra") && !TextUtils.isEmpty(this.iw)) {
                            this.fw.put("log_extra", this.iw);
                        }
                        this.fw.put("is_ad_event", "1");
                    }
                }
                if (this.p) {
                    jSONObject.put("ad_extra_data", this.ia.toString());
                    if (!jSONObject.has("log_extra") && !TextUtils.isEmpty(this.iw)) {
                        jSONObject.put("log_extra", this.iw);
                    }
                    jSONObject.put("is_ad_event", "1");
                } else {
                    jSONObject.put("extra", this.ia);
                }
                if (!TextUtils.isEmpty(this.q)) {
                    jSONObject.putOpt(TTDownloadField.TT_REFER, this.q);
                }
                JSONObject jSONObject4 = this.kk;
                if (jSONObject4 != null) {
                    jSONObject = com.ss.android.download.api.ox.d.dq(jSONObject4, jSONObject);
                }
                this.ia = jSONObject;
            } catch (Exception e2) {
                no.r().dq(e2, "DownloadEventModel build");
            }
            return new ox(this);
        }

        public dq ox(String str) {
            this.iw = str;
            return this;
        }

        public dq p(String str) {
            this.q = str;
            return this;
        }
    }

    public ox(dq dqVar) {
        this.dq = dqVar.dq;
        this.f9113d = dqVar.f9115d;
        this.ox = dqVar.ox;
        this.p = dqVar.p;
        this.s = dqVar.s;
        this.iw = dqVar.iw;
        this.mn = dqVar.mn;
        this.ia = dqVar.ia;
        this.kk = dqVar.kk;
        this.o = dqVar.no;
        this.no = dqVar.ig;
        this.ig = dqVar.mp;
        this.q = dqVar.jy;
        this.jy = dqVar.f9116f;
        this.f9114f = dqVar.fw;
        this.mp = dqVar.q;
    }

    public String d() {
        return this.f9113d;
    }

    public String dq() {
        return this.dq;
    }

    public JSONObject ia() {
        return this.ia;
    }

    public Object ig() {
        return this.ig;
    }

    public String iw() {
        return this.iw;
    }

    public JSONObject jy() {
        return this.f9114f;
    }

    public JSONObject kk() {
        return this.kk;
    }

    public long mn() {
        return this.mn;
    }

    public boolean mp() {
        return this.q;
    }

    public int no() {
        return this.no;
    }

    public List<String> o() {
        return this.o;
    }

    public String ox() {
        return this.ox;
    }

    public boolean p() {
        return this.p;
    }

    public String q() {
        return this.jy;
    }

    public long s() {
        return this.s;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("category: ");
        sb.append(this.dq);
        sb.append("\ttag: ");
        sb.append(this.f9113d);
        sb.append("\tlabel: ");
        sb.append(this.ox);
        sb.append("\nisAd: ");
        sb.append(this.p);
        sb.append("\tadId: ");
        sb.append(this.s);
        sb.append("\tlogExtra: ");
        sb.append(this.iw);
        sb.append("\textValue: ");
        sb.append(this.mn);
        sb.append("\nextJson: ");
        sb.append(this.ia);
        sb.append("\nparamsJson: ");
        sb.append(this.kk);
        sb.append("\nclickTrackUrl: ");
        List<String> list = this.o;
        sb.append(list != null ? list.toString() : "");
        sb.append("\teventSource: ");
        sb.append(this.no);
        sb.append("\textraObject: ");
        Object obj = this.ig;
        sb.append(obj != null ? obj.toString() : "");
        sb.append("\nisV3: ");
        sb.append(this.q);
        sb.append("\tV3EventName: ");
        sb.append(this.jy);
        sb.append("\tV3EventParams: ");
        JSONObject jSONObject = this.f9114f;
        sb.append(jSONObject != null ? jSONObject.toString() : "");
        return sb.toString();
    }
}
