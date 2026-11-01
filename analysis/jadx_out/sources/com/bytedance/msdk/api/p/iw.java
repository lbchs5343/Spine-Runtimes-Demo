package com.bytedance.msdk.api.p;

import android.text.TextUtils;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class iw {
    private Map<String, String> ia;
    public final String dq = "TTMediationSDK";

    /* renamed from: d, reason: collision with root package name */
    private String f787d = "";
    private String ox = "";
    private String p = "";
    private int s = 0;
    private String iw = "";
    private String mn = "";

    public static boolean iw(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("[A-Za-z0-9-_]{1,100}");
    }

    public String d() {
        return this.f787d;
    }

    public void d(String str) {
        if (iw(str)) {
            this.ox = str;
        } else {
            Log.e("TTMediationSDK", "流量分组channer字段存在不合法输入");
        }
    }

    public Map<String, String> dq() {
        return this.ia;
    }

    public void dq(int i) {
        this.s = i;
    }

    public void dq(String str) {
        if (iw(str)) {
            this.f787d = str;
        } else {
            Log.e("TTMediationSDK", "流量分组user_id字段存在不合法输入");
        }
    }

    public void dq(Map<String, String> map) {
        this.ia = new HashMap();
        if (map == null || map.size() <= 0) {
            return;
        }
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (entry != null) {
                if (!iw(entry.getKey())) {
                    Log.e("TTMediationSDK", "流量分组" + entry.getKey() + "字段存在不合法输入");
                } else if (iw(entry.getValue())) {
                    this.ia.put(entry.getKey(), entry.getValue());
                } else {
                    Log.e("TTMediationSDK", "流量分组" + entry.getKey() + "字段的值" + entry.getValue() + "存在不合法输入");
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b1, code lost:
    
        if (r7 == null) goto L37;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object obj) {
        boolean z;
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            iw iwVar = (iw) obj;
            boolean z2 = s() == iwVar.s() && TextUtils.equals(mn(), iwVar.mn()) && TextUtils.equals(d(), iwVar.d()) && TextUtils.equals(ox(), iwVar.ox()) && TextUtils.equals(p(), iwVar.p()) && TextUtils.equals(iw(), iwVar.iw());
            Map<String, String> dq = iwVar.dq();
            Map<String, String> map = this.ia;
            if (map != null && dq != null) {
                if (map.size() == dq.size()) {
                    for (String str : this.ia.keySet()) {
                        if (TextUtils.isEmpty(str) || TextUtils.equals(this.ia.get(str), dq.get(str))) {
                        }
                    }
                    z = true;
                }
                z = false;
                break;
            }
            if (map == null) {
            }
            z = false;
            break;
            if (z2 && z) {
                return true;
            }
        }
        return false;
    }

    public String iw() {
        return this.iw;
    }

    public String mn() {
        return this.mn;
    }

    public String ox() {
        return this.ox;
    }

    public void ox(String str) {
        if (iw(str)) {
            this.p = str;
        } else {
            Log.e("TTMediationSDK", "流量分组sub_channer字段存在不合法输入");
        }
    }

    public String p() {
        return this.p;
    }

    public void p(String str) {
        if (iw(str)) {
            this.iw = str;
        } else {
            Log.e("TTMediationSDK", "流量分组gender字段存在不合法输入");
        }
    }

    public int s() {
        return this.s;
    }

    public void s(String str) {
        if (iw(str)) {
            this.mn = str;
        } else {
            Log.e("TTMediationSDK", "流量分组user_value_group字段存在不合法输入");
        }
    }
}
