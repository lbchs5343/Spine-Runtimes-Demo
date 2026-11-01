package com.bytedance.sdk.openadsdk.core;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class le {
    public static volatile boolean dq;
    private static volatile Handler iw;

    /* renamed from: d, reason: collision with root package name */
    public static AtomicBoolean f3144d = new AtomicBoolean(false);
    public static AtomicBoolean ox = new AtomicBoolean(false);
    public static AtomicBoolean p = new AtomicBoolean(false);
    public static final long s = SystemClock.elapsedRealtime();

    public static final class dq implements com.bytedance.sdk.component.iw.jy {
        private dq() {
        }

        @Override // com.bytedance.sdk.component.iw.jy
        @ATSMethod(3)
        public void d(double d2) {
            com.bytedance.sdk.openadsdk.ia.d.dq().d(d2);
        }

        @Override // com.bytedance.sdk.component.iw.jy
        @ATSMethod(8)
        public boolean d(String str, String str2, String str3) {
            return com.bytedance.sdk.openadsdk.ia.d.dq().d(str, str2, str3);
        }

        @Override // com.bytedance.sdk.component.iw.jy
        @ATSMethod(1)
        public com.bytedance.sdk.component.iw.o dq(String str) {
            return com.bytedance.sdk.openadsdk.ia.d.dq().dq(str);
        }

        @Override // com.bytedance.sdk.component.iw.jy
        @ATSMethod(6)
        public InputStream dq(String str, String str2) {
            return com.bytedance.sdk.openadsdk.ia.d.dq().dq(str, str2);
        }

        @Override // com.bytedance.sdk.component.iw.jy
        @ATSMethod(7)
        public InputStream dq(String str, String str2, String str3) {
            return com.bytedance.sdk.openadsdk.ia.d.dq().dq(str, str2, str3);
        }

        @Override // com.bytedance.sdk.component.iw.jy
        @ATSMethod(5)
        public void dq() {
            com.bytedance.sdk.openadsdk.ia.d.dq().dq();
        }

        @Override // com.bytedance.sdk.component.iw.jy
        @ATSMethod(2)
        public void dq(double d2) {
            com.bytedance.sdk.openadsdk.ia.d.dq().dq(d2);
        }

        @Override // com.bytedance.sdk.component.iw.jy
        @ATSMethod(4)
        public void ox(double d2) {
            com.bytedance.sdk.openadsdk.ia.d.dq().ox(d2);
        }
    }

    public static void d() {
        wp.d().dq(1);
        if (!p.get()) {
            dq();
        }
        Context context = wp.getContext();
        if (context == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.le.s.dq().d().dq(context, com.bytedance.sdk.openadsdk.core.multipro.d.ox());
        } catch (Exception unused) {
        }
    }

    public static void dq() {
        Context context;
        if (p.get() || !wp.d().op() || (context = wp.getContext()) == null) {
            return;
        }
        try {
            com.bytedance.sdk.openadsdk.core.le.s.dq().d().dq(context, true, new com.bytedance.sdk.openadsdk.core.le.p(context));
        } catch (Exception unused) {
        }
        p.set(true);
    }

    public static void dq(Context context) {
        f3144d.set(true);
        ox.set(true);
        mn();
        com.bytedance.sdk.openadsdk.core.ir.ce.dq(context);
        ia();
        String ox2 = i.ox();
        com.bytedance.sdk.component.utils.ig.dq("appLogID", ox2);
        if (!TextUtils.isEmpty(ox2)) {
            com.bytedance.sdk.openadsdk.core.gh.d.dq(ox2);
        }
        if (com.bytedance.sdk.openadsdk.dq.dq.dq.dq() != null) {
            com.bytedance.sdk.openadsdk.dq.dq.dq.dq().dq(ox2);
        }
        com.bytedance.sdk.component.adexpress.dq.d.d.dq();
        if (com.bytedance.sdk.openadsdk.core.ox.s.dq(context)) {
            com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.le.1
                @Override // java.lang.Runnable
                public void run() {
                    com.bytedance.sdk.component.utils.ig.p("lqmt", "res preload doing,  Sdk.iB: true  Quitwork: " + no.ia().le());
                    if (no.ia().le()) {
                        return;
                    }
                    com.bytedance.sdk.openadsdk.core.ugeno.iw.dq.d().ox();
                }
            }, ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
        } else {
            com.bytedance.sdk.openadsdk.dq.d.d.d();
        }
    }

    private static void ia() {
        com.bytedance.sdk.openadsdk.core.ox.p.dq().iw(UUID.randomUUID().toString());
    }

    public static Handler iw() {
        if (iw == null) {
            synchronized (le.class) {
                try {
                    if (iw == null) {
                        iw = new Handler(Looper.getMainLooper());
                    }
                } finally {
                }
            }
        }
        return iw;
    }

    private static void mn() {
        if (Build.VERSION.SDK_INT < 28) {
            return;
        }
        try {
            Class.forName("android.content.pm.PackageParser$Package").getDeclaredConstructor(String.class).setAccessible(true);
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", null);
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, null);
            Field declaredField = cls.getDeclaredField("mHiddenApiWarningShown");
            declaredField.setAccessible(true);
            declaredField.setBoolean(invoke, true);
        } catch (Throwable unused) {
        }
    }

    public static void ox() {
        com.bytedance.sdk.component.mn.dq dq2 = ox.dq();
        long d2 = dq2.d("sdk_first_init_timestamp", 0L);
        if (d2 == 0) {
            d2 = System.currentTimeMillis();
            dq2.dq("sdk_first_init_timestamp", d2);
        }
        long currentTimeMillis = System.currentTimeMillis();
        String d3 = com.bytedance.sdk.openadsdk.core.ir.c.d(d2, currentTimeMillis);
        long d4 = dq2.d("sdk_init_timestamp", 0L);
        StringBuilder sb = new StringBuilder();
        sb.append(d4 != 0 ? (currentTimeMillis - d4) / 1000 : 0L);
        com.bytedance.sdk.openadsdk.core.gh.ig.dq().dq(d3, sb.toString());
        dq2.dq("sdk_init_timestamp", System.currentTimeMillis());
    }

    public static void p() {
        com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().dq(new com.bytedance.sdk.component.adexpress.dq.dq.ox() { // from class: com.bytedance.sdk.openadsdk.core.le.2
            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public Handler d() {
                return le.iw();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public int dq() {
                if (wp.d() == null) {
                    return 0;
                }
                return wp.d().ah();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public Context getContext() {
                return wp.getContext();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public int ia() {
                return wp.d().ae();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public boolean ig() {
                return com.bytedance.sdk.openadsdk.core.multipro.d.ox();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public String iw() {
                return no.ia().mp();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public int jy() {
                return com.bytedance.sdk.openadsdk.core.ir.ce.p(wp.getContext());
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public int kk() {
                return wp.d().fp();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public int mn() {
                return 0;
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public ExecutorService mp() {
                return null;
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public int no() {
                return wp.d().g();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public int o() {
                return no.ia().j();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public com.bytedance.sdk.component.adexpress.dq.ox.dq ox() {
                return wp.dq().dq(1);
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public com.bytedance.sdk.component.kk.d.d p() {
                return com.bytedance.sdk.openadsdk.core.le.s.dq().d().p();
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public ExecutorService q() {
                return null;
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.ox
            public com.bytedance.sdk.component.kk.d.ox s() {
                return com.bytedance.sdk.openadsdk.core.le.s.dq().d().ox();
            }
        });
    }

    public static void s() {
        com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().dq(new com.bytedance.sdk.component.adexpress.dq.dq.d() { // from class: com.bytedance.sdk.openadsdk.core.le.3
            @Override // com.bytedance.sdk.component.adexpress.dq.dq.d
            public int delete(String str, String str2, String[] strArr) {
                return com.bytedance.sdk.openadsdk.core.multipro.dq.dq.delete(wp.getContext(), str, str2, strArr);
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.d
            public void insert(String str, ContentValues contentValues) {
                com.bytedance.sdk.openadsdk.core.multipro.dq.dq.insert(wp.getContext(), str, contentValues);
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.d
            public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
                return com.bytedance.sdk.openadsdk.core.multipro.dq.dq.query(wp.getContext(), str, strArr, str2, strArr2, str3, str4, str5);
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.d
            public int update(String str, ContentValues contentValues, String str2, String[] strArr) {
                return com.bytedance.sdk.openadsdk.core.multipro.dq.dq.update(wp.getContext(), str, contentValues, str2, strArr);
            }
        });
        com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().dq(new com.bytedance.sdk.component.adexpress.dq.dq.p() { // from class: com.bytedance.sdk.openadsdk.core.le.4
            @Override // com.bytedance.sdk.component.adexpress.dq.dq.p
            public void dq(final int i) {
                com.bytedance.sdk.openadsdk.core.gh.ig.dq().s(new com.bytedance.sdk.openadsdk.no.dq.dq() { // from class: com.bytedance.sdk.openadsdk.core.le.4.1
                    @Override // com.bytedance.sdk.openadsdk.no.dq.dq
                    public com.bytedance.sdk.openadsdk.core.gh.dq.dq dq() throws Exception {
                        return com.bytedance.sdk.openadsdk.core.gh.dq.ox.d().d(i).mn(o.dq(i));
                    }
                });
            }
        });
        com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().dq(new dq());
        com.bytedance.sdk.component.adexpress.dq.dq.dq.dq().dq(new com.bytedance.sdk.component.adexpress.dq.dq.s() { // from class: com.bytedance.sdk.openadsdk.core.le.5
            @Override // com.bytedance.sdk.component.adexpress.dq.dq.s
            public void delete(String str, String str2) {
                com.bytedance.sdk.openadsdk.core.ox.d.dq().dq(str, str2);
            }

            @Override // com.bytedance.sdk.component.adexpress.dq.dq.s
            public void update(String str, com.bytedance.sdk.component.adexpress.dq.ox.ox oxVar) {
                com.bytedance.sdk.openadsdk.core.ox.d.dq().dq(str, oxVar);
            }
        });
    }
}
