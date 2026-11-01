package com.bytedance.embedapplog;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.embedapplog.collector.Collector;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes.dex */
public class le implements Handler.Callback, Comparator<ds> {

    /* renamed from: d, reason: collision with root package name */
    private static le f734d;
    private static long mp;
    public Application dq;
    private Handler ia;
    private wp ig;
    private vw iw;
    private e kk;
    private c mn;
    private Handler no;
    private com.bytedance.embedapplog.util.dq o;
    private gh ox;
    private u p;
    private final ArrayList<ds> s = new ArrayList<>(32);

    private le() {
    }

    public static void dq() {
        if (f734d != null) {
            long currentTimeMillis = System.currentTimeMillis();
            if (Math.abs(currentTimeMillis - mp) > ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT) {
                mp = currentTimeMillis;
                f734d.dq((String[]) null, true);
            }
        }
    }

    public static void dq(ds dsVar) {
        int size;
        Handler handler;
        le leVar = f734d;
        if (leVar == null) {
            jo.d("Init comes First!", null);
            h.dq(dsVar);
            return;
        }
        if (dsVar.f713d == 0) {
            jo.d((Throwable) null);
        }
        synchronized (leVar.s) {
            size = leVar.s.size();
            leVar.s.add(dsVar);
        }
        if (size % 10 != 0 || (handler = leVar.no) == null) {
            return;
        }
        handler.removeMessages(4);
        leVar.no.sendEmptyMessageDelayed(4, size == 0 ? 500L : 250L);
    }

    public static void dq(String[] strArr) {
        le leVar = f734d;
        if (leVar == null) {
            jo.d(new RuntimeException("Init comes First!"));
            return;
        }
        Handler handler = leVar.no;
        if (handler != null) {
            handler.removeMessages(4);
            leVar.no.obtainMessage(5, strArr).sendToTarget();
        }
    }

    private void dq(String[] strArr, boolean z) {
        ArrayList<ds> arrayList;
        synchronized (this.s) {
            arrayList = (ArrayList) this.s.clone();
            this.s.clear();
        }
        int i = 0;
        if (strArr != null) {
            arrayList.ensureCapacity(arrayList.size() + strArr.length);
            for (String str : strArr) {
                arrayList.add(ds.dq(str));
            }
        }
        boolean dq = this.p.dq(arrayList);
        if (arrayList.size() > 0) {
            if (!this.p.fw()) {
                Intent intent = new Intent(this.dq, (Class<?>) Collector.class);
                int size = arrayList.size();
                String[] strArr2 = new String[size];
                int i2 = 0;
                while (i < size) {
                    String jSONObject = arrayList.get(i).s().toString();
                    strArr2[i] = jSONObject;
                    i2 += jSONObject.length();
                    i++;
                }
                if (i2 >= 307200) {
                    jo.d((Throwable) null);
                }
                intent.putExtra("EMBED_K_DATA", strArr2);
                try {
                    this.dq.sendBroadcast(intent);
                    return;
                } catch (Exception e2) {
                    jo.d(e2);
                    return;
                }
            }
            if (!dq && arrayList.size() <= 100) {
                synchronized (this.s) {
                    this.s.addAll(arrayList);
                }
                return;
            }
            Collections.sort(arrayList, this);
            ArrayList<ds> arrayList2 = new ArrayList<>(arrayList.size());
            Iterator<ds> it = arrayList.iterator();
            boolean z2 = false;
            boolean z3 = false;
            while (it.hasNext()) {
                ds next = it.next();
                z2 |= this.kk.dq(next, arrayList2);
                if (next instanceof bu) {
                    z3 = e.dq(next);
                    i = 1;
                }
            }
            this.iw.dq(arrayList2);
            if (i != 0) {
                if (z3) {
                    this.no.removeMessages(7);
                } else if (!yo.d() && yo.dq()) {
                    this.no.sendEmptyMessageDelayed(7, this.p.k());
                }
            }
            if (z2 || z) {
                no();
            }
        }
    }

    public static le iw() {
        if (f734d == null) {
            synchronized (le.class) {
                try {
                    if (f734d == null) {
                        f734d = new le();
                    }
                } finally {
                }
            }
        }
        return f734d;
    }

    private void no() {
        if (jo.f730d) {
            jo.dq("packAndSend once, " + this.kk.dq() + ", hadUI:" + this.kk.d(), null);
        }
        wp wpVar = this.ig;
        if (wpVar != null) {
            wpVar.ia();
        }
        if (this.ia != null) {
            this.ig.dq(yo.dq());
            this.ia.sendMessage(this.no.obtainMessage(6, this.ig));
        }
    }

    private void o() {
        if (this.p.i()) {
            if (this.ox == null) {
                gh ghVar = new gh(this);
                this.ox = ghVar;
                this.ia.obtainMessage(6, ghVar).sendToTarget();
                return;
            }
            return;
        }
        gh ghVar2 = this.ox;
        if (ghVar2 != null) {
            ghVar2.s();
            this.ox = null;
        }
    }

    public Context d() {
        return this.dq;
    }

    @Override // java.util.Comparator
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compare(ds dsVar, ds dsVar2) {
        long j = dsVar.f713d - dsVar2.f713d;
        if (j < 0) {
            return -1;
        }
        return j > 0 ? 1 : 0;
    }

    public void dq(Application application, u uVar, c cVar, cd cdVar) {
        this.dq = application;
        this.iw = new vw(this);
        this.p = uVar;
        this.mn = cVar;
        this.kk = new e(this.mn, this.p);
        this.dq.registerActivityLifecycleCallbacks(cdVar);
        HandlerThread handlerThread = new HandlerThread("bd_tracker_w");
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper(), this);
        this.no = handler;
        handler.sendEmptyMessage(1);
        wi.dq(uVar.ia() != 0);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        try {
            int i = message.what;
            if (i == 1) {
                jo.dq = this.p.le();
                if (!this.mn.iw()) {
                    this.no.removeMessages(1);
                    this.no.sendEmptyMessageDelayed(1, 1000L);
                } else if (this.p.fw()) {
                    HandlerThread handlerThread = new HandlerThread("bd_tracker_n");
                    handlerThread.start();
                    Handler handler = new Handler(handlerThread.getLooper(), this);
                    this.ia = handler;
                    handler.sendEmptyMessage(2);
                    if (this.s.size() > 0) {
                        this.no.removeMessages(4);
                        this.no.sendEmptyMessageDelayed(4, 1000L);
                    }
                    jo.p("net|worker start", null);
                }
                h.dq();
                return true;
            }
            if (i == 2) {
                ArrayList arrayList = new ArrayList(4);
                arrayList.add(new k(this));
                arrayList.add(new i(this));
                wp wpVar = new wp(this);
                this.ig = wpVar;
                arrayList.add(wpVar);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    r rVar = (r) it.next();
                    if (rVar instanceof wp) {
                        this.ig.dq(yo.dq());
                    }
                    long mn = rVar.mn();
                    if (mn < 864000000) {
                        this.ia.sendMessageDelayed(this.no.obtainMessage(6, rVar), mn);
                    }
                }
                this.ig.dq(true);
                o();
                return true;
            }
            if (i == 4) {
                dq((String[]) null, false);
                return true;
            }
            if (i == 5) {
                dq((String[]) message.obj, false);
                return true;
            }
            if (i == 6) {
                r rVar2 = (r) message.obj;
                if (!rVar2.iw()) {
                    long mn2 = rVar2.mn();
                    if (mn2 < 864000000) {
                        this.ia.sendMessageDelayed(this.no.obtainMessage(6, rVar2), mn2);
                    }
                    o();
                }
                this.ig.dq(true);
                return true;
            }
            if (i == 7) {
                synchronized (this.s) {
                    this.s.add(e.s());
                }
                dq((String[]) null, false);
                return true;
            }
            if (i != 89) {
                jo.d((Throwable) null);
                return true;
            }
            c cVar = this.mn;
            if (cVar != null) {
                cVar.s();
            }
            return true;
        } catch (Throwable th) {
            jo.dq("engine:" + th.getMessage());
            return true;
        }
    }

    public com.bytedance.embedapplog.util.dq ia() {
        if (this.o == null) {
            com.bytedance.embedapplog.util.dq no = this.p.t().no();
            this.o = no;
            if (no == null) {
                this.o = com.bytedance.embedapplog.util.d.dq(0);
            }
        }
        return this.o;
    }

    public void kk() {
        Handler handler = this.no;
        if (handler == null || handler.hasMessages(89)) {
            return;
        }
        this.no.sendEmptyMessage(89);
    }

    public e mn() {
        return this.kk;
    }

    public vw ox() {
        return this.iw;
    }

    public u p() {
        return this.p;
    }

    public c s() {
        return this.mn;
    }
}
