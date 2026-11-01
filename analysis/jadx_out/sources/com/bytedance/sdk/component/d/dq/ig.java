package com.bytedance.sdk.component.d.dq;

import android.os.Bundle;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.sdk.component.ox.d.bl;
import com.bytedance.sdk.component.ox.d.k;
import com.bytedance.sdk.component.ox.d.r;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class ig extends ia implements Cloneable {
    static final List<mp> ia = com.bytedance.sdk.component.d.dq.d.o.dq(mp.HTTP_2, mp.HTTP_1_1);

    /* renamed from: d, reason: collision with root package name */
    public long f1845d;
    public List<kk> dq;
    public Bundle ig;
    public long iw;
    public List<mp> kk;
    public TimeUnit mn;
    public k.dq no;
    public Set<String> o;
    public TimeUnit ox;
    public long p;
    public TimeUnit s;

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        public long f1846d;
        public final List<kk> dq;
        List<mp> ia;
        public long iw;
        public Set<String> kk;
        public TimeUnit mn;
        private k.dq no;
        public Bundle o;
        public TimeUnit ox;
        public long p;
        public TimeUnit s;

        public dq() {
            this.dq = new ArrayList();
            this.f1846d = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.ox = timeUnit;
            this.p = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            this.s = timeUnit;
            this.iw = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            this.mn = timeUnit;
            if (com.bytedance.sdk.component.d.dq.dq.dq.dq().d()) {
                this.no = new k.dq();
            }
        }

        public dq(ig igVar) {
            this.dq = new ArrayList();
            this.f1846d = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.ox = timeUnit;
            this.p = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            this.s = timeUnit;
            this.iw = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            this.mn = timeUnit;
            this.f1846d = igVar.f1845d;
            this.ox = igVar.ox;
            this.p = igVar.p;
            this.s = igVar.s;
            this.iw = igVar.iw;
            this.mn = igVar.mn;
            this.ia = igVar.kk;
            this.kk = igVar.o;
            if (com.bytedance.sdk.component.d.dq.dq.dq.dq().d()) {
                this.no = igVar.no;
            }
            k.dq dqVar = this.no;
            if (dqVar != null) {
                dqVar.wp = (int) igVar.f1845d;
                dqVar.n = igVar.ox;
                dqVar.f2127e = (int) igVar.p;
                dqVar.op = igVar.s;
                dqVar.kx = (int) igVar.iw;
                dqVar.ir = igVar.mn;
                dqVar.bl = igVar.o;
                dqVar.ji = igVar.ig;
            }
        }

        public dq(String str) {
            this.dq = new ArrayList();
            this.f1846d = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.ox = timeUnit;
            this.p = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            this.s = timeUnit;
            this.iw = ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT;
            this.mn = timeUnit;
            this.ia = ig.ia;
            if (com.bytedance.sdk.component.d.dq.dq.dq.dq().d()) {
                this.no = new k.dq();
            }
        }

        public dq d(long j, TimeUnit timeUnit) {
            k.dq dqVar;
            this.p = j;
            this.s = timeUnit;
            if (com.bytedance.sdk.component.d.dq.dq.dq.dq().d() && (dqVar = this.no) != null) {
                dqVar.d(this.p, timeUnit);
            }
            return this;
        }

        public dq dq(long j, TimeUnit timeUnit) {
            k.dq dqVar;
            this.f1846d = j;
            this.ox = timeUnit;
            if (com.bytedance.sdk.component.d.dq.dq.dq.dq().d() && (dqVar = this.no) != null) {
                dqVar.dq(this.f1846d, timeUnit);
            }
            return this;
        }

        public dq dq(Bundle bundle) {
            this.o = bundle;
            k.dq dqVar = this.no;
            if (dqVar != null) {
                dqVar.ji = bundle;
            }
            return this;
        }

        public dq dq(final kk kkVar) {
            k.dq dqVar;
            this.dq.add(kkVar);
            if (com.bytedance.sdk.component.d.dq.dq.dq.dq().d() && (dqVar = this.no) != null) {
                dqVar.dq(new r() { // from class: com.bytedance.sdk.component.d.dq.ig.dq.1
                    @Override // com.bytedance.sdk.component.ox.d.r
                    public bl dq(r.dq dqVar2) throws IOException {
                        return ((com.bytedance.sdk.component.d.dq.dq.dq.iw) kkVar.dq(new com.bytedance.sdk.component.d.dq.dq.dq.d(dqVar2))).dq;
                    }
                });
            }
            return this;
        }

        public dq dq(List<mp> list) {
            ArrayList arrayList = new ArrayList(list);
            if (!arrayList.contains(mp.HTTP_1_1)) {
                throw new IllegalArgumentException("protocols doesn't contain http/1.1: ".concat(String.valueOf(arrayList)));
            }
            if (arrayList.contains(mp.HTTP_1_0)) {
                throw new IllegalArgumentException("protocols must not contain http/1.0: ".concat(String.valueOf(arrayList)));
            }
            if (arrayList.contains(null)) {
                throw new IllegalArgumentException("protocols must not contain null");
            }
            arrayList.remove(mp.SPDY_3);
            this.ia = Collections.unmodifiableList(arrayList);
            return this;
        }

        public dq dq(Set<String> set) {
            this.kk = set;
            k.dq dqVar = this.no;
            if (dqVar != null) {
                dqVar.dq(set);
            }
            return this;
        }

        public ig dq() {
            return com.bytedance.sdk.component.d.dq.dq.dq.dq().d() ? com.bytedance.sdk.component.d.dq.dq.dq.dq(this.no) : com.bytedance.sdk.component.d.dq.dq.dq.dq(this);
        }

        public dq ox(long j, TimeUnit timeUnit) {
            k.dq dqVar;
            this.iw = j;
            this.mn = timeUnit;
            if (com.bytedance.sdk.component.d.dq.dq.dq.dq().d() && (dqVar = this.no) != null) {
                dqVar.ox(this.iw, timeUnit);
            }
            return this;
        }
    }

    public ig() {
        this(new dq());
    }

    public ig(dq dqVar) {
        this.f1845d = dqVar.f1846d;
        this.p = dqVar.p;
        this.iw = dqVar.iw;
        this.ox = dqVar.ox;
        this.s = dqVar.s;
        this.mn = dqVar.mn;
        this.dq = dqVar.dq;
        this.kk = dqVar.ia;
        this.o = dqVar.kk;
    }

    public ig(k.dq dqVar) {
        this.f1845d = dqVar.wp;
        this.p = dqVar.f2127e;
        this.iw = dqVar.kx;
        this.ox = dqVar.n;
        this.s = dqVar.op;
        this.mn = dqVar.ir;
        this.o = dqVar.bl;
        this.no = dqVar;
    }

    public dq d() {
        return new dq(this);
    }

    public d dq(q qVar) {
        return null;
    }

    public p dq() {
        return null;
    }
}
