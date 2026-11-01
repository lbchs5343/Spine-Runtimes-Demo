package com.bytedance.sdk.component.iw.dq;

import com.bytedance.sdk.component.iw.ig;
import com.bytedance.sdk.component.iw.kk;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class d {
    public static ig dq() {
        return new ig() { // from class: com.bytedance.sdk.component.iw.dq.d.1
            private WeakHashMap<String, String> dq = new WeakHashMap<>();

            private String dq(String str) {
                String str2 = this.dq.get(str);
                if (str2 != null) {
                    return str2;
                }
                String dq = com.bytedance.sdk.component.iw.ox.ox.ox.dq(str);
                this.dq.put(str, dq);
                return dq;
            }

            @Override // com.bytedance.sdk.component.iw.ig
            public String d(kk kkVar) {
                return dq(kkVar.d());
            }

            @Override // com.bytedance.sdk.component.iw.ig
            public String dq(kk kkVar) {
                return dq(kkVar.d() + "#width=" + kkVar.ox() + "#height=" + kkVar.p() + "#scaletype=" + kkVar.s() + "#bitmapConfig=" + kkVar.ia());
            }
        };
    }
}
