package com.bytedance.sdk.openadsdk.api.plugin.dq;

import android.text.TextUtils;
import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.plugin.Plugin;
import com.bytedance.sdk.openadsdk.TTAppContextHolder;
import com.bytedance.sdk.openadsdk.TTPluginListener;
import com.bytedance.sdk.openadsdk.api.plugin.mn;
import g.hat;

/* loaded from: classes.dex */
public final class dq implements Bridge {
    private static volatile dq dq;

    private Plugin dq(ValueSet valueSet) {
        if (valueSet == null) {
            return null;
        }
        String stringValue = valueSet.stringValue(0);
        if (TextUtils.isEmpty(stringValue)) {
            return null;
        }
        return Zeus.getPlugin(stringValue);
    }

    public static dq dq() {
        if (dq == null) {
            synchronized (dq.class) {
                try {
                    if (dq == null) {
                        dq = new dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0087  */
    @Override // com.bykv.vk.openvk.api.proto.Caller
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (i != 13) {
            switch (i) {
                case 4:
                    if (valueSet != null) {
                        return (T) Zeus.getPlugin(valueSet.stringValue(0)).mClassLoader;
                    }
                    return null;
                case 5:
                    return (T) Boolean.valueOf(valueSet != null ? Zeus.loadPlugin(valueSet.stringValue(0)) : false);
                case 6:
                    return (T) Boolean.valueOf(valueSet != null ? Zeus.isPluginInstalled(valueSet.stringValue(0)) : false);
                case 7:
                    return (T) Boolean.valueOf(valueSet != null ? Zeus.isPluginLoaded(valueSet.stringValue(0)) : false);
                case 8:
                    CharSequence charSequence = valueSet != null ? (T) mn.dq(valueSet.stringValue(0)) : (T) "";
                    return TextUtils.isEmpty(charSequence) ? "0.0.0.0" : (T) charSequence;
                default:
                    switch (i) {
                        case 100:
                            if (valueSet != null) {
                                Zeus.unInstallPlugin(valueSet.stringValue(0));
                            }
                            return null;
                        case 101:
                            Plugin dq2 = dq(valueSet);
                            if (dq2 != null) {
                                return (T) Integer.valueOf(dq2.getApiVersionCode());
                            }
                            return null;
                        case 102:
                            Plugin dq3 = dq(valueSet);
                            if (dq3 != null) {
                                return (T) Integer.valueOf(dq3.getInternalVersionCode());
                            }
                            return null;
                        case 103:
                            Plugin dq4 = dq(valueSet);
                            if (dq4 != null) {
                                return (T) Integer.valueOf(dq4.getVersion());
                            }
                            return null;
                        case 106:
                            TTPluginListener tTPluginListener = valueSet != null ? (TTPluginListener) valueSet.objectValue(0, TTPluginListener.class) : null;
                            if (tTPluginListener != null) {
                                mn.dq(TTAppContextHolder.getContext()).d(tTPluginListener);
                            }
                            return null;
                    }
            }
        }
        Plugin dq5 = dq(valueSet);
        if (dq5 != null) {
            return (T) dq5.getJsonConfig();
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public ValueSet values() {
        hat f2 = hat.f();
        f2.o(10000, 4);
        return f2.k();
    }
}
