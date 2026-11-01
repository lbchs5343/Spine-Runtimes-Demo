package com.bytedance.sdk.openadsdk.core.r;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;

/* loaded from: classes3.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private List<String> f3453d;
    private String dq;

    public iw(Map<String, Object> map) {
        this.dq = "";
        this.f3453d = new ArrayList();
        try {
            this.dq = (String) map.get("auto_test_param");
            String str = (String) map.get("auto_test_hosts");
            if (TextUtils.isEmpty(str)) {
                return;
            }
            JSONArray jSONArray = new JSONArray(str);
            this.f3453d = new ArrayList();
            for (int i = 0; i < jSONArray.length(); i++) {
                this.f3453d.add(jSONArray.optString(i));
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public List<String> d() {
        return this.f3453d;
    }

    public String dq() {
        return this.dq;
    }
}
