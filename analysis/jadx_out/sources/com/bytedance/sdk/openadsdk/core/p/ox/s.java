package com.bytedance.sdk.openadsdk.core.p.ox;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.core.r.mn;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public class s {
    private static final Map<String, AtomicBoolean> ox = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    private final com.bytedance.sdk.openadsdk.core.p.ox.dq f3376d;
    dq dq;

    /* renamed from: com.bytedance.sdk.openadsdk.core.p.ox.s$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[dq.ox.values().length];
            dq = iArr;
            try {
                iArr[dq.ox.KV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[dq.ox.DB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static class d {

        /* renamed from: d, reason: collision with root package name */
        public long f3377d;
        public long dq;
        public String ox;
        public int p = 6607;
        public String s;

        public d(String str, long j, long j2, String str2) {
            this.dq = j;
            this.f3377d = j2;
            this.ox = str;
            this.s = str2;
        }

        public boolean dq() {
            return (TextUtils.isEmpty(this.ox) || this.dq == 0) ? false : true;
        }
    }

    public static class dq {

        /* renamed from: d, reason: collision with root package name */
        private final int f3378d;
        private final String dq;
        private final d iw;
        private final boolean ox;
        private final int p;
        private final ox s;

        public enum d {
            Random,
            TimeLast,
            CustomPriority;

            public static d dq(int i) {
                return i != 0 ? i != 2 ? TimeLast : CustomPriority : Random;
            }
        }

        /* renamed from: com.bytedance.sdk.openadsdk.core.p.ox.s$dq$dq, reason: collision with other inner class name */
        public static class C0179dq {

            /* renamed from: d, reason: collision with root package name */
            private int f3380d;
            private String dq = "Default";
            private boolean ox = true;
            private int p = 1;
            private ox s = ox.DB;
            private d iw = d.TimeLast;

            public C0179dq dq(int i) {
                this.p = i;
                return this;
            }

            public C0179dq dq(d dVar) {
                this.iw = dVar;
                return this;
            }

            public C0179dq dq(ox oxVar) {
                this.s = oxVar;
                return this;
            }

            public C0179dq dq(String str) {
                this.dq = str;
                return this;
            }

            public C0179dq dq(boolean z) {
                this.ox = z;
                return this;
            }

            public dq dq() {
                return new dq(this, null);
            }
        }

        public enum ox {
            KV,
            DB;

            public static ox dq(int i) {
                return i != 1 ? DB : KV;
            }
        }

        private dq(C0179dq c0179dq) {
            this.dq = c0179dq.dq;
            this.f3378d = c0179dq.f3380d;
            this.ox = c0179dq.ox;
            this.s = c0179dq.s;
            this.iw = c0179dq.iw;
            this.p = c0179dq.p;
        }

        public /* synthetic */ dq(C0179dq c0179dq, AnonymousClass1 anonymousClass1) {
            this(c0179dq);
        }

        public boolean d() {
            return this.ox;
        }

        public String dq() {
            return this.dq;
        }

        public int ox() {
            return this.p;
        }

        public d p() {
            return this.iw;
        }
    }

    public s(int i) {
        dq dq2 = dq(i);
        this.dq = dq2;
        if (AnonymousClass1.dq[dq2.s.ordinal()] != 1) {
            this.f3376d = new com.bytedance.sdk.openadsdk.core.p.ox.d();
        } else {
            this.f3376d = new ox();
        }
    }

    private dq dq(int i) {
        mn.dq ox2;
        String str;
        if (i == 3 || i == 4) {
            ox2 = mn.ox();
            str = "Splash";
        } else if (i == 7) {
            ox2 = mn.dq();
            str = "Reward";
        } else if (i != 8) {
            ox2 = null;
            str = null;
        } else {
            ox2 = mn.d();
            str = "Full";
        }
        if (ox2 == null) {
            return new dq.C0179dq().dq();
        }
        return new dq.C0179dq().dq(str).dq((i == 3 || i == 4) ? false : true).dq(dq.ox.dq(ox2.s())).dq(dq.d.dq(ox2.d())).dq(ox2.ox()).dq();
    }

    private AtomicBoolean s(String str) {
        Map<String, AtomicBoolean> map = ox;
        if (!map.containsKey(str)) {
            map.put(str, new AtomicBoolean(false));
        }
        return map.get(str);
    }

    public void d(String str) {
        try {
            this.f3376d.d(str, this.dq);
        } catch (Throwable unused) {
        }
    }

    public d dq(String str, List<String> list) {
        d dq2;
        try {
            synchronized (s(str)) {
                try {
                    System.currentTimeMillis();
                    dq2 = this.f3376d.dq(str, this.dq, list);
                    if (dq2 != null && dq2.dq()) {
                        System.currentTimeMillis();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return dq2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public d dq(String str, boolean z) {
        d dq2;
        try {
            synchronized (s(str)) {
                try {
                    System.currentTimeMillis();
                    dq2 = this.f3376d.dq(str, this.dq);
                    if (dq2 != null && dq2.dq()) {
                        if (z) {
                            this.f3376d.dq(str, dq2.s, true);
                        }
                        System.currentTimeMillis();
                    }
                } finally {
                }
            }
            return dq2;
        } catch (Throwable unused) {
            return null;
        }
    }

    public void dq() {
        try {
            this.f3376d.dq(this.dq);
        } catch (Throwable unused) {
        }
    }

    public void dq(String str) {
        try {
            this.f3376d.dq(str);
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, d dVar, boolean z, long j) {
        try {
            this.f3376d.dq(str, dVar, z, j, this.dq);
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, String str2) {
        try {
            synchronized (s(str)) {
                this.f3376d.dq(str, str2);
            }
        } catch (Throwable unused) {
        }
    }

    public void dq(String str, String str2, boolean z) {
        try {
            synchronized (s(str)) {
                this.f3376d.dq(str, str2, z);
            }
        } catch (Throwable unused) {
        }
    }

    public void ox(String str) {
        try {
            if (s(str).compareAndSet(false, true)) {
                this.f3376d.d(str);
            }
        } catch (Throwable unused) {
        }
    }

    public boolean p(String str) {
        boolean ox2;
        try {
            synchronized (s(str)) {
                ox2 = this.f3376d.ox(str, this.dq);
            }
            return ox2;
        } catch (Throwable unused) {
            return false;
        }
    }
}
