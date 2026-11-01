package ms.bz.bd.c.Pgl;

import android.hardware.SensorManager;
import java.math.BigDecimal;
import java.util.ArrayList;
import ms.bz.bd.c.Pgl.pblb;
import org.json.JSONArray;

/* loaded from: classes.dex */
final class h extends pblb.pgla {
    /* JADX WARN: Removed duplicated region for block: B:12:0x0125 A[Catch: all -> 0x0033, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0033, blocks: (B:21:0x0010, B:66:0x0031, B:67:0x0032, B:33:0x0037, B:46:0x0050, B:47:0x008b, B:12:0x0125, B:57:0x00e1, B:58:0x011e, B:62:0x00a5, B:36:0x003b, B:53:0x0090, B:61:0x0097, B:24:0x0012, B:26:0x0016, B:28:0x001a, B:31:0x002b), top: B:20:0x0010, inners: #0, #3, #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0123 A[DONT_GENERATE] */
    @Override // ms.bz.bd.c.Pgl.pblb.pgla
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj, String str) {
        JSONArray jSONArray;
        o0 g2 = o0.g(pgla.f21199a.f21200b);
        synchronized (g2) {
            if (h1.d() != null) {
                try {
                    synchronized (g2) {
                        try {
                            SensorManager sensorManager = g2.f21181d;
                            if (sensorManager != null) {
                                if (g2.f21182e == 0) {
                                    if (g2.f21181d.registerListener(g2, sensorManager.getDefaultSensor(1), 3)) {
                                    }
                                }
                                g2.f21182e++;
                            }
                        } catch (Exception unused) {
                        } catch (Throwable th) {
                            throw th;
                        }
                        try {
                            try {
                                synchronized (g2) {
                                    int i = 0;
                                    while (g2.f21183f == 0 && i < 10) {
                                        try {
                                            i++;
                                            g2.wait(1000L);
                                        } finally {
                                        }
                                    }
                                }
                            } catch (Throwable th2) {
                                JSONArray jSONArray2 = new JSONArray();
                                jSONArray2.put(new BigDecimal(g2.f21179b[0]).setScale(2, 4));
                                jSONArray2.put(new BigDecimal(g2.f21179b[1]).setScale(2, 4));
                                jSONArray2.put(new BigDecimal(g2.f21179b[2]).setScale(2, 4));
                                g2.h();
                                g2.f21183f = 0;
                                throw th2;
                            }
                        } catch (Exception unused2) {
                            pblk.a(16777217, 0, 0L, "136f4b", new byte[]{51, 34, 70, 45, 12});
                            jSONArray = new JSONArray();
                            jSONArray.put(new BigDecimal(g2.f21179b[0]).setScale(2, 4));
                            jSONArray.put(new BigDecimal(g2.f21179b[1]).setScale(2, 4));
                            jSONArray.put(new BigDecimal(g2.f21179b[2]).setScale(2, 4));
                            g2.h();
                        }
                    }
                    jSONArray = new JSONArray();
                    jSONArray.put(new BigDecimal(g2.f21179b[0]).setScale(2, 4));
                    jSONArray.put(new BigDecimal(g2.f21179b[1]).setScale(2, 4));
                    jSONArray.put(new BigDecimal(g2.f21179b[2]).setScale(2, 4));
                    g2.h();
                    g2.f21183f = 0;
                    if (jSONArray == null) {
                        g2.f21180c.add(jSONArray);
                        try {
                            int size = g2.f21180c.size();
                            if (size > 100) {
                                ArrayList arrayList = new ArrayList(g2.f21180c.subList(size - 50, size));
                                g2.f21180c.clear();
                                g2.f21180c = arrayList;
                            }
                        } catch (Throwable unused3) {
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            jSONArray = null;
            if (jSONArray == null) {
            }
        }
        return null;
    }
}
