package g;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class fcg implements fxn, eob {

    /* renamed from: a, reason: collision with root package name */
    public static final TreeMap f16556a = new TreeMap();

    /* renamed from: g, reason: collision with root package name */
    public int f16557g;
    public final int[] h;
    public final long[] i;
    public final double[] j;
    public final String[] k;
    public final int l;
    public volatile String m;
    public final byte[][] n;

    public fcg(int i) {
        this.l = i;
        int i2 = i + 1;
        this.h = new int[i2];
        this.i = new long[i2];
        this.j = new double[i2];
        this.k = new String[i2];
        this.n = new byte[i2][];
    }

    public static final fcg o(int i, String str) {
        TreeMap treeMap = f16556a;
        synchronized (treeMap) {
            Map.Entry ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry == null) {
                fcg fcgVar = new fcg(i);
                fcgVar.m = str;
                fcgVar.f16557g = i;
                return fcgVar;
            }
            treeMap.remove(ceilingEntry.getKey());
            fcg fcgVar2 = (fcg) ceilingEntry.getValue();
            fcgVar2.m = str;
            fcgVar2.f16557g = i;
            return fcgVar2;
        }
    }

    @Override // g.fxn
    public final String _co() {
        String str = this.m;
        if (str != null) {
            return str;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @Override // g.fxn
    public final void _cp(eob eobVar) {
        int i = this.f16557g;
        if (1 > i) {
            return;
        }
        int i2 = 1;
        while (true) {
            int i3 = this.h[i2];
            if (i3 == 1) {
                eobVar.b(i2);
            } else if (i3 == 2) {
                eobVar.f(i2, this.i[i2]);
            } else if (i3 == 3) {
                eobVar.d(this.j[i2], i2);
            } else if (i3 == 4) {
                String str = this.k[i2];
                if (str == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                eobVar.e(i2, str);
            } else if (i3 == 5) {
                byte[] bArr = this.n[i2];
                if (bArr == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                eobVar.c(i2, bArr);
            }
            if (i2 == i) {
                return;
            } else {
                i2++;
            }
        }
    }

    @Override // g.eob
    public final void b(int i) {
        this.h[i] = 1;
    }

    @Override // g.eob
    public final void c(int i, byte[] bArr) {
        this.h[i] = 5;
        this.n[i] = bArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // g.eob
    public final void d(double d2, int i) {
        this.h[i] = 3;
        this.j[i] = d2;
    }

    @Override // g.eob
    public final void e(int i, String str) {
        bff.p(str, "value");
        this.h[i] = 4;
        this.k[i] = str;
    }

    @Override // g.eob
    public final void f(int i, long j) {
        this.h[i] = 2;
        this.i[i] = j;
    }

    public final void p() {
        TreeMap treeMap = f16556a;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.l), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator it = treeMap.descendingKeySet().iterator();
                bff.e(it, "queryPool.descendingKeySet().iterator()");
                while (true) {
                    int i = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i;
                }
            }
        }
    }
}
