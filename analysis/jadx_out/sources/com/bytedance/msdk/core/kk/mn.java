package com.bytedance.msdk.core.kk;

import android.text.TextUtils;
import g.awf;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class mn extends p {
    private final String ia;
    private List<s> iw;
    private final String kk;
    private String mn;
    private dq o;

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        public String f945d;
        public String dq;
        public String ox;

        public dq(String str, String str2, String str3) {
            this.dq = str;
            this.f945d = str2;
            this.ox = str3;
        }
    }

    public mn(String str, String str2, String str3, String str4, int i, String str5) {
        super(str, str2, str3, str4, i);
        this.ia = "count";
        this.kk = "effective_time";
        this.mn = str5;
        if (TextUtils.isEmpty(str2)) {
            this.o = new dq("waterfall_show_freq", "waterfall_show_span", "waterfall_show_rule_id");
        } else {
            this.o = new dq("freq", "span", "rule_id");
        }
    }

    public void dq(String str, int i) {
        for (s sVar : no()) {
            if (TextUtils.equals(sVar.ox(), str)) {
                sVar.d(i);
                return;
            }
        }
    }

    public void dq(String str, long j) {
        for (s sVar : no()) {
            if (TextUtils.equals(sVar.ox(), str)) {
                sVar.d(j);
                return;
            }
        }
    }

    public String kk() {
        try {
            JSONArray jSONArray = new JSONArray(this.mn);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                jSONObject.put("count", 0);
                jSONObject.put("effective_time", iw.dq(jSONObject.getLong(this.o.f945d)));
            }
            this.mn = jSONArray.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return this.mn;
    }

    public synchronized List<s> no() {
        mn o;
        List<s> list = this.iw;
        if (list != null && list.size() != 0) {
            return this.iw;
        }
        this.iw = new ArrayList();
        if (this.mn == null && (o = mp.dq().o(this.dq)) != null) {
            this.mn = o.mn;
        }
        if (TextUtils.isEmpty(this.mn)) {
            return this.iw;
        }
        try {
            JSONArray jSONArray = new JSONArray(this.mn);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                s sVar = new s();
                String string = jSONObject.getString(this.o.ox);
                if (!TextUtils.isEmpty(string)) {
                    sVar.dq(jSONObject.optInt(this.o.dq));
                    sVar.dq(jSONObject.optLong(this.o.f945d));
                    sVar.dq(string);
                    if (jSONObject.has("count")) {
                        sVar.d(jSONObject.optInt("count"));
                    }
                    if (jSONObject.has("effective_time")) {
                        sVar.d(jSONObject.optLong("effective_time"));
                    }
                    this.iw.add(sVar);
                }
            }
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        if (this.iw.size() > 0) {
            Collections.sort(this.iw, new Comparator<s>() { // from class: com.bytedance.msdk.core.kk.mn.1
                @Override // java.util.Comparator
                /* renamed from: dq, reason: merged with bridge method [inline-methods] */
                public int compare(s sVar2, s sVar3) {
                    long d2 = sVar2.d() - sVar3.d();
                    if (d2 == 0) {
                        return 0;
                    }
                    return d2 > 0 ? 1 : -1;
                }
            });
        }
        return this.iw;
    }

    public String o() {
        try {
            JSONArray jSONArray = new JSONArray();
            for (s sVar : no()) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(this.o.dq, sVar.dq());
                jSONObject.put(this.o.f945d, sVar.d());
                jSONObject.put(this.o.ox, sVar.ox());
                jSONObject.put("count", sVar.s());
                jSONObject.put("effective_time", sVar.p());
                jSONArray.put(jSONObject);
            }
            this.mn = jSONArray.toString();
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
        return this.mn;
    }

    @Override // com.bytedance.msdk.core.kk.p
    public String toString() {
        StringBuilder sb = new StringBuilder("BaseIntervalBean{waterfallId='");
        sb.append(this.dq);
        sb.append("', showRulesVersion='");
        sb.append(this.ox);
        sb.append("', timingMode=");
        sb.append(this.s);
        sb.append("}IntervalFreqctlBean{freqctlRules=");
        sb.append(this.iw);
        sb.append(", freqctlRulesJson='");
        return awf.ad(sb, this.mn, "'}");
    }
}
