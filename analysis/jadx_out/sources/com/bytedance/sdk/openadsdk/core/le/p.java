package com.bytedance.sdk.openadsdk.core.le;

import android.content.Context;
import android.location.Address;
import com.bytedance.sdk.openadsdk.core.i;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.op;
import java.util.Map;

/* loaded from: classes3.dex */
public class p implements com.bytedance.sdk.component.kk.ox.d {
    private Context ox;
    String dq = "sp_multi_ttadnet_config";

    /* renamed from: d, reason: collision with root package name */
    com.bytedance.sdk.component.mn.dq f3152d = n.dq("sp_multi_ttadnet_config");

    public p(Context context) {
        this.ox = context;
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public String d() {
        return "openadsdk";
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public int dq() {
        return Integer.parseInt("1371");
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public Address dq(Context context) {
        return null;
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public String dq(Context context, String str, String str2) {
        return this.f3152d.d(str, str2);
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public void dq(Context context, Map<String, ?> map) {
        if (map != null) {
            try {
                for (Map.Entry<String, ?> entry : map.entrySet()) {
                    Object value = entry.getValue();
                    if (value instanceof Integer) {
                        this.f3152d.dq(entry.getKey(), ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        this.f3152d.dq(entry.getKey(), ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        this.f3152d.dq(entry.getKey(), ((Float) value).floatValue());
                    } else if (value instanceof Boolean) {
                        this.f3152d.dq(entry.getKey(), ((Boolean) value).booleanValue());
                    } else if (value instanceof String) {
                        this.f3152d.dq(entry.getKey(), (String) value);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public Context getContext() {
        return this.ox;
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public String[] iw() {
        return new String[]{"tnc3-bjlgy.zijieapi.com", "tnc3-alisc1.zijieapi.com", "tnc3-aliec2.zijieapi.com"};
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public String ox() {
        return "android";
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public int p() {
        return op.f3334d;
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public String s() {
        return i.ox();
    }
}
