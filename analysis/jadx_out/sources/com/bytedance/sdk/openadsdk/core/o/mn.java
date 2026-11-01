package com.bytedance.sdk.openadsdk.core.o;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.downloadnew.core.ITTHttpCallback;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public class mn {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.bytedance.sdk.component.kk.d.ox] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.bytedance.sdk.component.kk.d.p] */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.bytedance.sdk.component.kk.d.s] */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static void dq(int i, String str, Map<String, Object> map, ITTHttpCallback iTTHttpCallback) {
        ?? ox;
        if (i == 0) {
            ox = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
            if (map != null) {
                for (Map.Entry<String, Object> entry : map.entrySet()) {
                    ox.dq(entry.getKey(), entry.getValue().toString());
                }
            }
        } else if (i != 1) {
            ox = 0;
        } else {
            ox = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
            HashMap hashMap = new HashMap();
            for (Map.Entry<String, Object> entry2 : map.entrySet()) {
                hashMap.put(entry2.getKey(), entry2.getValue().toString());
            }
            ox.dq(hashMap);
        }
        if (ox != 0) {
            ox.dq(str);
            dq(ox.dq(), iTTHttpCallback);
        }
    }

    private static void dq(com.bytedance.sdk.component.kk.d dVar, ITTHttpCallback iTTHttpCallback) {
        if (dVar != null && dVar.ia()) {
            if (iTTHttpCallback != null) {
                iTTHttpCallback.onResponse(dVar.p());
            }
        } else {
            boolean isEmpty = TextUtils.isEmpty((dVar == null || dVar.d() == null) ? null : dVar.d());
            if (iTTHttpCallback != null) {
                iTTHttpCallback.onError(new Exception(!isEmpty ? dVar.d() : dVar != null ? String.valueOf(dVar.dq()) : ""));
            }
        }
    }

    public static void dq(String str, byte[] bArr, String str2, int i, ITTHttpCallback iTTHttpCallback) {
        if (bArr == null) {
            if (iTTHttpCallback != null) {
                iTTHttpCallback.onError(new Exception("request data is null"));
            }
        } else {
            com.bytedance.sdk.component.kk.d.s d2 = com.bytedance.sdk.openadsdk.core.le.s.dq().d().d();
            d2.dq(str);
            d2.dq(str2, bArr);
            dq(d2.dq(), iTTHttpCallback);
        }
    }
}
