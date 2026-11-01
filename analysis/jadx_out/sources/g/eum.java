package g;

import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes.dex */
public final class eum {

    /* renamed from: a, reason: collision with root package name */
    public static final Rect f16181a = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public final bbf f16182b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f16183c;

    /* renamed from: d, reason: collision with root package name */
    public dcq f16184d;

    /* renamed from: e, reason: collision with root package name */
    public volatile Rect f16185e;

    /* renamed from: g, reason: collision with root package name */
    public final WeakHashMap f16187g;
    public int h;
    public final fc i;
    public final Paint j;
    public final eqt k;
    public final HashSet l;
    public dcq m;
    public dbj n;
    public ByteBuffer o;
    public int p;
    public final Handler q;
    public final HashSet r;
    public boolean s;
    public int t;
    public final AtomicBoolean v;
    public volatile agj w;
    public final ArrayList u = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public int f16186f = -1;

    public eum(fc fcVar, cpx cpxVar) {
        HashSet hashSet = new HashSet();
        this.l = hashSet;
        this.v = new AtomicBoolean(true);
        this.f16182b = new bbf(this, 0);
        this.p = 1;
        this.r = new HashSet();
        this.f16183c = new Object();
        this.f16187g = new WeakHashMap();
        this.f16184d = ag();
        this.n = null;
        this.s = false;
        this.w = agj.dq;
        this.i = fcVar;
        hashSet.add(cpxVar);
        this.q = com.bytedance.sdk.component.o.d.dq.dq().d();
        Paint paint = new Paint();
        this.j = paint;
        eqt eqtVar = new eqt();
        eqtVar.f16014b = new Rect();
        this.k = eqtVar;
        paint.setAntiAlias(true);
    }

    public final void aa(Rect rect) {
        this.f16185e = rect;
        int height = rect.height() * rect.width();
        int i = this.p;
        this.o = ByteBuffer.allocate(((height / (i * i)) + 1) * 4);
        if (this.f16184d == null) {
            this.f16184d = ag();
        }
    }

    public final Rect ab(dbj dbjVar) {
        ape apeVar;
        boolean c2 = dbjVar.c("\u0089PNG");
        cxf cxfVar = (cxf) dbjVar.z;
        if (!c2 || !dbjVar.c("\r\n\u001a\n")) {
            throw new gng("APNG Format error");
        }
        ArrayList arrayList = new ArrayList();
        while (cxfVar.c() > 0) {
            int position = cxfVar.f13683a.position();
            int b2 = dbjVar.b();
            int g2 = dbjVar.g();
            if (g2 == dpn.f14600a) {
                apeVar = new dpn();
            } else if (g2 == bxt.f12403a) {
                apeVar = new bxt();
            } else if (g2 == aey.f10128a) {
                apeVar = new aey();
            } else if (g2 == dqv.f14652a) {
                apeVar = new dqv();
            } else if (g2 == bje.f11693a) {
                apeVar = new bje();
            } else if (g2 == ene.f15855a) {
                ene eneVar = new ene();
                eneVar.f15857g = new byte[5];
                apeVar = eneVar;
            } else {
                apeVar = new ape();
            }
            apeVar.f10612d = position;
            apeVar.f10611c = b2;
            int c3 = cxfVar.c();
            apeVar.b(dbjVar);
            int c4 = c3 - cxfVar.c();
            int i = apeVar.f10611c;
            if (c4 > i) {
                throw new IOException("Out of chunk area");
            }
            if (c4 < i) {
                dbjVar.aa(i - c4);
            }
            dbjVar.b();
            arrayList.add(apeVar);
        }
        ArrayList arrayList2 = new ArrayList();
        byte[] bArr = new byte[0];
        Iterator it = arrayList.iterator();
        gyn gynVar = null;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            ape apeVar2 = (ape) it.next();
            if (apeVar2 instanceof dpn) {
                this.t = ((dpn) apeVar2).f14601f;
                z = true;
            } else {
                boolean z2 = apeVar2 instanceof bxt;
                ArrayList arrayList3 = this.u;
                if (z2) {
                    gynVar = new gyn(dbjVar, (bxt) apeVar2);
                    gynVar.o = arrayList2;
                    gynVar.m = bArr;
                    arrayList3.add(gynVar);
                } else if (apeVar2 instanceof aey) {
                    if (gynVar != null) {
                        gynVar.n.add(apeVar2);
                    }
                } else if (apeVar2 instanceof dqv) {
                    if (!z) {
                        agw agwVar = new agw(dbjVar);
                        agwVar.f11684g = i2;
                        agwVar.h = i3;
                        arrayList3.add(agwVar);
                        this.t = 1;
                        break;
                    }
                    if (gynVar != null) {
                        gynVar.n.add(apeVar2);
                    }
                } else if (apeVar2 instanceof ene) {
                    ene eneVar2 = (ene) apeVar2;
                    i2 = eneVar2.h;
                    i3 = eneVar2.f15856f;
                    bArr = eneVar2.f15857g;
                } else if (!(apeVar2 instanceof bje)) {
                    arrayList2.add(apeVar2);
                }
            }
        }
        int i4 = i2 * i3;
        int i5 = this.p;
        this.o = ByteBuffer.allocate(((i4 / (i5 * i5)) + 1) * 4);
        int i6 = this.p;
        this.k.f16015c = ByteBuffer.allocate(((i4 / (i6 * i6)) + 1) * 4);
        return new Rect(0, 0, i2, i3);
    }

    public final void ac() {
        this.v.compareAndSet(true, false);
        System.currentTimeMillis();
        try {
            if (this.u.size() == 0) {
                try {
                    dbj dbjVar = this.n;
                    if (dbjVar == null) {
                        ByteBuffer byteBuffer = (ByteBuffer) this.i.f16548e;
                        byteBuffer.position(0);
                        cxf cxfVar = new cxf(byteBuffer, 0);
                        dbj dbjVar2 = new dbj(5, false);
                        dbjVar2.z = cxfVar;
                        this.n = dbjVar2;
                    } else {
                        dbjVar.af();
                    }
                    aa(ab(this.n));
                } catch (Throwable th) {
                    th.printStackTrace();
                }
            }
            System.currentTimeMillis();
            this.w = agj.f10182d;
            if (this.t == 0 || !this.s) {
                this.f16186f = -1;
                this.f16182b.run();
                Iterator it = this.l.iterator();
                while (it.hasNext()) {
                    Message.obtain(((cpx) ((aex) it.next())).f13299b, 1).sendToTarget();
                }
            }
        } catch (Throwable th2) {
            System.currentTimeMillis();
            this.w = agj.f10182d;
            throw th2;
        }
    }

    public final void ad() {
        if (this.f16185e == f16181a) {
            return;
        }
        agj agjVar = this.w;
        agj agjVar2 = agj.p;
        if (agjVar == agjVar2 || this.w == agj.dq) {
            return;
        }
        if (this.w == agj.ox) {
            Log.e("oOOOoO000o", "Processing,wait for finish at " + this.w);
        }
        this.w = agjVar2;
        if (Looper.myLooper() == this.q.getLooper()) {
            y();
        } else {
            this.q.post(new bbf(this, 3));
        }
    }

    public final Bitmap ae(int i, int i2) {
        synchronized (this.f16183c) {
            try {
                Iterator it = this.r.iterator();
                Bitmap bitmap = null;
                while (it.hasNext()) {
                    int i3 = i * i2 * 4;
                    Bitmap bitmap2 = (Bitmap) it.next();
                    if (bitmap2 != null && bitmap2.getAllocationByteCount() >= i3) {
                        it.remove();
                        if (bitmap2.getWidth() == i) {
                            if (bitmap2.getHeight() != i2) {
                            }
                            bitmap2.eraseColor(0);
                            return bitmap2;
                        }
                        if (i > 0 && i2 > 0) {
                            bitmap2.reconfigure(i, i2, Bitmap.Config.ARGB_4444);
                        }
                        bitmap2.eraseColor(0);
                        return bitmap2;
                    }
                    bitmap = bitmap2;
                }
                if (i <= 0 || i2 <= 0) {
                    return null;
                }
                try {
                    try {
                        bitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_4444);
                    } catch (Exception e2) {
                        e2.printStackTrace();
                    }
                } catch (OutOfMemoryError e3) {
                    e3.printStackTrace();
                }
                return bitmap;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean af() {
        return this.w == agj.f10182d || this.w == agj.ox;
    }

    public final dcq ag() {
        if (this.m == null) {
            dcq dcqVar = new dcq(21, false);
            dcqVar.k(10240);
            this.m = dcqVar;
        }
        return this.m;
    }

    public final void ah() {
        if (this.f16185e == f16181a || this.w == agj.f10182d) {
            return;
        }
        agj agjVar = this.w;
        agj agjVar2 = agj.ox;
        if (agjVar == agjVar2) {
            return;
        }
        if (this.w == agj.p) {
            Log.e("oOOOoO000o", " Processing,wait for finish at " + this.w);
        }
        this.w = agjVar2;
        if (Looper.myLooper() == this.q.getLooper()) {
            ac();
        } else {
            this.q.post(new bbf(this, 2));
        }
    }

    public final Rect x() {
        if (this.f16185e == null) {
            if (this.w == agj.p) {
                Log.e("oOOOoO000o", "In finishing,do not interrupt");
            }
            Thread currentThread = Thread.currentThread();
            this.q.post(new efr(this, 7, currentThread));
            LockSupport.park(currentThread);
        }
        return this.f16185e == null ? f16181a : this.f16185e;
    }

    public final void y() {
        this.q.removeCallbacks(this.f16182b);
        this.u.clear();
        synchronized (this.f16183c) {
            try {
                Iterator it = this.r.iterator();
                while (it.hasNext()) {
                    Bitmap bitmap = (Bitmap) it.next();
                    if (bitmap != null && !bitmap.isRecycled()) {
                        bitmap.recycle();
                    }
                }
                this.r.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (this.o != null) {
            this.o = null;
        }
        this.f16187g.clear();
        try {
            if (this.n != null) {
                this.n = null;
            }
        } catch (IOException e2) {
            e2.printStackTrace();
        }
        this.k.f16015c = null;
        this.m = null;
        this.w = agj.dq;
        Iterator it2 = this.l.iterator();
        while (it2.hasNext()) {
            Message.obtain(((cpx) ((aex) it2.next())).f13299b, 2).sendToTarget();
        }
    }

    public final void z(Bitmap bitmap) {
        synchronized (this.f16183c) {
            if (bitmap != null) {
                try {
                    this.r.add(bitmap);
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
