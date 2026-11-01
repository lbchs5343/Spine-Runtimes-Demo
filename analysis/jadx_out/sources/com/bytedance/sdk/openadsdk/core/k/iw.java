package com.bytedance.sdk.openadsdk.core.k;

import com.bytedance.sdk.openadsdk.core.le;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class iw {
    private static final String dq = "iw";

    /* renamed from: d, reason: collision with root package name */
    private final Set<String> f3129d = new HashSet(1);

    /* renamed from: com.bytedance.sdk.openadsdk.core.k.iw$5, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] dq;

        static {
            int[] iArr = new int[p.values().length];
            dq = iArr;
            try {
                iArr[p.GRANTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                dq[p.DENIED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                dq[p.NOT_FOUND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public synchronized boolean d(String str) {
        return true;
    }

    public abstract void dq();

    public abstract void dq(String str);

    public final synchronized void dq(String[] strArr) {
        Collections.addAll(this.f3129d, strArr);
    }

    public final synchronized boolean dq(String str, int i) {
        if (i == 0) {
            return dq(str, p.GRANTED);
        }
        return dq(str, p.DENIED);
    }

    public final synchronized boolean dq(final String str, p pVar) {
        this.f3129d.remove(str);
        int i = AnonymousClass5.dq[pVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.k.iw.2
                    @Override // java.lang.Runnable
                    public void run() {
                        iw.this.dq(str);
                    }
                });
                return true;
            }
            if (i == 3) {
                if (!d(str)) {
                    le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.k.iw.4
                        @Override // java.lang.Runnable
                        public void run() {
                            iw.this.dq(str);
                        }
                    });
                    return true;
                }
                if (this.f3129d.isEmpty()) {
                    le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.k.iw.3
                        @Override // java.lang.Runnable
                        public void run() {
                            iw.this.dq();
                        }
                    });
                    return true;
                }
            }
        } else if (this.f3129d.isEmpty()) {
            le.iw().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.k.iw.1
                @Override // java.lang.Runnable
                public void run() {
                    iw.this.dq();
                }
            });
            return true;
        }
        return false;
    }
}
