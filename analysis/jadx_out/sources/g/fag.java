package g;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Printer;
import android.util.SparseArray;
import java.lang.reflect.Field;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public final class fag implements Handler.Callback {

    /* renamed from: a, reason: collision with root package name */
    public static fag f16461a;

    /* renamed from: b, reason: collision with root package name */
    public static final ecp f16462b = new ecp();

    /* renamed from: c, reason: collision with root package name */
    public static Printer f16463c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16464d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f16465e;

    /* renamed from: f, reason: collision with root package name */
    public long f16466f;
    public int j = 0;

    /* renamed from: g, reason: collision with root package name */
    public final SparseArray f16467g = new SparseArray();
    public final LinkedList h = new LinkedList();
    public final LinkedList k = new LinkedList();
    public final Handler i = new Handler(gs.f().getLooper(), this);

    public fag() {
        Printer printer;
        this.f16465e = false;
        if (this.f16465e) {
            return;
        }
        this.f16465e = true;
        try {
            Field declaredField = Class.forName("android.os.Looper").getDeclaredField("mLogging");
            declaredField.setAccessible(true);
            printer = (Printer) declaredField.get(Looper.getMainLooper());
        } catch (Exception unused) {
            Context context = eca.f15278c;
            printer = null;
        }
        f16463c = printer;
        ecp ecpVar = f16462b;
        if (printer == ecpVar) {
            f16463c = null;
        }
        Looper.getMainLooper().setMessageLogging(ecpVar);
    }

    public static fag l() {
        if (f16461a == null) {
            synchronized (fag.class) {
                try {
                    if (f16461a == null) {
                        f16461a = new fag();
                    }
                } finally {
                }
            }
        }
        return f16461a;
    }

    public static void m(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        try {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((Runnable) it.next()).run();
            }
        } catch (Exception unused) {
            Context context = eca.f15278c;
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        Handler handler = this.i;
        if (handler.hasMessages(0)) {
            return true;
        }
        int i = message.what;
        SparseArray sparseArray = this.f16467g;
        if (i == 0) {
            this.j = 0;
            if (sparseArray.size() != 0 && sparseArray.keyAt(0) == 0) {
                m((List) sparseArray.valueAt(0));
                this.j++;
            }
        } else {
            if (i == 1) {
                handler.removeMessages(2);
                if (sparseArray.size() != 0 && sparseArray.keyAt(sparseArray.size() - 1) == 0) {
                    m((List) sparseArray.get(he.UNDEFINED_ITEM_ID));
                }
                return true;
            }
            if (i == 2) {
                m((List) sparseArray.valueAt(this.j));
                this.j++;
            }
        }
        if (this.j >= sparseArray.size()) {
            return true;
        }
        long keyAt = sparseArray.keyAt(this.j);
        if (keyAt != 2147483647L) {
            handler.sendEmptyMessageAtTime(2, this.f16466f + keyAt);
        }
        return true;
    }

    public final synchronized void n(List list, String str) {
        if (list != null) {
            if (!list.isEmpty()) {
                try {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        ((Printer) it.next()).println(str);
                    }
                } catch (Exception unused) {
                    Context context = eca.f15278c;
                }
            }
        }
    }

    public final void o(long j, Runnable runnable, int i, long j2) {
        if (j < 0) {
            return;
        }
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = (int) j;
            List list = (List) this.f16467g.get(i3);
            if (list == null) {
                synchronized (this.f16467g) {
                    try {
                        list = (List) this.f16467g.get(i3);
                        if (list == null) {
                            list = new LinkedList();
                            this.f16467g.put(i3, list);
                        }
                    } finally {
                    }
                }
            }
            list.add(runnable);
            j += j2;
        }
    }
}
