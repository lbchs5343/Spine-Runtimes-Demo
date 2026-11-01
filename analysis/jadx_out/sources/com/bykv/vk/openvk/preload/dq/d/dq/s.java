package com.bykv.vk.openvk.preload.dq.d.dq;

import com.bykv.vk.openvk.preload.dq.f;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class s extends com.bykv.vk.openvk.preload.dq.p.dq {
    private static final Reader ox = new Reader() { // from class: com.bykv.vk.openvk.preload.dq.d.dq.s.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object p = new Object();
    private int[] ia;
    private int iw;
    private String[] mn;
    private Object[] s;

    private Object gh() {
        Object[] objArr = this.s;
        int i = this.iw - 1;
        this.iw = i;
        Object obj = objArr[i];
        objArr[i] = null;
        return obj;
    }

    private String r() {
        return " at path " + f();
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.s = new Object[]{p};
        this.iw = 1;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final void d() throws IOException {
        dq(com.bykv.vk.openvk.preload.dq.p.d.END_ARRAY);
        gh();
        gh();
        int i = this.iw;
        if (i > 0) {
            int[] iArr = this.ia;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final void dq() throws IOException {
        dq(com.bykv.vk.openvk.preload.dq.p.d.BEGIN_ARRAY);
        dq(((com.bykv.vk.openvk.preload.dq.kk) mn()).iterator());
        this.ia[this.iw - 1] = 0;
    }

    public final void dq(com.bykv.vk.openvk.preload.dq.p.d dVar) throws IOException {
        if (iw() == dVar) {
            return;
        }
        throw new IllegalStateException("Expected " + dVar + " but was " + iw() + r());
    }

    public final void dq(Object obj) {
        int i = this.iw;
        Object[] objArr = this.s;
        if (i == objArr.length) {
            int i2 = i * 2;
            this.s = Arrays.copyOf(objArr, i2);
            this.ia = Arrays.copyOf(this.ia, i2);
            this.mn = (String[]) Arrays.copyOf(this.mn, i2);
        }
        Object[] objArr2 = this.s;
        int i3 = this.iw;
        this.iw = i3 + 1;
        objArr2[i3] = obj;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final String f() {
        StringBuilder sb = new StringBuilder("$");
        int i = 0;
        while (i < this.iw) {
            Object[] objArr = this.s;
            Object obj = objArr[i];
            if (obj instanceof com.bykv.vk.openvk.preload.dq.kk) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('[');
                    sb.append(this.ia[i]);
                    sb.append(']');
                }
            } else if (obj instanceof com.bykv.vk.openvk.preload.dq.q) {
                i++;
                if (objArr[i] instanceof Iterator) {
                    sb.append('.');
                    String str = this.mn[i];
                    if (str != null) {
                        sb.append(str);
                    }
                }
            }
            i++;
        }
        return sb.toString();
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final String ia() throws IOException {
        dq(com.bykv.vk.openvk.preload.dq.p.d.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) mn()).next();
        String str = (String) entry.getKey();
        this.mn[this.iw - 1] = str;
        dq(entry.getValue());
        return str;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final double ig() throws IOException {
        com.bykv.vk.openvk.preload.dq.p.d iw = iw();
        com.bykv.vk.openvk.preload.dq.p.d dVar = com.bykv.vk.openvk.preload.dq.p.d.NUMBER;
        if (iw != dVar && iw != com.bykv.vk.openvk.preload.dq.p.d.STRING) {
            throw new IllegalStateException("Expected " + dVar + " but was " + iw + r());
        }
        double ox2 = ((f) mn()).ox();
        if (!this.dq && (Double.isNaN(ox2) || Double.isInfinite(ox2))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: ".concat(String.valueOf(ox2)));
        }
        gh();
        int i = this.iw;
        if (i > 0) {
            int[] iArr = this.ia;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return ox2;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final com.bykv.vk.openvk.preload.dq.p.d iw() throws IOException {
        while (this.iw != 0) {
            Object mn = mn();
            if (!(mn instanceof Iterator)) {
                if (mn instanceof com.bykv.vk.openvk.preload.dq.q) {
                    return com.bykv.vk.openvk.preload.dq.p.d.BEGIN_OBJECT;
                }
                if (mn instanceof com.bykv.vk.openvk.preload.dq.kk) {
                    return com.bykv.vk.openvk.preload.dq.p.d.BEGIN_ARRAY;
                }
                if (!(mn instanceof f)) {
                    if (mn instanceof com.bykv.vk.openvk.preload.dq.mp) {
                        return com.bykv.vk.openvk.preload.dq.p.d.NULL;
                    }
                    if (mn == p) {
                        throw new IllegalStateException("JsonReader is closed");
                    }
                    throw new AssertionError();
                }
                Object obj = ((f) mn).dq;
                if (obj instanceof String) {
                    return com.bykv.vk.openvk.preload.dq.p.d.STRING;
                }
                if (obj instanceof Boolean) {
                    return com.bykv.vk.openvk.preload.dq.p.d.BOOLEAN;
                }
                if (obj instanceof Number) {
                    return com.bykv.vk.openvk.preload.dq.p.d.NUMBER;
                }
                throw new AssertionError();
            }
            boolean z = this.s[this.iw - 2] instanceof com.bykv.vk.openvk.preload.dq.q;
            Iterator it = (Iterator) mn;
            if (!it.hasNext()) {
                return z ? com.bykv.vk.openvk.preload.dq.p.d.END_OBJECT : com.bykv.vk.openvk.preload.dq.p.d.END_ARRAY;
            }
            if (z) {
                return com.bykv.vk.openvk.preload.dq.p.d.NAME;
            }
            dq(it.next());
        }
        return com.bykv.vk.openvk.preload.dq.p.d.END_DOCUMENT;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final void jy() throws IOException {
        if (iw() == com.bykv.vk.openvk.preload.dq.p.d.NAME) {
            ia();
            this.mn[this.iw - 2] = "null";
        } else {
            gh();
            int i = this.iw;
            if (i > 0) {
                this.mn[i - 1] = "null";
            }
        }
        int i2 = this.iw;
        if (i2 > 0) {
            int[] iArr = this.ia;
            int i3 = i2 - 1;
            iArr[i3] = iArr[i3] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final String kk() throws IOException {
        com.bykv.vk.openvk.preload.dq.p.d iw = iw();
        com.bykv.vk.openvk.preload.dq.p.d dVar = com.bykv.vk.openvk.preload.dq.p.d.STRING;
        if (iw != dVar && iw != com.bykv.vk.openvk.preload.dq.p.d.NUMBER) {
            throw new IllegalStateException("Expected " + dVar + " but was " + iw + r());
        }
        String d2 = ((f) gh()).d();
        int i = this.iw;
        if (i > 0) {
            int[] iArr = this.ia;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return d2;
    }

    public final Object mn() {
        return this.s[this.iw - 1];
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final long mp() throws IOException {
        com.bykv.vk.openvk.preload.dq.p.d iw = iw();
        com.bykv.vk.openvk.preload.dq.p.d dVar = com.bykv.vk.openvk.preload.dq.p.d.NUMBER;
        if (iw != dVar && iw != com.bykv.vk.openvk.preload.dq.p.d.STRING) {
            throw new IllegalStateException("Expected " + dVar + " but was " + iw + r());
        }
        long p2 = ((f) mn()).p();
        gh();
        int i = this.iw;
        if (i > 0) {
            int[] iArr = this.ia;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return p2;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final void no() throws IOException {
        dq(com.bykv.vk.openvk.preload.dq.p.d.NULL);
        gh();
        int i = this.iw;
        if (i > 0) {
            int[] iArr = this.ia;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final boolean o() throws IOException {
        dq(com.bykv.vk.openvk.preload.dq.p.d.BOOLEAN);
        boolean iw = ((f) gh()).iw();
        int i = this.iw;
        if (i > 0) {
            int[] iArr = this.ia;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return iw;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final void ox() throws IOException {
        dq(com.bykv.vk.openvk.preload.dq.p.d.BEGIN_OBJECT);
        dq(((com.bykv.vk.openvk.preload.dq.q) mn()).dq.entrySet().iterator());
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final void p() throws IOException {
        dq(com.bykv.vk.openvk.preload.dq.p.d.END_OBJECT);
        gh();
        gh();
        int i = this.iw;
        if (i > 0) {
            int[] iArr = this.ia;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final int q() throws IOException {
        com.bykv.vk.openvk.preload.dq.p.d iw = iw();
        com.bykv.vk.openvk.preload.dq.p.d dVar = com.bykv.vk.openvk.preload.dq.p.d.NUMBER;
        if (iw != dVar && iw != com.bykv.vk.openvk.preload.dq.p.d.STRING) {
            throw new IllegalStateException("Expected " + dVar + " but was " + iw + r());
        }
        int s = ((f) mn()).s();
        gh();
        int i = this.iw;
        if (i > 0) {
            int[] iArr = this.ia;
            int i2 = i - 1;
            iArr[i2] = iArr[i2] + 1;
        }
        return s;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final boolean s() throws IOException {
        com.bykv.vk.openvk.preload.dq.p.d iw = iw();
        return (iw == com.bykv.vk.openvk.preload.dq.p.d.END_OBJECT || iw == com.bykv.vk.openvk.preload.dq.p.d.END_ARRAY) ? false : true;
    }

    @Override // com.bykv.vk.openvk.preload.dq.p.dq
    public final String toString() {
        return "s";
    }
}
