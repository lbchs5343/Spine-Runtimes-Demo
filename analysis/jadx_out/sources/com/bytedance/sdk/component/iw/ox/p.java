package com.bytedance.sdk.component.iw.ox;

import com.bytedance.sdk.component.iw.no;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.util.Map;

/* loaded from: classes.dex */
public class p<T> implements no {

    /* renamed from: d, reason: collision with root package name */
    private String f1973d;
    private String dq;
    private boolean ia;
    private int iw;
    private boolean kk;
    private Map<String, String> mn;
    private int no;
    private com.bytedance.sdk.component.iw.mn o;
    private T ox;
    private T p;
    private int s;

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(2)
    public String d() {
        return this.f1973d;
    }

    public p dq(ox oxVar, T t) {
        this.ox = t;
        this.dq = oxVar.mn();
        this.f1973d = oxVar.d();
        this.s = oxVar.ox();
        this.iw = oxVar.p();
        this.kk = oxVar.f();
        this.o = oxVar.fw();
        this.no = oxVar.cd();
        return this;
    }

    public p dq(ox oxVar, T t, Map<String, String> map, boolean z) {
        this.mn = map;
        this.ia = z;
        return dq(oxVar, t);
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(1)
    public String dq() {
        return this.dq;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(9)
    public boolean ia() {
        return this.ia;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(7)
    public int iw() {
        return this.iw;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(10)
    public boolean kk() {
        return this.kk;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(8)
    public Map<String, String> mn() {
        return this.mn;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(12)
    public int no() {
        return this.no;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(11)
    public com.bytedance.sdk.component.iw.mn o() {
        return this.o;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(3)
    public T ox() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(4)
    public T p() {
        return this.p;
    }

    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(6)
    public int s() {
        return this.s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bytedance.sdk.component.iw.no
    @ATSMethod(5)
    public void setResult(Object obj) {
        this.p = this.ox;
        this.ox = obj;
    }
}
