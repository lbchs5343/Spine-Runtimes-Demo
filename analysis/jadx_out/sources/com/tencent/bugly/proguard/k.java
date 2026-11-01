package com.tencent.bugly.proguard;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.tn;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Array;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    protected String f9770a = "GBK";

    /* renamed from: b, reason: collision with root package name */
    private ByteBuffer f9771b;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public byte f9772a;

        /* renamed from: b, reason: collision with root package name */
        public int f9773b;
    }

    public k() {
    }

    public k(byte[] bArr) {
        this.f9771b = ByteBuffer.wrap(bArr);
    }

    public k(byte[] bArr, byte b2) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        this.f9771b = wrap;
        wrap.position(4);
    }

    private double a(double d2, int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return d2;
        }
        a aVar = new a();
        a(aVar);
        byte b2 = aVar.f9772a;
        if (b2 == 4) {
            return this.f9771b.getFloat();
        }
        if (b2 == 5) {
            return this.f9771b.getDouble();
        }
        if (b2 == 12) {
            return 0.0d;
        }
        throw new h("type mismatch.");
    }

    private float a(float f2, int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return f2;
        }
        a aVar = new a();
        a(aVar);
        byte b2 = aVar.f9772a;
        if (b2 == 4) {
            return this.f9771b.getFloat();
        }
        if (b2 == 12) {
            return TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT;
        }
        throw new h("type mismatch.");
    }

    private static int a(a aVar, ByteBuffer byteBuffer) {
        byte b2 = byteBuffer.get();
        aVar.f9772a = (byte) (b2 & 15);
        int i = (b2 & 240) >> 4;
        aVar.f9773b = i;
        if (i != 15) {
            return 1;
        }
        aVar.f9773b = byteBuffer.get();
        return 2;
    }

    private <T> List<T> a(List<T> list, int i, boolean z) {
        if (list == null || list.isEmpty()) {
            return new ArrayList();
        }
        Object[] b2 = b(list.get(0), i, z);
        if (b2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : b2) {
            arrayList.add(obj);
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <K, V> Map<K, V> a(Map<K, V> map, Map<K, V> map2, int i, boolean z) {
        if (map2 == null || map2.isEmpty()) {
            return new HashMap();
        }
        Map.Entry<K, V> next = map2.entrySet().iterator().next();
        K key = next.getKey();
        V value = next.getValue();
        if (b(i)) {
            a aVar = new a();
            a(aVar);
            if (aVar.f9772a != 8) {
                throw new h("type mismatch.");
            }
            int a2 = a(0, 0, true);
            if (a2 < 0) {
                throw new h("size invalid: ".concat(String.valueOf(a2)));
            }
            for (int i2 = 0; i2 < a2; i2++) {
                map.put(a((k) key, 0, true), a((k) value, 1, true));
            }
        } else if (z) {
            throw new h("require field not exist.");
        }
        return map;
    }

    private void a() {
        a aVar = new a();
        do {
            a(aVar);
            a(aVar.f9772a);
        } while (aVar.f9772a != 11);
    }

    private void a(byte b2) {
        int i = 0;
        switch (b2) {
            case 0:
                a(1);
                return;
            case 1:
                a(2);
                return;
            case 2:
                a(4);
                return;
            case 3:
                a(8);
                return;
            case 4:
                a(4);
                return;
            case 5:
                a(8);
                return;
            case 6:
                int i2 = this.f9771b.get();
                if (i2 < 0) {
                    i2 += 256;
                }
                a(i2);
                return;
            case 7:
                a(this.f9771b.getInt());
                return;
            case 8:
                int a2 = a(0, 0, true);
                while (i < a2 * 2) {
                    b();
                    i++;
                }
                return;
            case 9:
                int a3 = a(0, 0, true);
                while (i < a3) {
                    b();
                    i++;
                }
                return;
            case 10:
                a();
                return;
            case 11:
            case 12:
                return;
            case 13:
                a aVar = new a();
                a(aVar);
                if (aVar.f9772a == 0) {
                    a(a(0, 0, true));
                    return;
                } else {
                    StringBuilder z = tn.z(b2, "skipField with invalid type, type value: ", ", ");
                    z.append((int) aVar.f9772a);
                    throw new h(z.toString());
                }
            default:
                throw new h("invalid type.");
        }
    }

    private void a(int i) {
        ByteBuffer byteBuffer = this.f9771b;
        byteBuffer.position(byteBuffer.position() + i);
    }

    private void a(a aVar) {
        a(aVar, this.f9771b);
    }

    private <T> T[] a(T[] tArr, int i, boolean z) {
        if (tArr == null || tArr.length == 0) {
            throw new h("unable to get type of key and value.");
        }
        return (T[]) b(tArr[0], i, z);
    }

    private void b() {
        a aVar = new a();
        a(aVar);
        a(aVar.f9772a);
    }

    private boolean b(int i) {
        int i2;
        try {
            a aVar = new a();
            while (true) {
                int a2 = a(aVar, this.f9771b.duplicate());
                i2 = aVar.f9773b;
                if (i <= i2 || aVar.f9772a == 11) {
                    break;
                }
                a(a2);
                a(aVar.f9772a);
            }
        } catch (h | BufferUnderflowException unused) {
        }
        return i == i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> T[] b(T t, int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f9772a != 9) {
            throw new h("type mismatch.");
        }
        int a2 = a(0, 0, true);
        if (a2 < 0) {
            throw new h("size invalid: ".concat(String.valueOf(a2)));
        }
        T[] tArr = (T[]) ((Object[]) Array.newInstance(t.getClass(), a2));
        for (int i2 = 0; i2 < a2; i2++) {
            tArr[i2] = a((k) t, 0, true);
        }
        return tArr;
    }

    private boolean[] d(int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f9772a != 9) {
            throw new h("type mismatch.");
        }
        int a2 = a(0, 0, true);
        if (a2 < 0) {
            throw new h("size invalid: ".concat(String.valueOf(a2)));
        }
        boolean[] zArr = new boolean[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            zArr[i2] = a(0, true);
        }
        return zArr;
    }

    private short[] e(int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f9772a != 9) {
            throw new h("type mismatch.");
        }
        int a2 = a(0, 0, true);
        if (a2 < 0) {
            throw new h("size invalid: ".concat(String.valueOf(a2)));
        }
        short[] sArr = new short[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            sArr[i2] = a(sArr[0], 0, true);
        }
        return sArr;
    }

    private int[] f(int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f9772a != 9) {
            throw new h("type mismatch.");
        }
        int a2 = a(0, 0, true);
        if (a2 < 0) {
            throw new h("size invalid: ".concat(String.valueOf(a2)));
        }
        int[] iArr = new int[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            iArr[i2] = a(iArr[0], 0, true);
        }
        return iArr;
    }

    private long[] g(int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f9772a != 9) {
            throw new h("type mismatch.");
        }
        int a2 = a(0, 0, true);
        if (a2 < 0) {
            throw new h("size invalid: ".concat(String.valueOf(a2)));
        }
        long[] jArr = new long[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            jArr[i2] = a(jArr[0], 0, true);
        }
        return jArr;
    }

    private float[] h(int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f9772a != 9) {
            throw new h("type mismatch.");
        }
        int a2 = a(0, 0, true);
        if (a2 < 0) {
            throw new h("size invalid: ".concat(String.valueOf(a2)));
        }
        float[] fArr = new float[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            fArr[i2] = a(fArr[0], 0, true);
        }
        return fArr;
    }

    private double[] i(int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        if (aVar.f9772a != 9) {
            throw new h("type mismatch.");
        }
        int a2 = a(0, 0, true);
        if (a2 < 0) {
            throw new h("size invalid: ".concat(String.valueOf(a2)));
        }
        double[] dArr = new double[a2];
        for (int i2 = 0; i2 < a2; i2++) {
            dArr[i2] = a(dArr[0], 0, true);
        }
        return dArr;
    }

    public final byte a(byte b2, int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return b2;
        }
        a aVar = new a();
        a(aVar);
        byte b3 = aVar.f9772a;
        if (b3 == 0) {
            return this.f9771b.get();
        }
        if (b3 == 12) {
            return (byte) 0;
        }
        throw new h("type mismatch.");
    }

    public final int a(int i, int i2, boolean z) {
        if (!b(i2)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return i;
        }
        a aVar = new a();
        a(aVar);
        byte b2 = aVar.f9772a;
        if (b2 == 0) {
            return this.f9771b.get();
        }
        if (b2 == 1) {
            return this.f9771b.getShort();
        }
        if (b2 == 2) {
            return this.f9771b.getInt();
        }
        if (b2 == 12) {
            return 0;
        }
        throw new h("type mismatch.");
    }

    public final int a(String str) {
        this.f9770a = str;
        return 0;
    }

    public final long a(long j, int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return j;
        }
        a aVar = new a();
        a(aVar);
        byte b2 = aVar.f9772a;
        if (b2 == 0) {
            return this.f9771b.get();
        }
        if (b2 == 1) {
            return this.f9771b.getShort();
        }
        if (b2 == 2) {
            return this.f9771b.getInt();
        }
        if (b2 == 3) {
            return this.f9771b.getLong();
        }
        if (b2 == 12) {
            return 0L;
        }
        throw new h("type mismatch.");
    }

    public final m a(m mVar, int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        try {
            m mVar2 = (m) mVar.getClass().newInstance();
            a aVar = new a();
            a(aVar);
            if (aVar.f9772a != 10) {
                throw new h("type mismatch.");
            }
            mVar2.a(this);
            a();
            return mVar2;
        } catch (Exception e2) {
            throw new h(e2.getMessage());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> Object a(T t, int i, boolean z) {
        if (t instanceof Byte) {
            return Byte.valueOf(a((byte) 0, i, z));
        }
        if (t instanceof Boolean) {
            return Boolean.valueOf(a(i, z));
        }
        if (t instanceof Short) {
            return Short.valueOf(a((short) 0, i, z));
        }
        if (t instanceof Integer) {
            return Integer.valueOf(a(0, i, z));
        }
        if (t instanceof Long) {
            return Long.valueOf(a(0L, i, z));
        }
        if (t instanceof Float) {
            return Float.valueOf(a(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, i, z));
        }
        if (t instanceof Double) {
            return Double.valueOf(a(0.0d, i, z));
        }
        if (t instanceof String) {
            return String.valueOf(b(i, z));
        }
        if (t instanceof Map) {
            return a((Map) t, i, z);
        }
        if (t instanceof List) {
            return a((List) t, i, z);
        }
        if (t instanceof m) {
            return a((m) t, i, z);
        }
        if (t.getClass().isArray()) {
            return ((t instanceof byte[]) || (t instanceof Byte[])) ? c(i, z) : t instanceof boolean[] ? d(i, z) : t instanceof short[] ? e(i, z) : t instanceof int[] ? f(i, z) : t instanceof long[] ? g(i, z) : t instanceof float[] ? h(i, z) : t instanceof double[] ? i(i, z) : a((Object[]) t, i, z);
        }
        throw new h("read object error: unsupport type.");
    }

    public final <K, V> HashMap<K, V> a(Map<K, V> map, int i, boolean z) {
        return (HashMap) a(new HashMap(), map, i, z);
    }

    public final short a(short s, int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return s;
        }
        a aVar = new a();
        a(aVar);
        byte b2 = aVar.f9772a;
        if (b2 == 0) {
            return this.f9771b.get();
        }
        if (b2 == 1) {
            return this.f9771b.getShort();
        }
        if (b2 == 12) {
            return (short) 0;
        }
        throw new h("type mismatch.");
    }

    public final void a(byte[] bArr) {
        ByteBuffer byteBuffer = this.f9771b;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        this.f9771b = ByteBuffer.wrap(bArr);
    }

    public final boolean a(int i, boolean z) {
        return a((byte) 0, i, z) != 0;
    }

    public final String b(int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        byte b2 = aVar.f9772a;
        if (b2 == 6) {
            int i2 = this.f9771b.get();
            if (i2 < 0) {
                i2 += 256;
            }
            byte[] bArr = new byte[i2];
            this.f9771b.get(bArr);
            try {
                return new String(bArr, this.f9770a);
            } catch (UnsupportedEncodingException unused) {
                return new String(bArr);
            }
        }
        if (b2 != 7) {
            throw new h("type mismatch.");
        }
        int i3 = this.f9771b.getInt();
        if (i3 > 104857600 || i3 < 0) {
            throw new h("String too long: ".concat(String.valueOf(i3)));
        }
        byte[] bArr2 = new byte[i3];
        this.f9771b.get(bArr2);
        try {
            return new String(bArr2, this.f9770a);
        } catch (UnsupportedEncodingException unused2) {
            return new String(bArr2);
        }
    }

    public final byte[] c(int i, boolean z) {
        if (!b(i)) {
            if (z) {
                throw new h("require field not exist.");
            }
            return null;
        }
        a aVar = new a();
        a(aVar);
        byte b2 = aVar.f9772a;
        if (b2 == 9) {
            int a2 = a(0, 0, true);
            if (a2 < 0) {
                throw new h("size invalid: ".concat(String.valueOf(a2)));
            }
            byte[] bArr = new byte[a2];
            for (int i2 = 0; i2 < a2; i2++) {
                bArr[i2] = a(bArr[0], 0, true);
            }
            return bArr;
        }
        if (b2 != 13) {
            throw new h("type mismatch.");
        }
        a aVar2 = new a();
        a(aVar2);
        if (aVar2.f9772a != 0) {
            StringBuilder z2 = tn.z(i, "type mismatch, tag: ", ", type: ");
            z2.append((int) aVar.f9772a);
            z2.append(", ");
            z2.append((int) aVar2.f9772a);
            throw new h(z2.toString());
        }
        int a3 = a(0, 0, true);
        if (a3 >= 0) {
            byte[] bArr2 = new byte[a3];
            this.f9771b.get(bArr2);
            return bArr2;
        }
        StringBuilder z3 = tn.z(i, "invalid size, tag: ", ", type: ");
        z3.append((int) aVar.f9772a);
        z3.append(", ");
        z3.append((int) aVar2.f9772a);
        z3.append(", size: ");
        z3.append(a3);
        throw new h(z3.toString());
    }
}
