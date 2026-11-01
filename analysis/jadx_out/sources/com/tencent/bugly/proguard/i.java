package com.tencent.bugly.proguard;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private StringBuilder f9768a;

    /* renamed from: b, reason: collision with root package name */
    private int f9769b;

    public i(StringBuilder sb, int i) {
        this.f9768a = sb;
        this.f9769b = i;
    }

    private i a(char c2, String str) {
        a(str);
        StringBuilder sb = this.f9768a;
        sb.append(c2);
        sb.append('\n');
        return this;
    }

    private i a(double d2, String str) {
        a(str);
        StringBuilder sb = this.f9768a;
        sb.append(d2);
        sb.append('\n');
        return this;
    }

    private i a(float f2, String str) {
        a(str);
        StringBuilder sb = this.f9768a;
        sb.append(f2);
        sb.append('\n');
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> i a(T t, String str) {
        if (t == 0) {
            this.f9768a.append("null\n");
            return this;
        }
        if (t instanceof Byte) {
            a(((Byte) t).byteValue(), str);
            return this;
        }
        if (t instanceof Boolean) {
            a(((Boolean) t).booleanValue(), str);
            return this;
        }
        if (t instanceof Short) {
            a(((Short) t).shortValue(), str);
            return this;
        }
        if (t instanceof Integer) {
            a(((Integer) t).intValue(), str);
            return this;
        }
        if (t instanceof Long) {
            a(((Long) t).longValue(), str);
            return this;
        }
        if (t instanceof Float) {
            a(((Float) t).floatValue(), str);
            return this;
        }
        if (t instanceof Double) {
            a(((Double) t).doubleValue(), str);
            return this;
        }
        if (t instanceof String) {
            a((String) t, str);
            return this;
        }
        if (t instanceof Map) {
            a((Map) t, str);
            return this;
        }
        if (t instanceof List) {
            a((Collection) t, str);
            return this;
        }
        if (t instanceof m) {
            a((m) t, str);
            return this;
        }
        if (t instanceof byte[]) {
            a((byte[]) t, str);
            return this;
        }
        if (t instanceof boolean[]) {
            a((i) t, str);
            return this;
        }
        if (t instanceof short[]) {
            a((short[]) t, str);
            return this;
        }
        if (t instanceof int[]) {
            a((int[]) t, str);
            return this;
        }
        if (t instanceof long[]) {
            a((long[]) t, str);
            return this;
        }
        if (t instanceof float[]) {
            a((float[]) t, str);
            return this;
        }
        if (t instanceof double[]) {
            a((double[]) t, str);
            return this;
        }
        if (!t.getClass().isArray()) {
            throw new j("write object error: unsupport type.");
        }
        a((Object[]) t, str);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <T> i a(Collection<T> collection, String str) {
        if (collection != null) {
            return a(collection.toArray(), str);
        }
        a(str);
        this.f9768a.append("null\t");
        return this;
    }

    private i a(double[] dArr, String str) {
        a(str);
        if (dArr == null) {
            this.f9768a.append("null\n");
            return this;
        }
        if (dArr.length == 0) {
            StringBuilder sb = this.f9768a;
            sb.append(dArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f9768a;
        sb2.append(dArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f9768a, this.f9769b + 1);
        for (double d2 : dArr) {
            iVar.a(d2, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(float[] fArr, String str) {
        a(str);
        if (fArr == null) {
            this.f9768a.append("null\n");
            return this;
        }
        if (fArr.length == 0) {
            StringBuilder sb = this.f9768a;
            sb.append(fArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f9768a;
        sb2.append(fArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f9768a, this.f9769b + 1);
        for (float f2 : fArr) {
            iVar.a(f2, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(int[] iArr, String str) {
        a(str);
        if (iArr == null) {
            this.f9768a.append("null\n");
            return this;
        }
        if (iArr.length == 0) {
            StringBuilder sb = this.f9768a;
            sb.append(iArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f9768a;
        sb2.append(iArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f9768a, this.f9769b + 1);
        for (int i : iArr) {
            iVar.a(i, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(long[] jArr, String str) {
        a(str);
        if (jArr == null) {
            this.f9768a.append("null\n");
            return this;
        }
        if (jArr.length == 0) {
            StringBuilder sb = this.f9768a;
            sb.append(jArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f9768a;
        sb2.append(jArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f9768a, this.f9769b + 1);
        for (long j : jArr) {
            iVar.a(j, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private <T> i a(T[] tArr, String str) {
        a(str);
        if (tArr == null) {
            this.f9768a.append("null\n");
            return this;
        }
        if (tArr.length == 0) {
            StringBuilder sb = this.f9768a;
            sb.append(tArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f9768a;
        sb2.append(tArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f9768a, this.f9769b + 1);
        for (T t : tArr) {
            iVar.a((i) t, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private i a(short[] sArr, String str) {
        a(str);
        if (sArr == null) {
            this.f9768a.append("null\n");
            return this;
        }
        if (sArr.length == 0) {
            StringBuilder sb = this.f9768a;
            sb.append(sArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f9768a;
        sb2.append(sArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f9768a, this.f9769b + 1);
        for (short s : sArr) {
            iVar.a(s, (String) null);
        }
        a(']', (String) null);
        return this;
    }

    private void a(String str) {
        for (int i = 0; i < this.f9769b; i++) {
            this.f9768a.append('\t');
        }
        if (str != null) {
            StringBuilder sb = this.f9768a;
            sb.append(str);
            sb.append(": ");
        }
    }

    public final i a(byte b2, String str) {
        a(str);
        StringBuilder sb = this.f9768a;
        sb.append((int) b2);
        sb.append('\n');
        return this;
    }

    public final i a(int i, String str) {
        a(str);
        StringBuilder sb = this.f9768a;
        sb.append(i);
        sb.append('\n');
        return this;
    }

    public final i a(long j, String str) {
        a(str);
        StringBuilder sb = this.f9768a;
        sb.append(j);
        sb.append('\n');
        return this;
    }

    public final i a(m mVar, String str) {
        a('{', str);
        if (mVar == null) {
            StringBuilder sb = this.f9768a;
            sb.append('\t');
            sb.append("null");
        } else {
            mVar.a(this.f9768a, this.f9769b + 1);
        }
        a('}', (String) null);
        return this;
    }

    public final i a(String str, String str2) {
        a(str2);
        if (str == null) {
            this.f9768a.append("null\n");
            return this;
        }
        StringBuilder sb = this.f9768a;
        sb.append(str);
        sb.append('\n');
        return this;
    }

    public final <K, V> i a(Map<K, V> map, String str) {
        a(str);
        if (map == null) {
            this.f9768a.append("null\n");
            return this;
        }
        if (map.isEmpty()) {
            StringBuilder sb = this.f9768a;
            sb.append(map.size());
            sb.append(", {}\n");
            return this;
        }
        StringBuilder sb2 = this.f9768a;
        sb2.append(map.size());
        sb2.append(", {\n");
        i iVar = new i(this.f9768a, this.f9769b + 1);
        i iVar2 = new i(this.f9768a, this.f9769b + 2);
        for (Map.Entry<K, V> entry : map.entrySet()) {
            iVar.a('(', (String) null);
            iVar2.a((i) entry.getKey(), (String) null);
            iVar2.a((i) entry.getValue(), (String) null);
            iVar.a(')', (String) null);
        }
        a('}', (String) null);
        return this;
    }

    public final i a(short s, String str) {
        a(str);
        StringBuilder sb = this.f9768a;
        sb.append((int) s);
        sb.append('\n');
        return this;
    }

    public final i a(boolean z, String str) {
        a(str);
        StringBuilder sb = this.f9768a;
        sb.append(z ? 'T' : 'F');
        sb.append('\n');
        return this;
    }

    public final i a(byte[] bArr, String str) {
        a(str);
        if (bArr == null) {
            this.f9768a.append("null\n");
            return this;
        }
        if (bArr.length == 0) {
            StringBuilder sb = this.f9768a;
            sb.append(bArr.length);
            sb.append(", []\n");
            return this;
        }
        StringBuilder sb2 = this.f9768a;
        sb2.append(bArr.length);
        sb2.append(", [\n");
        i iVar = new i(this.f9768a, this.f9769b + 1);
        for (byte b2 : bArr) {
            iVar.a(b2, (String) null);
        }
        a(']', (String) null);
        return this;
    }
}
