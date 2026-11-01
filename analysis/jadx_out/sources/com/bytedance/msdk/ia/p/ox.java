package com.bytedance.msdk.ia.p;

import com.bytedance.sdk.component.d.dq.f;
import com.bytedance.sdk.component.d.dq.kk;
import com.bytedance.sdk.component.d.dq.q;
import com.bytedance.sdk.component.ox.d.kx;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Map;

/* loaded from: classes.dex */
public class ox {
    public static Map<String, Object> dq;

    public static class dq implements kk {
        private q d(kk.dq dqVar) {
            try {
                Field field = dqVar.getClass().getDeclaredFields()[0];
                field.setAccessible(true);
                Object obj = field.get(dqVar);
                Field declaredField = obj.getClass().getDeclaredField("request");
                declaredField.setAccessible(true);
                kx kxVar = (kx) declaredField.get(obj);
                declaredField.set(obj, kxVar.iw().dq(String.valueOf(dqVar.dq().d().mn().d("b4oil169.fn.bytedance.net").dq("http").d())).d("case-id", (String) ox.dq.get("case_id")).dq());
                return dqVar.dq();
            } catch (Throwable th) {
                th.printStackTrace();
                return dqVar.dq();
            }
        }

        @Override // com.bytedance.sdk.component.d.dq.kk
        public f dq(kk.dq dqVar) throws IOException {
            q dq = dqVar.dq();
            String mnVar = dq.d().toString();
            if (mnVar.contains("/api/ad/union/mediation/config") || mnVar.contains("/api/ad/union/mediation/exchange")) {
                dq = d(dqVar);
            }
            return dqVar.dq(dq);
        }
    }

    public static void dq(Map map) {
        dq = map;
    }

    public static boolean dq() {
        return com.bytedance.msdk.core.d.no().e();
    }
}
