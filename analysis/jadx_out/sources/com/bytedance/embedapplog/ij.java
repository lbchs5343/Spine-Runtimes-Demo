package com.bytedance.embedapplog;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ij implements ox {
    private static volatile ij dq;

    /* renamed from: d, reason: collision with root package name */
    private final CopyOnWriteArraySet<ox> f726d = new CopyOnWriteArraySet<>();

    private ij() {
    }

    public static ij dq() {
        if (dq == null) {
            synchronized (ij.class) {
                try {
                    if (dq == null) {
                        dq = new ij();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    @Override // com.bytedance.embedapplog.ox
    public void d(boolean z, JSONObject jSONObject) {
        Iterator<ox> it = this.f726d.iterator();
        while (it.hasNext()) {
            it.next().d(z, jSONObject);
        }
    }

    @Override // com.bytedance.embedapplog.ox
    public void dq(String str, String str2, String str3) {
        Iterator<ox> it = this.f726d.iterator();
        while (it.hasNext()) {
            it.next().dq(str, str2, str3);
        }
    }

    @Override // com.bytedance.embedapplog.ox
    public void dq(boolean z, String str, String str2, String str3, String str4, String str5, String str6) {
        Iterator<ox> it = this.f726d.iterator();
        while (it.hasNext()) {
            it.next().dq(z, str, str2, str3, str4, str5, str6);
        }
    }

    @Override // com.bytedance.embedapplog.ox
    public void dq(boolean z, JSONObject jSONObject) {
        Iterator<ox> it = this.f726d.iterator();
        while (it.hasNext()) {
            it.next().dq(z, jSONObject);
        }
    }
}
