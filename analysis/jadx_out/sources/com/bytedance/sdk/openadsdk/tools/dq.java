package com.bytedance.sdk.openadsdk.tools;

import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;
import com.bytedance.sdk.openadsdk.api.TTILog;
import com.bytedance.sdk.openadsdk.h.mn;
import g.awf;

/* loaded from: classes3.dex */
public final class dq implements TTILog {

    /* renamed from: d, reason: collision with root package name */
    private d f3875d = new d();
    private final TTILog dq;

    public class d {
        private d() {
        }

        private String dq(String str, String str2, int i, int i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(str);
            sb.append("_");
            sb.append(i);
            sb.append("_");
            sb.append(i2);
            return awf.ad(sb, "_", str2);
        }

        public void dq(String str, String str2, InterfaceC0205dq interfaceC0205dq) {
            String hexString = Integer.toHexString(str2.hashCode());
            int i = 0;
            while (i < str2.length()) {
                int min = Math.min(i + 4096, str2.length());
                interfaceC0205dq.dq(dq(str, hexString, i, min), str2.substring(i, min));
                i = min;
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.tools.dq$dq, reason: collision with other inner class name */
    public interface InterfaceC0205dq {
        void dq(String str, String str2);
    }

    public dq(TTILog tTILog) {
        this.dq = tTILog;
    }

    private void dq(final String str, final String str2, final InterfaceC0205dq interfaceC0205dq) {
        try {
            try {
                if (mn.dq()) {
                    mn.d(new kk("log-big-str") { // from class: com.bytedance.sdk.openadsdk.tools.dq.6
                        @Override // java.lang.Runnable
                        public void run() {
                            dq.this.f3875d.dq(str, str2, interfaceC0205dq);
                        }
                    });
                } else {
                    this.f3875d.dq(str, str2, interfaceC0205dq);
                }
            } catch (Throwable th) {
                th = th;
                ig.dq("", "print big Str failed!", th);
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void d(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.dq.d(str, str2);
        } else {
            dq(str, str2, new InterfaceC0205dq() { // from class: com.bytedance.sdk.openadsdk.tools.dq.2
                @Override // com.bytedance.sdk.openadsdk.tools.dq.InterfaceC0205dq
                public void dq(String str3, String str4) {
                    dq.this.dq.d(str3, str4);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void e(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.dq.e(str, str2);
        } else {
            dq(str, str2, new InterfaceC0205dq() { // from class: com.bytedance.sdk.openadsdk.tools.dq.5
                @Override // com.bytedance.sdk.openadsdk.tools.dq.InterfaceC0205dq
                public void dq(String str3, String str4) {
                    dq.this.dq.e(str3, str4);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void e(String str, String str2, Throwable th) {
        this.dq.e(str, str2, th);
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void e(String str, Throwable th) {
        this.dq.e(str, th);
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void flush() {
        this.dq.flush();
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void forceLogSharding() {
        this.dq.forceLogSharding();
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void i(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.dq.i(str, str2);
        } else {
            dq(str, str2, new InterfaceC0205dq() { // from class: com.bytedance.sdk.openadsdk.tools.dq.3
                @Override // com.bytedance.sdk.openadsdk.tools.dq.InterfaceC0205dq
                public void dq(String str3, String str4) {
                    dq.this.dq.i(str3, str4);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void v(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.dq.v(str, str2);
        } else {
            dq(str, str2, new InterfaceC0205dq() { // from class: com.bytedance.sdk.openadsdk.tools.dq.1
                @Override // com.bytedance.sdk.openadsdk.tools.dq.InterfaceC0205dq
                public void dq(String str3, String str4) {
                    dq.this.dq.v(str3, str4);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void w(String str, String str2) {
        if (str2 == null || str2.length() <= 4096) {
            this.dq.w(str, str2);
        } else {
            dq(str, str2, new InterfaceC0205dq() { // from class: com.bytedance.sdk.openadsdk.tools.dq.4
                @Override // com.bytedance.sdk.openadsdk.tools.dq.InterfaceC0205dq
                public void dq(String str3, String str4) {
                    dq.this.dq.w(str3, str4);
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void w(String str, String str2, Throwable th) {
        this.dq.w(str, str2, th);
    }

    @Override // com.bytedance.sdk.openadsdk.api.TTILog
    public void w(String str, Throwable th) {
        this.dq.w(str, th);
    }
}
