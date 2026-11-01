package com.bytedance.sdk.openadsdk.core.q;

import android.text.TextUtils;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.o.mn;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.core.ir.n;
import com.bytedance.sdk.openadsdk.core.r.ir;
import com.bytedance.sdk.openadsdk.core.wp;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes3.dex */
public class ox {

    /* renamed from: d, reason: collision with root package name */
    public static String f3414d = "";
    public static String dq = "";

    public static class dq implements Runnable {
        private WeakReference<Runnable> dq;

        public dq(Runnable runnable) {
            if (runnable != null) {
                this.dq = new WeakReference<>(runnable);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            WeakReference<Runnable> weakReference = this.dq;
            Runnable runnable = weakReference != null ? weakReference.get() : null;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public static void dq(final dq dqVar) {
        ir by = wp.d().by();
        final String dq2 = by == null ? null : by.dq();
        if (TextUtils.isEmpty(dq2)) {
            return;
        }
        if (TextUtils.isEmpty(f3414d)) {
            f3414d = dq2;
        }
        mn.d(new kk("loadPfJs") { // from class: com.bytedance.sdk.openadsdk.core.q.ox.1
            @Override // java.lang.Runnable
            public void run() {
                dq dqVar2;
                String str = dq2;
                if (str != null && str.equalsIgnoreCase(ox.f3414d)) {
                    if (TextUtils.isEmpty(ox.dq)) {
                        ox.dq = n.dq("js_pform").d(com.bytedance.sdk.component.utils.s.d(dq2), "");
                    }
                    if (!TextUtils.isEmpty(ox.dq) && (dqVar2 = dqVar) != null) {
                        dqVar2.run();
                        return;
                    }
                }
                com.bytedance.sdk.component.kk.d.ox ox = com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
                ox.dq(dq2);
                HashMap hashMap = new HashMap();
                hashMap.put("content-type", "application/json; charset=utf-8");
                ox.p(hashMap);
                ox.dq(new com.bytedance.sdk.component.kk.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.q.ox.1.1
                    @Override // com.bytedance.sdk.component.kk.dq.dq
                    public void dq(com.bytedance.sdk.component.kk.d.p pVar, com.bytedance.sdk.component.kk.d dVar) {
                        try {
                            ox.dq = dVar.p();
                            AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                            ox.f3414d = dq2;
                            dq dqVar3 = dqVar;
                            if (dqVar3 != null) {
                                dqVar3.run();
                            }
                            n.dq("js_pform").d();
                            n.dq("js_pform").dq(com.bytedance.sdk.component.utils.s.d(dq2), ox.dq);
                        } catch (Throwable th) {
                            ig.d("performanceH5", "TTWebViewClient : onPageFinished", th);
                        }
                    }

                    @Override // com.bytedance.sdk.component.kk.dq.dq
                    public void dq(com.bytedance.sdk.component.kk.d.p pVar, IOException iOException) {
                    }
                });
            }
        });
    }

    public static void dq(StringBuilder sb, String str, String str2) {
        int indexOf;
        if (sb == null || TextUtils.isEmpty(str) || (indexOf = sb.indexOf(str)) <= 0) {
            return;
        }
        sb.replace(indexOf, str.length() + indexOf, str2);
    }
}
