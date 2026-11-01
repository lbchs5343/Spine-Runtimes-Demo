package com.bytedance.embedapplog;

import android.content.Context;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Pair;
import com.bytedance.embedapplog.hy;
import com.bytedance.embedapplog.s;
import com.bytedance.embedapplog.tv;
import g.awf;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class sc {

    /* renamed from: d, reason: collision with root package name */
    private static final String f741d = "sc#";
    static final String dq = "sc#";
    private static String o;
    private static final List<s> p = new ArrayList();
    private final Context ia;
    private Long ig;
    private final boolean iw;
    private final xx mn;
    private Map<String, String> no;
    private final hy s;
    private final ReentrantLock ox = new ReentrantLock();
    private final AtomicBoolean kk = new AtomicBoolean(false);

    public sc(Context context) {
        this.ia = context.getApplicationContext();
        hy dq2 = ip.dq(context);
        this.s = dq2;
        if (dq2 != null) {
            this.iw = dq2.dq(context);
        } else {
            this.iw = false;
        }
        this.mn = new xx(context);
    }

    private Pair<String, Boolean> dq(Context context) {
        String str;
        Boolean bool;
        hy.dq d2;
        hy hyVar = this.s;
        if (hyVar == null || (d2 = hyVar.d(context)) == null) {
            str = null;
            bool = null;
        } else {
            str = d2.f721d;
            bool = Boolean.valueOf(d2.ox);
            if (d2 instanceof tv.dq) {
                this.ig = Long.valueOf(((tv.dq) d2).dq);
            }
        }
        return new Pair<>(str, bool);
    }

    private static void dq(s.dq dqVar, Object[] objArr) {
        if (dqVar == null || objArr == null) {
            return;
        }
        for (Object obj : objArr) {
            ((s) obj).dq(dqVar);
        }
    }

    public static void dq(s sVar) {
        List<s> list = p;
        synchronized (list) {
            list.add(sVar);
        }
        String str = o;
        if (str != null) {
            dq(new s.dq(str), new Object[]{sVar});
        }
    }

    private static void dq(Runnable runnable) {
        nt.dq(awf.ad(new StringBuilder(), dq, "-query"), runnable);
    }

    public static <K, V> void dq(Map<K, V> map, K k, V v) {
        if (k == null || v == null) {
            return;
        }
        map.put(k, v);
    }

    public static void dq(JSONObject jSONObject, String str, Object obj) {
        if (TextUtils.isEmpty(str) || obj == null) {
            return;
        }
        try {
            jSONObject.put(str, obj);
        } catch (JSONException e2) {
            jo.dq(e2);
        }
    }

    private static Object[] ox() {
        Object[] array;
        List<s> list = p;
        synchronized (list) {
            try {
                array = list.size() > 0 ? list.toArray() : null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return array;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        int i;
        try {
            this.ox.lock();
            ah dq2 = this.mn.dq();
            if (dq2 != null) {
                o = dq2.dq;
                this.no = dq2.dq();
            }
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Pair<String, Boolean> dq3 = dq(this.ia);
            long elapsedRealtime2 = SystemClock.elapsedRealtime() - elapsedRealtime;
            ah ahVar = null;
            String str = null;
            if (dq3.first != null) {
                int i2 = 1;
                if (dq2 != null) {
                    str = dq2.f706d;
                    i = dq2.iw.intValue() + 1;
                } else {
                    i = -1;
                }
                if (TextUtils.isEmpty(str)) {
                    str = UUID.randomUUID().toString();
                }
                if (i > 0) {
                    i2 = i;
                }
                ah ahVar2 = new ah((String) dq3.first, str, (Boolean) dq3.second, Long.valueOf(elapsedRealtime2), Long.valueOf(System.currentTimeMillis()), Integer.valueOf(i2), this.ig);
                this.mn.dq(ahVar2);
                ahVar = ahVar2;
            }
            if (ahVar != null) {
                o = ahVar.dq;
                this.no = ahVar.dq();
            }
            this.ox.unlock();
            dq(new s.dq(o), ox());
        } catch (Throwable th) {
            this.ox.unlock();
            dq(new s.dq(o), ox());
            throw th;
        }
    }

    public void d() {
        if (this.kk.compareAndSet(false, true)) {
            dq(new Runnable() { // from class: com.bytedance.embedapplog.sc.1
                @Override // java.lang.Runnable
                public void run() {
                    sc.this.p();
                }
            });
        }
    }

    public hy dq() {
        return this.s;
    }

    public Map<String, String> dq(long j) {
        if (!this.iw) {
            return null;
        }
        d();
        if (this.no == null) {
            SystemClock.elapsedRealtime();
            try {
                if (this.ox.tryLock(j, TimeUnit.MILLISECONDS)) {
                    this.ox.unlock();
                }
            } catch (InterruptedException e2) {
                jo.dq(e2);
            }
        }
        return this.no;
    }
}
