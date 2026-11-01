package com.tencent.bugly.proguard;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public ByteBuffer f9774a;

    /* renamed from: b, reason: collision with root package name */
    protected String f9775b;

    public l() {
        this(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
    }

    public l(int i) {
        this.f9775b = "GBK";
        this.f9774a = ByteBuffer.allocate(i);
    }

    private void a(double d2, int i) {
        a(10);
        b((byte) 5, i);
        this.f9774a.putDouble(d2);
    }

    private void a(float f2, int i) {
        a(6);
        b((byte) 4, i);
        this.f9774a.putFloat(f2);
    }

    private void a(int i) {
        if (this.f9774a.remaining() < i) {
            ByteBuffer allocate = ByteBuffer.allocate((this.f9774a.capacity() + i) * 2);
            allocate.put(this.f9774a.array(), 0, this.f9774a.position());
            this.f9774a = allocate;
        }
    }

    private void a(double[] dArr, int i) {
        a(8);
        b((byte) 9, i);
        a(dArr.length, 0);
        for (double d2 : dArr) {
            a(d2, 0);
        }
    }

    private void a(float[] fArr, int i) {
        a(8);
        b((byte) 9, i);
        a(fArr.length, 0);
        for (float f2 : fArr) {
            a(f2, 0);
        }
    }

    private void a(int[] iArr, int i) {
        a(8);
        b((byte) 9, i);
        a(iArr.length, 0);
        for (int i2 : iArr) {
            a(i2, 0);
        }
    }

    private void a(long[] jArr, int i) {
        a(8);
        b((byte) 9, i);
        a(jArr.length, 0);
        for (long j : jArr) {
            a(j, 0);
        }
    }

    private void a(Object[] objArr, int i) {
        a(8);
        b((byte) 9, i);
        a(objArr.length, 0);
        for (Object obj : objArr) {
            a(obj, 0);
        }
    }

    private void a(short[] sArr, int i) {
        a(8);
        b((byte) 9, i);
        a(sArr.length, 0);
        for (short s : sArr) {
            a(s, 0);
        }
    }

    private void a(boolean[] zArr, int i) {
        a(8);
        b((byte) 9, i);
        a(zArr.length, 0);
        for (boolean z : zArr) {
            a(z, 0);
        }
    }

    private void b(byte b2, int i) {
        if (i < 15) {
            this.f9774a.put((byte) (b2 | (i << 4)));
        } else {
            if (i >= 256) {
                throw new j("tag is too large: ".concat(String.valueOf(i)));
            }
            this.f9774a.put((byte) (b2 | 240));
            this.f9774a.put((byte) i);
        }
    }

    public final int a(String str) {
        this.f9775b = str;
        return 0;
    }

    public final void a(byte b2, int i) {
        a(3);
        if (b2 == 0) {
            b((byte) 12, i);
        } else {
            b((byte) 0, i);
            this.f9774a.put(b2);
        }
    }

    public final void a(int i, int i2) {
        a(6);
        if (i >= -32768 && i <= 32767) {
            a((short) i, i2);
        } else {
            b((byte) 2, i2);
            this.f9774a.putInt(i);
        }
    }

    public final void a(long j, int i) {
        a(10);
        if (j >= -2147483648L && j <= 2147483647L) {
            a((int) j, i);
        } else {
            b((byte) 3, i);
            this.f9774a.putLong(j);
        }
    }

    public final void a(m mVar, int i) {
        a(2);
        b((byte) 10, i);
        mVar.a(this);
        a(2);
        b((byte) 11, 0);
    }

    public final void a(Object obj, int i) {
        if (obj instanceof Byte) {
            a(((Byte) obj).byteValue(), i);
            return;
        }
        if (obj instanceof Boolean) {
            a(((Boolean) obj).booleanValue(), i);
            return;
        }
        if (obj instanceof Short) {
            a(((Short) obj).shortValue(), i);
            return;
        }
        if (obj instanceof Integer) {
            a(((Integer) obj).intValue(), i);
            return;
        }
        if (obj instanceof Long) {
            a(((Long) obj).longValue(), i);
            return;
        }
        if (obj instanceof Float) {
            a(((Float) obj).floatValue(), i);
            return;
        }
        if (obj instanceof Double) {
            a(((Double) obj).doubleValue(), i);
            return;
        }
        if (obj instanceof String) {
            a((String) obj, i);
            return;
        }
        if (obj instanceof Map) {
            a((Map) obj, i);
            return;
        }
        if (obj instanceof List) {
            a((Collection) obj, i);
            return;
        }
        if (obj instanceof m) {
            a((m) obj, i);
            return;
        }
        if (obj instanceof byte[]) {
            a((byte[]) obj, i);
            return;
        }
        if (obj instanceof boolean[]) {
            a((boolean[]) obj, i);
            return;
        }
        if (obj instanceof short[]) {
            a((short[]) obj, i);
            return;
        }
        if (obj instanceof int[]) {
            a((int[]) obj, i);
            return;
        }
        if (obj instanceof long[]) {
            a((long[]) obj, i);
            return;
        }
        if (obj instanceof float[]) {
            a((float[]) obj, i);
            return;
        }
        if (obj instanceof double[]) {
            a((double[]) obj, i);
            return;
        }
        if (obj.getClass().isArray()) {
            a((Object[]) obj, i);
        } else if (obj instanceof Collection) {
            a((Collection) obj, i);
        } else {
            throw new j("write object error: unsupport type. " + obj.getClass());
        }
    }

    public final void a(String str, int i) {
        byte[] bytes;
        try {
            bytes = str.getBytes(this.f9775b);
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        a(bytes.length + 10);
        if (bytes.length > 255) {
            b((byte) 7, i);
            this.f9774a.putInt(bytes.length);
            this.f9774a.put(bytes);
        } else {
            b((byte) 6, i);
            this.f9774a.put((byte) bytes.length);
            this.f9774a.put(bytes);
        }
    }

    public final <T> void a(Collection<T> collection, int i) {
        a(8);
        b((byte) 9, i);
        a(collection == null ? 0 : collection.size(), 0);
        if (collection != null) {
            Iterator<T> it = collection.iterator();
            while (it.hasNext()) {
                a(it.next(), 0);
            }
        }
    }

    public final <K, V> void a(Map<K, V> map, int i) {
        a(8);
        b((byte) 8, i);
        a(map == null ? 0 : map.size(), 0);
        if (map != null) {
            for (Map.Entry<K, V> entry : map.entrySet()) {
                a(entry.getKey(), 0);
                a(entry.getValue(), 1);
            }
        }
    }

    public final void a(short s, int i) {
        a(4);
        if (s >= -128 && s <= 127) {
            a((byte) s, i);
        } else {
            b((byte) 1, i);
            this.f9774a.putShort(s);
        }
    }

    public final void a(boolean z, int i) {
        a(z ? (byte) 1 : (byte) 0, i);
    }

    public final void a(byte[] bArr, int i) {
        a(bArr.length + 8);
        b((byte) 13, i);
        b((byte) 0, 0);
        a(bArr.length, 0);
        this.f9774a.put(bArr);
    }
}
