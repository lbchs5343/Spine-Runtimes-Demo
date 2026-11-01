package com.bytedance.msdk.core.mn;

import android.text.TextUtils;
import com.bytedance.msdk.core.no.no;
import com.bytedance.msdk.ia.n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class ia {
    public final Map<Integer, Boolean> dq = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    private final Map<Integer, AtomicInteger> f960d = new HashMap();
    private final AtomicInteger ox = new AtomicInteger();
    private final AtomicBoolean p = new AtomicBoolean(false);
    private final AtomicInteger s = new AtomicInteger();
    private final List<Integer> iw = new ArrayList();
    private final AtomicInteger mn = new AtomicInteger();
    private final List<String> ia = new CopyOnWriteArrayList();
    private final AtomicBoolean kk = new AtomicBoolean(false);

    public int d() {
        return this.mn.get();
    }

    public void d(int i) {
        this.mn.set(i);
    }

    public void d(List<Integer> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        synchronized (this) {
            try {
                AtomicInteger atomicInteger = new AtomicInteger();
                Iterator<Integer> it = list.iterator();
                while (it.hasNext()) {
                    Boolean bool = this.dq.get(it.next());
                    if (bool != null && bool.booleanValue()) {
                    }
                    atomicInteger.incrementAndGet();
                }
                this.ox.set(atomicInteger.get());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void d(boolean z) {
        this.kk.set(z);
    }

    public void dq(int i) {
        this.s.set(i);
    }

    public synchronized void dq(int i, int i2) {
        this.f960d.put(Integer.valueOf(i), new AtomicInteger(i2));
    }

    public void dq(int i, boolean z) {
        synchronized (this) {
            try {
                Boolean bool = this.dq.get(Integer.valueOf(i));
                if (bool != null && !bool.booleanValue()) {
                    this.dq.put(Integer.valueOf(i), Boolean.valueOf(z));
                    this.ox.decrementAndGet();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(String str) {
        synchronized (this) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    this.ia.add(str);
                }
                if (this.s.get() != 0) {
                    this.s.decrementAndGet();
                } else {
                    com.bytedance.msdk.dq.s.ox.p("TTMediationSDK", "decrementTotalWaterFall--waterfall数量减少一个 ---不用再减了不然就变成-1了");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void dq(List<Integer> list) {
        if (list != null) {
            this.ox.set(list.size());
            Iterator<Integer> it = list.iterator();
            while (it.hasNext()) {
                this.dq.put(it.next(), Boolean.FALSE);
            }
        }
    }

    public void dq(List<no> list, List<no> list2, List<no> list3) {
        if (list == null || list.size() == 0) {
            return;
        }
        synchronized (this) {
            try {
                int size = list.size();
                if (list2 != null) {
                    size += list2.size();
                }
                if (list3 != null) {
                    size += list3.size();
                }
                for (no noVar : list) {
                    Iterator<String> it = this.ia.iterator();
                    while (true) {
                        if (it.hasNext()) {
                            String next = it.next();
                            if (!TextUtils.isEmpty(next) && noVar != null && next.equals(noVar.cd())) {
                                size--;
                                break;
                            }
                        }
                    }
                }
                if (!n.dq(list2)) {
                    for (no noVar2 : list2) {
                        Iterator<String> it2 = this.ia.iterator();
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
                }
                if (!n.dq(list3)) {
                    for (no noVar3 : list3) {
                        Iterator<String> it3 = this.ia.iterator();
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
                if (size < 0) {
                    size = 0;
                }
                this.s.set(size);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(boolean z) {
        this.p.set(z);
    }

    public boolean dq() {
        return this.p.get();
    }

    public synchronized boolean ia() {
        return this.kk.get();
    }

    public int iw() {
        int i;
        synchronized (this) {
            i = this.ox.get();
        }
        return i;
    }

    public synchronized void iw(int i) {
        this.iw.add(Integer.valueOf(i));
    }

    public synchronized boolean mn() {
        if (iw() == 0) {
            if (p() == 0) {
                return true;
            }
        }
        return false;
    }

    public void ox() {
        synchronized (this) {
            try {
                if (this.mn.get() != 0) {
                    this.mn.decrementAndGet();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public synchronized void ox(int i) {
        AtomicInteger atomicInteger = this.f960d.get(Integer.valueOf(i));
        if (atomicInteger != null && atomicInteger.get() != 0) {
            atomicInteger.decrementAndGet();
        }
    }

    public int p() {
        int i;
        synchronized (this) {
            i = this.s.get();
        }
        return i;
    }

    public synchronized int p(int i) {
        AtomicInteger atomicInteger = this.f960d.get(Integer.valueOf(i));
        if (atomicInteger == null) {
            return -1;
        }
        return atomicInteger.get();
    }

    public synchronized void s() {
        this.s.set(0);
        this.ox.set(0);
        this.dq.clear();
        this.f960d.clear();
        this.p.set(false);
        this.ia.clear();
        this.iw.clear();
        this.kk.set(false);
    }

    public synchronized boolean s(int i) {
        Map<Integer, Boolean> map = this.dq;
        if (map != null && map.get(Integer.valueOf(i)) != null) {
            if (this.dq.get(Integer.valueOf(i)).booleanValue()) {
                return true;
            }
        }
        return false;
    }
}
