package com.ss.android.socialbase.downloader.iw;

import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class kk {

    /* renamed from: d, reason: collision with root package name */
    int f9409d;
    volatile mp dq;
    private JSONObject ia;
    private long iw;
    private int mn;
    private final long ox;
    private final AtomicLong p;
    private volatile long s;

    public kk(long j, long j2) {
        AtomicLong atomicLong = new AtomicLong();
        this.p = atomicLong;
        this.f9409d = 0;
        this.ox = j;
        atomicLong.set(j);
        this.s = j;
        if (j2 >= j) {
            this.iw = j2;
        } else {
            this.iw = -1L;
        }
    }

    public kk(kk kkVar) {
        AtomicLong atomicLong = new AtomicLong();
        this.p = atomicLong;
        this.f9409d = 0;
        this.ox = kkVar.ox;
        this.iw = kkVar.iw;
        atomicLong.set(kkVar.p.get());
        this.s = atomicLong.get();
        this.mn = kkVar.mn;
    }

    public kk(JSONObject jSONObject) {
        this.p = new AtomicLong();
        this.f9409d = 0;
        this.ox = jSONObject.optLong("st");
        ox(jSONObject.optLong("en"));
        dq(jSONObject.optLong("cu"));
        p(p());
    }

    public static String dq(List<kk> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        Collections.sort(list, new Comparator<kk>() { // from class: com.ss.android.socialbase.downloader.iw.kk.1
            @Override // java.util.Comparator
            /* renamed from: dq, reason: merged with bridge method [inline-methods] */
            public int compare(kk kkVar, kk kkVar2) {
                return (int) (kkVar.ox() - kkVar2.ox());
            }
        });
        StringBuilder sb = new StringBuilder();
        Iterator<kk> it = list.iterator();
        while (it.hasNext()) {
            sb.append(it.next());
            sb.append("\r\n");
        }
        return sb.toString();
    }

    public long d() {
        long j = this.iw;
        if (j >= this.ox) {
            return (j - s()) + 1;
        }
        return -1L;
    }

    public void d(int i) {
        this.f9409d = i;
    }

    public void d(long j) {
        this.p.addAndGet(j);
    }

    public long dq() {
        return this.p.get() - this.ox;
    }

    public void dq(int i) {
        this.mn = i;
    }

    public void dq(long j) {
        long j2 = this.ox;
        if (j < j2) {
            j = j2;
        }
        long j3 = this.iw;
        if (j3 > 0) {
            long j4 = j3 + 1;
            if (j > j4) {
                j = j4;
            }
        }
        this.p.set(j);
    }

    public void ia() {
        this.f9409d++;
    }

    public long iw() {
        return this.iw;
    }

    public void kk() {
        this.f9409d--;
    }

    public int mn() {
        return this.mn;
    }

    public JSONObject no() throws JSONException {
        JSONObject jSONObject = this.ia;
        if (jSONObject == null) {
            jSONObject = new JSONObject();
            this.ia = jSONObject;
        }
        jSONObject.put("st", ox());
        jSONObject.put("cu", p());
        jSONObject.put("en", iw());
        return jSONObject;
    }

    public int o() {
        return this.f9409d;
    }

    public long ox() {
        return this.ox;
    }

    public void ox(long j) {
        if (j >= this.ox) {
            this.iw = j;
            return;
        }
        toString();
        if (j == -1) {
            this.iw = j;
        }
    }

    public long p() {
        long j = this.p.get();
        long j2 = this.iw;
        if (j2 > 0) {
            long j3 = j2 + 1;
            if (j > j3) {
                return j3;
            }
        }
        return j;
    }

    public void p(long j) {
        if (j >= this.p.get()) {
            this.s = j;
        }
    }

    public long s() {
        mp mpVar = this.dq;
        if (mpVar != null) {
            long p = mpVar.p();
            if (p > this.s) {
                return p;
            }
        }
        return this.s;
    }

    public String toString() {
        return "Segment{startOffset=" + this.ox + ",\t currentOffset=" + this.p + ",\t currentOffsetRead=" + s() + ",\t endOffset=" + this.iw + '}';
    }
}
