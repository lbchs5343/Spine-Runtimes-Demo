package com.bytedance.sdk.component.kk;

import android.content.Context;
import android.os.Bundle;
import com.bytedance.sdk.component.d.dq.ig;
import com.bytedance.sdk.component.d.dq.kk;
import com.bytedance.sdk.component.kk.d.s;
import com.bytedance.sdk.component.kk.ox.iw;
import com.bytedance.sdk.component.kk.ox.mn;
import com.bytedance.sdk.component.kk.p.ox;
import com.bytedance.sdk.component.utils.fw;
import g.awf;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: d, reason: collision with root package name */
    private iw f1989d;
    private ig dq;
    private int ox;

    /* renamed from: com.bytedance.sdk.component.kk.dq$dq, reason: collision with other inner class name */
    public static final class C0121dq {
        private Set<String> iw;
        private Bundle mn;
        boolean p = true;
        final List<kk> s = new ArrayList();
        int dq = 10000;

        /* renamed from: d, reason: collision with root package name */
        int f1990d = 10000;
        int ox = 10000;

        private static int dq(String str, long j, TimeUnit timeUnit) {
            if (j < 0) {
                throw new IllegalArgumentException(awf.c(str, " < 0"));
            }
            if (timeUnit == null) {
                throw new NullPointerException("unit == null");
            }
            long millis = timeUnit.toMillis(j);
            if (millis > 2147483647L) {
                throw new IllegalArgumentException(awf.c(str, " too large."));
            }
            if (millis != 0 || j <= 0) {
                return (int) millis;
            }
            throw new IllegalArgumentException(awf.c(str, " too small."));
        }

        public C0121dq d(long j, TimeUnit timeUnit) {
            this.f1990d = dq("timeout", j, timeUnit);
            return this;
        }

        public C0121dq dq(long j, TimeUnit timeUnit) {
            this.dq = dq("timeout", j, timeUnit);
            return this;
        }

        public C0121dq dq(kk kkVar) {
            this.s.add(kkVar);
            return this;
        }

        public C0121dq dq(Set<String> set) {
            this.iw = set;
            return this;
        }

        public C0121dq dq(boolean z) {
            this.p = z;
            return this;
        }

        public dq dq() {
            return new dq(this);
        }

        public C0121dq ox(long j, TimeUnit timeUnit) {
            this.ox = dq("timeout", j, timeUnit);
            return this;
        }
    }

    private dq(C0121dq c0121dq) {
        ig.dq dqVar = new ig.dq();
        long j = c0121dq.dq;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        ig.dq d2 = dqVar.dq(j, timeUnit).ox(c0121dq.ox, timeUnit).d(c0121dq.f1990d, timeUnit);
        if (c0121dq.p) {
            iw iwVar = new iw();
            this.f1989d = iwVar;
            d2.dq(iwVar);
        }
        List<kk> list = c0121dq.s;
        if (list != null && list.size() > 0) {
            Iterator<kk> it = c0121dq.s.iterator();
            while (it.hasNext()) {
                d2.dq(it.next());
            }
        }
        if (c0121dq.mn != null) {
            d2.dq(c0121dq.mn);
        }
        d2.dq(c0121dq.iw);
        this.dq = d2.dq();
    }

    public static void dq() {
        ox.dq(ox.dq.DEBUG);
    }

    private static boolean dq(Context context) {
        String d2 = fw.d(context);
        if (d2 != null) {
            return d2.endsWith(":push") || d2.endsWith(":pushservice");
        }
        return false;
    }

    public s d() {
        return new s(this.dq);
    }

    public void dq(Context context, boolean z) {
        com.bytedance.sdk.component.kk.ox.dq.d(true);
        if (dq(context) || (!fw.dq(context) && z)) {
            mn.dq().dq(this.ox, context).p();
            mn.dq().dq(this.ox, context).dq();
        }
        if (fw.dq(context)) {
            mn.dq().dq(this.ox, context).p();
            mn.dq().dq(this.ox, context).dq();
        }
    }

    public void dq(Context context, boolean z, com.bytedance.sdk.component.kk.ox.d dVar) {
        if (context == null) {
            throw new IllegalArgumentException("tryInitAdTTNet context is null");
        }
        if (dVar == null) {
            throw new IllegalArgumentException("tryInitAdTTNet ITTAdNetDepend is null");
        }
        int dq = dVar.dq();
        this.ox = dq;
        iw iwVar = this.f1989d;
        if (iwVar != null) {
            iwVar.dq(dq);
        }
        mn.dq().dq(this.ox).dq(z);
        mn.dq().dq(this.ox).dq(dVar);
        mn.dq().dq(this.ox).dq(context, fw.dq(context));
    }

    public ig iw() {
        return this.dq;
    }

    public com.bytedance.sdk.component.kk.d.ox ox() {
        return new com.bytedance.sdk.component.kk.d.ox(this.dq);
    }

    public com.bytedance.sdk.component.kk.d.d p() {
        return new com.bytedance.sdk.component.kk.d.d(this.dq);
    }

    public com.bytedance.sdk.component.kk.d.dq s() {
        return new com.bytedance.sdk.component.kk.d.dq(this.dq);
    }
}
