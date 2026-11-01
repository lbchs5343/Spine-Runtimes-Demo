package com.bytedance.msdk.ox.s.dq;

import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.dq.s.ox;
import com.bytedance.msdk.ia.n;
import com.bytedance.msdk.ox.mn.s;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class dq {
    private List<Integer> no;
    private AtomicInteger ox = new AtomicInteger(-1);
    private AtomicBoolean p = new AtomicBoolean();
    public final Map<Integer, Boolean> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Map<Integer, Boolean> f1240d = new HashMap();
    private final Map<Integer, AtomicInteger> s = new HashMap();
    private final AtomicInteger iw = new AtomicInteger();
    private final AtomicInteger mn = new AtomicInteger();
    private final AtomicInteger ia = new AtomicInteger();
    private final List<String> kk = new CopyOnWriteArrayList();
    private final AtomicInteger o = new AtomicInteger(AVMDLDataLoader.AVMDLErrorIsCreateTask);

    public synchronized int d() {
        return this.ox.get();
    }

    public synchronized void d(int i) {
        try {
            if (this.o.get() < i) {
                this.o.set(i);
            }
            this.dq.put(Integer.valueOf(i), Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    public List<Integer> dq() {
        return this.no;
    }

    public synchronized void dq(int i) {
        this.ox.set(i);
    }

    public synchronized void dq(int i, int i2) {
        this.s.put(Integer.valueOf(i), new AtomicInteger(i2));
    }

    public synchronized void dq(int i, String str) {
        try {
            AtomicInteger atomicInteger = this.s.get(Integer.valueOf(i));
            if (atomicInteger != null && atomicInteger.get() != 0) {
                atomicInteger.decrementAndGet();
            }
            if (TextUtils.isEmpty(str)) {
                return;
            }
            this.kk.add(str);
            if (i < -100 && this.mn.get() != 0) {
                this.mn.decrementAndGet();
            }
            if (i > 0 && this.ia.get() != 0) {
                this.ia.decrementAndGet();
            }
            if (this.iw.get() != 0) {
                this.iw.decrementAndGet();
            } else {
                ox.p("TTMediationSDK", "decrementTotalWaterFall--waterfall数量减少一个 ---不用再减了不然就变成-1了");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void dq(List<Integer> list) {
        this.no = list;
    }

    public synchronized void dq(List<no> list, List<no> list2, List<no> list3) {
        int i;
        if (list != null) {
            try {
                if (list.size() != 0) {
                    List<no> d2 = s.d(list);
                    int i2 = 0;
                    if (n.dq(d2)) {
                        i = 0;
                    } else {
                        i = d2.size();
                        for (no noVar : d2) {
                            Iterator<String> it = this.kk.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    String next = it.next();
                                    if (!TextUtils.isEmpty(next) && noVar != null && next.equals(noVar.cd())) {
                                        i--;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (i < 0) {
                        i = 0;
                    }
                    this.ia.set(i);
                    int size = list.size();
                    if (list2 != null) {
                        size += list2.size();
                    }
                    if (list3 != null) {
                        size += list3.size();
                    }
                    for (no noVar2 : list) {
                        Iterator<String> it2 = this.kk.iterator();
                        while (true) {
                            if (it2.hasNext()) {
                                String next2 = it2.next();
                                if (!TextUtils.isEmpty(next2) && noVar2 != null && next2.equals(noVar2.cd())) {
                                    size--;
                                    break;
                                }
                            }
                        }
                    }
                    if (!n.dq(list2)) {
                        for (no noVar3 : list2) {
                            Iterator<String> it3 = this.kk.iterator();
                            while (true) {
                                if (it3.hasNext()) {
                                    String next3 = it3.next();
                                    if (!TextUtils.isEmpty(next3) && noVar3 != null && next3.equals(noVar3.cd())) {
                                        size--;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (!n.dq(list3)) {
                        for (no noVar4 : list3) {
                            Iterator<String> it4 = this.kk.iterator();
                            while (true) {
                                if (it4.hasNext()) {
                                    String next4 = it4.next();
                                    if (!TextUtils.isEmpty(next4) && noVar4 != null && next4.equals(noVar4.cd())) {
                                        size--;
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    if (size >= 0) {
                        i2 = size;
                    }
                    this.iw.set(i2);
                }
            } finally {
            }
        }
    }

    public synchronized void ia(int i) {
        this.mn.set(i);
    }

    public synchronized boolean ia() {
        return this.iw.get() == 0;
    }

    public synchronized void ig() {
        this.ox.set(-1);
        this.p.set(false);
        this.dq.clear();
        this.f1240d.clear();
        this.s.clear();
        this.iw.set(0);
        this.kk.clear();
        this.o.set(AVMDLDataLoader.AVMDLErrorIsCreateTask);
    }

    public synchronized int iw(int i) {
        AtomicInteger atomicInteger = this.s.get(Integer.valueOf(i));
        if (atomicInteger == null) {
            return 0;
        }
        return atomicInteger.get();
    }

    public synchronized boolean iw() {
        AtomicInteger atomicInteger = this.s.get(-100);
        if (atomicInteger != null) {
            if (atomicInteger.get() != 0) {
                return false;
            }
        }
        return true;
    }

    public synchronized void kk(int i) {
        this.ia.set(i);
    }

    public synchronized boolean kk() {
        return this.mn.get() == 0;
    }

    public synchronized void mn(int i) {
        this.iw.set(i);
    }

    public synchronized boolean mn() {
        AtomicInteger atomicInteger = this.s.get(0);
        if (atomicInteger != null) {
            if (atomicInteger.get() != 0) {
                return false;
            }
        }
        return true;
    }

    public synchronized int no() {
        return this.o.get();
    }

    public synchronized boolean o() {
        return this.ia.get() == 0;
    }

    public synchronized boolean ox() {
        return d() > 0;
    }

    public synchronized boolean ox(int i) {
        Boolean bool = this.dq.get(Integer.valueOf(i));
        if (bool != null) {
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }

    public synchronized void p() {
        this.p.set(true);
    }

    public synchronized void p(int i) {
        this.f1240d.put(Integer.valueOf(i), Boolean.TRUE);
    }

    public synchronized boolean s() {
        return this.p.get();
    }

    public synchronized boolean s(int i) {
        Boolean bool = this.f1240d.get(Integer.valueOf(i));
        if (bool != null) {
            if (bool.booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
