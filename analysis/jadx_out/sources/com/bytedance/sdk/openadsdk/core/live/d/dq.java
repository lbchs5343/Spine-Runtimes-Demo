package com.bytedance.sdk.openadsdk.core.live.d;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ig.dq;
import com.bytedance.sdk.openadsdk.core.ir.h;
import com.bytedance.sdk.openadsdk.core.live.dq.mn;
import com.bytedance.sdk.openadsdk.core.wp;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class dq implements Bridge {
    final mn dq;

    public dq(mn mnVar) {
        this.dq = mnVar;
    }

    private void d(ValueSet valueSet) {
        try {
            this.dq.ox((Map<String, String>) valueSet.objectValue(1, Map.class));
        } catch (Exception e2) {
            ig.d("LiveServiceBridge", e2);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0057, code lost:
    
        if (r1.equals("sendGoldExchangeCoupon") == false) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object dq(ValueSet valueSet) {
        char c2 = 0;
        String stringValue = valueSet.stringValue(0);
        if (TextUtils.isEmpty(stringValue)) {
            return null;
        }
        stringValue.getClass();
        switch (stringValue.hashCode()) {
            case -1828730287:
                break;
            case -955478604:
                if (stringValue.equals("getBiddingToken")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -366799433:
                if (stringValue.equals("onTaskFinish")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1186389324:
                if (stringValue.equals("getPanglePluginVersion")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 1388496268:
                if (stringValue.equals("onAuthCallback")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1979487267:
                if (stringValue.equals("reportPangleEvent")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                d(valueSet);
                return null;
            case 1:
                return p(valueSet);
            case 2:
                ox(valueSet);
                return null;
            case 3:
                return 6607;
            case 4:
                iw(valueSet);
                return null;
            case 5:
                s(valueSet);
                return null;
            default:
                return null;
        }
    }

    private boolean dq(ValueSet valueSet, int i) {
        try {
            Map map = (Map) valueSet.objectValue(i, Map.class);
            if (map != null && map.containsKey("onlyUpdateState")) {
                if (Boolean.parseBoolean(String.valueOf(map.get("onlyUpdateState")))) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        return false;
    }

    private void iw(ValueSet valueSet) {
        try {
            Map map = (Map) valueSet.objectValue(1, Map.class);
            this.dq.dq(Integer.valueOf((String) map.get("is_auth")).intValue() != 0, (String) map.get("open_uid"));
        } catch (Exception e2) {
            ig.d("LiveServiceBridge", e2);
        }
    }

    private Integer mn(ValueSet valueSet) {
        String mn = com.bytedance.sdk.openadsdk.core.live.d.dq().mn();
        if (mn == null) {
            return null;
        }
        if (mn.replaceAll(".", "").startsWith("2112")) {
            Object[] arrayValue = valueSet.arrayValue(1, Object[].class);
            if (arrayValue == null || arrayValue.length == 0) {
                return null;
            }
            return (Integer) arrayValue[0];
        }
        Map map = (Map) valueSet.objectValue(1, Map.class);
        if (map == null || map.size() == 0) {
            return null;
        }
        return Integer.valueOf((String) map.get("adType"));
    }

    private void ox(ValueSet valueSet) {
        try {
            this.dq.d((Map<String, String>) valueSet.objectValue(1, Map.class));
        } catch (Exception e2) {
            ig.d("LiveServiceBridge", e2);
        }
    }

    private Object p(ValueSet valueSet) {
        try {
            Integer mn = mn(valueSet);
            if (mn == null) {
                return null;
            }
            return wp.dq().dq(h.dq(mn.intValue()));
        } catch (Throwable th) {
            ig.d("TTLiveSDkBridge", "invokeGetBiddingToken failed:" + th.getMessage());
            return null;
        }
    }

    private void s(ValueSet valueSet) {
        Map<String, String> map = (Map) valueSet.objectValue(1, Map.class);
        if (map == null) {
            return;
        }
        this.dq.dq(map);
    }

    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (valueSet == null) {
            return null;
        }
        if (i == 0) {
            return (T) dq(valueSet);
        }
        if (i == 1) {
            dq(valueSet.booleanValue(0), valueSet.stringValue(1), valueSet.stringValue(2), (Map) valueSet.objectValue(3, Map.class));
        } else if (i == 2) {
            this.dq.dq(valueSet.intValue(0), valueSet.stringValue(1), dq(valueSet, 2));
        } else if (i == 3) {
            int intValue = valueSet.intValue(0);
            boolean dq = dq(valueSet, 4);
            if (1000 == intValue) {
                this.dq.dq(1, (String) null, dq);
                if (!dq) {
                    this.dq.dq();
                }
            } else if (1001 == intValue) {
                this.dq.dq(-2, valueSet.stringValue(1), dq);
            }
        }
        return null;
    }

    public void dq(boolean z, String str, String str2, Map<String, String> map) {
        final JSONObject jSONObject = new JSONObject();
        if (map != null) {
            try {
                if (!map.isEmpty()) {
                    for (Map.Entry<String, String> entry : map.entrySet()) {
                        if (!jSONObject.has(entry.getKey())) {
                            jSONObject.putOpt(entry.getKey(), entry.getValue());
                        }
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return;
            }
        }
        new dq.C0163dq().dq(str).d(str2).ox("umeng").s(jSONObject.optString("value")).p(jSONObject.optString("log_extra")).dq(new com.bytedance.sdk.openadsdk.iw.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.live.d.dq.1
            @Override // com.bytedance.sdk.openadsdk.iw.dq.dq
            public void dq(JSONObject jSONObject2) throws JSONException {
                if (!TextUtils.isEmpty(jSONObject.optString("ad_extra_data"))) {
                    jSONObject2.put("ad_extra_data", jSONObject.optString("ad_extra_data"));
                }
                if (!TextUtils.isEmpty(jSONObject.optString("is_other_channel"))) {
                    jSONObject2.put("is_other_channel", jSONObject.optString("is_other_channel"));
                }
                if (jSONObject2.has("is_ad_event")) {
                    return;
                }
                jSONObject2.putOpt("is_ad_event", "1");
            }
        });
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        return null;
    }
}
