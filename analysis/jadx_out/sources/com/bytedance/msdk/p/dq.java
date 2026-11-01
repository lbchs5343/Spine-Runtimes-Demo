package com.bytedance.msdk.p;

import android.content.Context;
import android.location.Address;
import com.bytedance.msdk.d.p;
import com.bytedance.msdk.ia.bl;
import com.bytedance.msdk.ia.e;
import java.util.Map;

/* loaded from: classes.dex */
public class dq implements com.bytedance.sdk.component.kk.ox.d {

    /* renamed from: d, reason: collision with root package name */
    private Context f1242d;
    String dq = "sp_multi_ttmadnet_config";
    private final bl ox = bl.dq("sp_multi_ttmadnet_config", getContext());

    public dq(Context context) {
        this.f1242d = context;
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public String d() {
        return "msdk";
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public int dq() {
        return 4741;
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public Address dq(Context context) {
        return null;
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public String dq(Context context, String str, String str2) {
        return this.ox.d(str, str2);
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public void dq(Context context, Map<String, ?> map) {
        if (map != null) {
            try {
                for (Map.Entry<String, ?> entry : map.entrySet()) {
                    Object value = entry.getValue();
                    if (value instanceof Integer) {
                        this.ox.dq(entry.getKey(), ((Integer) value).intValue());
                    } else if (value instanceof Long) {
                        this.ox.dq(entry.getKey(), ((Long) value).longValue());
                    } else if (value instanceof Float) {
                        this.ox.dq(entry.getKey(), ((Float) value).floatValue());
                    } else if (value instanceof Boolean) {
                        this.ox.dq(entry.getKey(), ((Boolean) value).booleanValue());
                    } else if (value instanceof String) {
                        this.ox.dq(entry.getKey(), (String) value);
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public Context getContext() {
        return this.f1242d;
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
        return p.dq();
    }

    @Override // com.bytedance.sdk.component.kk.ox.d
    public String s() {
        return e.dq();
    }
}
