package com.bytedance.sdk.component.ox.d.dq.ox;

import com.bytedance.sdk.component.ox.d.gh;
import com.bytedance.sdk.component.ox.d.kx;
import java.net.Proxy;

/* loaded from: classes.dex */
public final class kk {
    private static boolean d(kx kxVar, Proxy.Type type) {
        return !kxVar.ia() && type == Proxy.Type.HTTP;
    }

    public static String dq(gh ghVar) {
        String kk = ghVar.kk();
        try {
            String no = ghVar.no();
            if (no != null) {
                return kk + '?' + no;
            }
        } catch (OutOfMemoryError unused) {
        }
        return kk;
    }

    public static String dq(kx kxVar, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(kxVar.d());
        sb.append(' ');
        if (d(kxVar, type)) {
            sb.append(kxVar.dq());
        } else {
            sb.append(dq(kxVar.dq()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }
}
