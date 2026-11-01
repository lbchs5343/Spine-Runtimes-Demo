package g;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Printer;

/* loaded from: classes.dex */
public final class ecp implements Printer {
    @Override // android.util.Printer
    public final void println(String str) {
        if (str == null) {
            return;
        }
        if (str.startsWith(">>>>> Dispatching")) {
            fag l = fag.l();
            if (!l.f16464d) {
                gnv.b(32L);
                l.f16464d = true;
            }
            l.f16466f = SystemClock.uptimeMillis();
            try {
                l.n(l.h, str);
                l.i.sendEmptyMessage(0);
            } catch (Exception unused) {
                Context context = eca.f15278c;
            }
        } else if (str.startsWith("<<<<< Finished")) {
            fag l2 = fag.l();
            Handler handler = l2.i;
            SystemClock.uptimeMillis();
            try {
                handler.removeMessages(2);
                l2.n(l2.k, str);
                handler.sendEmptyMessage(1);
            } catch (Exception unused2) {
                Context context2 = eca.f15278c;
            }
        }
        Printer printer = fag.f16463c;
        if (printer == null || printer == fag.f16462b) {
            return;
        }
        printer.println(str);
    }
}
