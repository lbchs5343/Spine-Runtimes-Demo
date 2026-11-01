package com.bytedance.msdk.iw.d;

import android.content.Context;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.msdk.iw.dq.ig;
import com.bytedance.msdk.iw.dq.mp;
import com.bytedance.msdk.iw.dq.o;
import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.openadsdk.TTAdSdk;
import com.bytedance.sdk.openadsdk.core.op;
import com.bytedance.sdk.openadsdk.h.no;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class dq {
    private boolean ia;
    private boolean mn;
    protected com.bytedance.msdk.core.iw.d ox;
    private static final com.bytedance.msdk.core.iw.dq p = new com.bytedance.msdk.core.iw.dq();
    private static Map<String, Pair<Boolean, String>> s = new ConcurrentHashMap();
    private static Map<String, com.bytedance.msdk.iw.dq.ox> iw = new ConcurrentHashMap();
    protected final AtomicBoolean dq = new AtomicBoolean(false);

    /* renamed from: d, reason: collision with root package name */
    protected final AtomicBoolean f1103d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: private */
    public void cd() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_GDT);
        if (ox != null) {
            ox.iw();
        }
    }

    public static dq d() {
        return new com.bytedance.msdk.iw.d.dq.dq();
    }

    public static Map<String, Object> d(Map<String, Object> map, String str) {
        return p.d(com.bytedance.msdk.core.dq.getContext(), map, str);
    }

    public static void d(String str) {
        final com.bytedance.msdk.iw.dq.ox ox;
        if (TextUtils.equals(MediationConstant.ADN_PANGLE, str) || (ox = ox(str)) == null) {
            return;
        }
        if ((!TextUtils.equals(MediationConstant.ADN_MINTEGRAL, str) && !TextUtils.equals(MediationConstant.ADN_KLEVIN, str)) || com.bytedance.msdk.dq.s.iw.s()) {
            ox.ia();
        } else {
            if (ox.s()) {
                return;
            }
            com.bytedance.msdk.dq.s.iw.d(new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.7
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.msdk.iw.dq.ox.this.ia();
                }
            });
        }
    }

    public static int dq() {
        return s.size();
    }

    public static com.bytedance.msdk.api.p.dq.d.iw.dq dq(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return p.dq(str);
    }

    public static String dq(Map<String, Object> map, String str) {
        return p.dq(com.bytedance.msdk.core.dq.getContext(), map, str);
    }

    public static void dq(String str, Pair<Boolean, String> pair) {
        s.put(str, pair);
    }

    private static synchronized com.bytedance.msdk.iw.dq.ox ox(String str) {
        char c2;
        synchronized (dq.class) {
            try {
                if (TextUtils.isEmpty(str)) {
                    return null;
                }
                com.bytedance.msdk.iw.dq.ox oxVar = iw.get(str);
                if (oxVar != null) {
                    return oxVar;
                }
                if (com.bytedance.msdk.core.dq.d().dq(str) == null) {
                    return null;
                }
                switch (str.hashCode()) {
                    case -1128782217:
                        if (str.equals(MediationConstant.ADN_KLEVIN)) {
                            c2 = 5;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -995541405:
                        if (str.equals(MediationConstant.ADN_PANGLE)) {
                            c2 = 0;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case -902468465:
                        if (str.equals(MediationConstant.ADN_SIGMOB)) {
                            c2 = '\b';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 3432:
                        if (str.equals(MediationConstant.ADN_KS)) {
                            c2 = 4;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 102199:
                        if (str.equals(MediationConstant.ADN_GDT)) {
                            c2 = 2;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 92668925:
                        if (str.equals(MediationConstant.ADN_ADMOB)) {
                            c2 = 7;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 93498907:
                        if (str.equals(MediationConstant.ADN_BAIDU)) {
                            c2 = 3;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 111433589:
                        if (str.equals(MediationConstant.ADN_UNITY)) {
                            c2 = '\t';
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1126045977:
                        if (str.equals(MediationConstant.ADN_MINTEGRAL)) {
                            c2 = 6;
                            break;
                        }
                        c2 = 65535;
                        break;
                    case 1630528717:
                        if (str.equals("pangle_custom")) {
                            c2 = 1;
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
                    case 1:
                        oxVar = o.kk();
                        break;
                    case 2:
                        oxVar = new com.bytedance.msdk.iw.dq.s();
                        break;
                    case 3:
                        oxVar = new com.bytedance.msdk.iw.dq.d();
                        break;
                    case 4:
                        oxVar = new com.bytedance.msdk.iw.dq.mn();
                        break;
                    case 5:
                        oxVar = new com.bytedance.msdk.iw.dq.iw();
                        break;
                    case 6:
                        oxVar = new com.bytedance.msdk.iw.dq.ia();
                        break;
                    case 7:
                        oxVar = new com.bytedance.msdk.iw.dq.dq();
                        break;
                    case '\b':
                        oxVar = new ig();
                        break;
                    case '\t':
                        oxVar = new mp();
                        break;
                }
                if (oxVar != null) {
                    iw.put(str, oxVar);
                }
                return oxVar;
            } finally {
            }
        }
    }

    public static synchronized void ox() {
        synchronized (dq.class) {
            com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "------------------ GroMore 支持ADN初始化信息 start ---------------------");
                    for (Map.Entry entry : dq.s.entrySet()) {
                        if (entry.getValue() != null) {
                            if (!((Boolean) ((Pair) entry.getValue()).first).booleanValue()) {
                                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", "adnName = " + ((String) entry.getKey()) + " 初始化失败 " + ((String) ((Pair) entry.getValue()).second));
                            } else if (com.bytedance.msdk.core.dq.d().ox((String) entry.getKey())) {
                                com.bytedance.msdk.dq.s.ox.p("TTMediationSDK_SDK_Init", "adnName = " + ((String) entry.getKey()) + " 自定义ADN调用初始化方法成功，请开发者确保接入的自定义ADN初始化结果");
                            } else {
                                com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "adnName = " + ((String) entry.getKey()) + " 初始化成功");
                            }
                        }
                    }
                    com.bytedance.msdk.dq.s.ox.d("TTMediationSDK_SDK_Init", "------------------ GroMore 支持ADN初始化信息 end ---------------------");
                }
            });
        }
    }

    public static com.bytedance.msdk.core.iw.dq p() {
        return p;
    }

    public static void q() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_UNITY);
        if (ox != null) {
            ox.iw();
        }
    }

    public static String s() {
        com.bytedance.msdk.core.no.dq dq = com.bytedance.msdk.core.dq.d().dq(MediationConstant.ADN_PANGLE);
        String dq2 = dq != null ? dq.dq() : null;
        return TextUtils.isEmpty(dq2) ? com.bytedance.msdk.core.d.no().ig() : dq2;
    }

    public void d(final Context context) {
        no();
        com.bytedance.msdk.dq.s.iw.p(new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.3
            @Override // java.lang.Runnable
            public void run() {
                dq.this.ia();
                dq.this.o();
                dq.this.ig();
                dq.this.mp();
                dq.q();
                com.bytedance.msdk.iw.d.dq(context);
                dq.this.f1103d.set(true);
                dq.this.jy();
                dq.this.f();
            }
        });
    }

    public void dq(Context context) {
        Runnable runnable = new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.2
            @Override // java.lang.Runnable
            public void run() {
                dq.this.kk();
                dq.this.iw();
                dq.this.mn();
                dq.this.dq.set(true);
                dq.this.jy();
                dq.this.f();
            }
        };
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            runnable.run();
        } else {
            com.bytedance.msdk.dq.s.iw.ox(runnable);
        }
    }

    public void dq(Context context, boolean z, boolean z2, com.bytedance.msdk.core.iw.d dVar) {
        this.ox = dVar;
        this.dq.set(false);
        this.f1103d.set(false);
        this.mn = z;
        this.ia = z2;
        ox(context);
    }

    public void f() {
        if (!this.mn && this.ia && this.dq.get() && this.f1103d.get()) {
            com.bytedance.msdk.iw.dq.dq();
            ox();
        }
    }

    public void ia() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_BAIDU);
        if (ox != null) {
            ox.iw();
        }
    }

    public void ig() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_SIGMOB);
        if (ox != null) {
            ox.iw();
        }
    }

    public void iw() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_KLEVIN);
        if (ox != null) {
            ox.iw();
        }
    }

    public void jy() {
        com.bytedance.msdk.dq.s.iw.dq(new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.6
            @Override // java.lang.Runnable
            public void run() {
                com.bytedance.msdk.core.iw.d dVar;
                if (dq.this.dq.get() && dq.this.f1103d.get() && (dVar = dq.this.ox) != null) {
                    dVar.dq();
                }
            }
        });
    }

    public void kk() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_PANGLE);
        if (ox != null) {
            ox.iw();
        }
    }

    public void mn() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_MINTEGRAL);
        if (ox != null) {
            ox.iw();
        }
    }

    public void mp() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_KS);
        if (ox != null) {
            ox.iw();
        }
    }

    public void no() {
        if (op.d()) {
            com.bytedance.sdk.component.o.mn.d(new kk("load dex plugin") { // from class: com.bytedance.msdk.iw.d.dq.4
                @Override // java.lang.Runnable
                public void run() {
                    no.s(TTAdSdk.PLUGIN_ADAPTER_PACKAGE_NAME);
                    dq.this.cd();
                }
            });
        } else {
            cd();
        }
    }

    public void o() {
        com.bytedance.msdk.iw.dq.ox ox = ox(MediationConstant.ADN_ADMOB);
        if (ox != null) {
            ox.iw();
        }
    }

    public void ox(final Context context) {
        com.bytedance.msdk.dq.s.iw.ox(new Runnable() { // from class: com.bytedance.msdk.iw.d.dq.5
            @Override // java.lang.Runnable
            public void run() {
                dq.this.dq(context);
                dq.this.d(context);
            }
        });
    }
}
