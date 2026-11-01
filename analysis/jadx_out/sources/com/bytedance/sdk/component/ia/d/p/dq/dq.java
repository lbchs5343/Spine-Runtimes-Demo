package com.bytedance.sdk.component.ia.d.p.dq;

import android.text.TextUtils;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.ia.dq.d {

    /* renamed from: d, reason: collision with root package name */
    private d f1924d;
    protected JSONObject dq;
    private String ia;
    private int ig;
    private long iw;
    private String kk;
    private long mn;
    private String no;
    private byte o;
    private byte ox;
    private byte p;
    private long s;

    private dq() {
    }

    public dq(String str, d dVar) {
        this.kk = str;
        this.f1924d = dVar;
    }

    public dq(String str, JSONObject jSONObject) {
        this.kk = str;
        this.dq = jSONObject;
    }

    public static com.bytedance.sdk.component.ia.dq.d p(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int optInt = jSONObject.optInt("type");
            int optInt2 = jSONObject.optInt("priority");
            dq dqVar = new dq();
            dqVar.dq((byte) optInt);
            dqVar.d((byte) optInt2);
            dqVar.dq(jSONObject.optJSONObject("event"));
            dqVar.dq(jSONObject.optString("localId"));
            dqVar.d(jSONObject.optString("genTime"));
            dqVar.dq(jSONObject.optInt("channel"));
            return dqVar;
        } catch (JSONException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public byte d() {
        return this.o;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void d(byte b2) {
        this.p = b2;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void d(long j) {
        this.iw = j;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void d(String str) {
        this.ia = str;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public d dq() {
        return this.f1924d;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void dq(byte b2) {
        this.ox = b2;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void dq(int i) {
        this.ig = i;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void dq(long j) {
        this.s = j;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void dq(String str) {
        this.kk = str;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void dq(JSONObject jSONObject) {
        this.dq = jSONObject;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public long ia() {
        return this.s;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public String iw() {
        if (TextUtils.isEmpty(this.kk)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("localId", this.kk);
            jSONObject.put("event", mn());
            jSONObject.put("genTime", no());
            jSONObject.put("priority", (int) this.p);
            jSONObject.put("type", (int) this.ox);
            jSONObject.put("channel", this.ig);
        } catch (Throwable unused) {
        }
        return jSONObject.toString();
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public long kk() {
        return this.iw;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public synchronized JSONObject mn() {
        d dVar;
        try {
            if (this.dq == null && (dVar = this.f1924d) != null) {
                this.dq = dVar.dq(o());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.dq;
    }

    public String no() {
        return this.ia;
    }

    public String o() {
        return this.no;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public String ox() {
        return this.kk;
    }

    public void ox(byte b2) {
        this.o = b2;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public void ox(long j) {
        this.mn = j;
    }

    public void ox(String str) {
        this.no = str;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public byte p() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.ia.dq.d
    public byte s() {
        return this.p;
    }
}
