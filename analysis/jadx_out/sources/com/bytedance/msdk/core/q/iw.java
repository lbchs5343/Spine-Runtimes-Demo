package com.bytedance.msdk.core.q;

import android.os.Handler;
import android.os.Looper;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class iw {
    private static final String dq = "iw";

    /* renamed from: d, reason: collision with root package name */
    private Looper f1009d = Looper.getMainLooper();
    private final Set<String> ox = new HashSet(1);

    /* renamed from: com.bytedance.msdk.core.q.iw$5, reason: invalid class name */
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
        com.bytedance.msdk.dq.s.ox.d(dq, "permission not found:".concat(String.valueOf(str)));
        return true;
    }

    public abstract void dq();

    public abstract void dq(String str);

    public final synchronized void dq(String[] strArr) {
        Collections.addAll(this.ox, strArr);
    }

    public final synchronized boolean dq(String str, int i) {
        if (i == 0) {
            return dq(str, p.GRANTED);
        }
        return dq(str, p.DENIED);
    }

    public final synchronized boolean dq(final String str, p pVar) {
        this.ox.remove(str);
        int i = AnonymousClass5.dq[pVar.ordinal()];
        if (i != 1) {
            if (i == 2) {
                new Handler(this.f1009d).post(new Runnable() { // from class: com.bytedance.msdk.core.q.iw.2
                    @Override // java.lang.Runnable
                    public void run() {
                        iw.this.dq(str);
                    }
                });
                return true;
            }
            if (i == 3) {
                if (!d(str)) {
                    new Handler(this.f1009d).post(new Runnable() { // from class: com.bytedance.msdk.core.q.iw.4
                        @Override // java.lang.Runnable
                        public void run() {
                            iw.this.dq(str);
                        }
                    });
                    return true;
                }
                if (this.ox.isEmpty()) {
                    new Handler(this.f1009d).post(new Runnable() { // from class: com.bytedance.msdk.core.q.iw.3
                        @Override // java.lang.Runnable
                        public void run() {
                            iw.this.dq();
                        }
                    });
                    return true;
                }
            }
        } else if (this.ox.isEmpty()) {
            new Handler(this.f1009d).post(new Runnable() { // from class: com.bytedance.msdk.core.q.iw.1
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
