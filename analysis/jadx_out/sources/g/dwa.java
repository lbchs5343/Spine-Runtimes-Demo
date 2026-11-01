package g;

import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class dwa {

    /* renamed from: a, reason: collision with root package name */
    public static final dwa f14915a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f14916b;

    static {
        dwa dwaVar = new dwa(new LinkedHashMap());
        bff.k(dwaVar);
        f14915a = dwaVar;
    }

    public dwa(dwa dwaVar) {
        bff.p(dwaVar, "other");
        this.f14916b = new HashMap(dwaVar.f14916b);
    }

    public dwa(LinkedHashMap linkedHashMap) {
        bff.p(linkedHashMap, "values");
        this.f14916b = new HashMap(linkedHashMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003a A[Catch: ClassNotFoundException -> 0x005f, IOException -> 0x0061, TRY_LEAVE, TryCatch #6 {IOException -> 0x0061, ClassNotFoundException -> 0x005f, blocks: (B:10:0x0017, B:12:0x002e, B:15:0x0035, B:17:0x003a, B:25:0x005a, B:33:0x0065, B:34:0x0068, B:35:0x0069, B:46:0x009c, B:56:0x00c2, B:57:0x00c5), top: B:9:0x0017 }] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0069 A[Catch: ClassNotFoundException -> 0x005f, IOException -> 0x0061, TRY_LEAVE, TryCatch #6 {IOException -> 0x0061, ClassNotFoundException -> 0x005f, blocks: (B:10:0x0017, B:12:0x002e, B:15:0x0035, B:17:0x003a, B:25:0x005a, B:33:0x0065, B:34:0x0068, B:35:0x0069, B:46:0x009c, B:56:0x00c2, B:57:0x00c5), top: B:9:0x0017 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final dwa c(byte[] bArr) {
        ByteArrayInputStream byteArrayInputStream;
        byte[] bArr2;
        byte b2;
        int i;
        boolean z;
        bff.p(bArr, "bytes");
        if (bArr.length > 10240) {
            throw new IllegalStateException("Data cannot occupy more than 10240 bytes when serialized");
        }
        if (bArr.length == 0) {
            return f14915a;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        try {
            byteArrayInputStream = new ByteArrayInputStream(bArr);
            bArr2 = new byte[2];
            byteArrayInputStream.read(bArr2);
            b2 = (byte) (-21267);
            i = 0;
        } catch (IOException e2) {
            cyl.f().j(ow.f19782a, "Error in Data#fromByteArray: ", e2);
        } catch (ClassNotFoundException e3) {
            cyl.f().j(ow.f19782a, "Error in Data#fromByteArray: ", e3);
        }
        if (bArr2[0] == ((byte) 16777132)) {
            z = true;
            if (bArr2[1] == b2) {
                byteArrayInputStream.reset();
                if (z) {
                    DataInputStream dataInputStream = new DataInputStream(byteArrayInputStream);
                    try {
                        short readShort = dataInputStream.readShort();
                        if (readShort != -21521) {
                            throw new IllegalStateException(awf.ac(readShort, "Magic number doesn't match: ").toString());
                        }
                        short readShort2 = dataInputStream.readShort();
                        if (readShort2 != 1) {
                            throw new IllegalStateException(awf.ac(readShort2, "Unsupported version number: ").toString());
                        }
                        int readInt = dataInputStream.readInt();
                        while (i < readInt) {
                            Serializable y = bff.y(dataInputStream, dataInputStream.readByte());
                            String readUTF = dataInputStream.readUTF();
                            bff.e(readUTF, "key");
                            linkedHashMap.put(readUTF, y);
                            i++;
                        }
                        dataInputStream.close();
                    } finally {
                    }
                } else {
                    ObjectInputStream objectInputStream = new ObjectInputStream(byteArrayInputStream);
                    try {
                        int readInt2 = objectInputStream.readInt();
                        while (i < readInt2) {
                            String readUTF2 = objectInputStream.readUTF();
                            bff.e(readUTF2, "readUTF()");
                            linkedHashMap.put(readUTF2, objectInputStream.readObject());
                            i++;
                        }
                        objectInputStream.close();
                    } finally {
                    }
                }
                return new dwa(linkedHashMap);
            }
        }
        z = false;
        byteArrayInputStream.reset();
        if (z) {
        }
        return new dwa(linkedHashMap);
    }

    public final String d(String str) {
        Object obj = this.f14916b.get(str);
        if (obj instanceof String) {
            return (String) obj;
        }
        return null;
    }

    public final boolean e(String str) {
        Object obj = this.f14916b.get(str);
        return obj != null && String.class.isAssignableFrom(obj.getClass());
    }

    public final boolean equals(Object obj) {
        boolean z;
        if (this != obj) {
            if (obj != null && dwa.class.equals(obj.getClass())) {
                HashMap hashMap = ((dwa) obj).f14916b;
                HashMap hashMap2 = this.f14916b;
                Set<String> keySet = hashMap2.keySet();
                if (bff.n(keySet, hashMap.keySet())) {
                    for (String str : keySet) {
                        Object obj2 = hashMap2.get(str);
                        Object obj3 = hashMap.get(str);
                        if (obj2 == null || obj3 == null) {
                            z = obj2 == obj3;
                        } else {
                            if (obj2 instanceof Object[]) {
                                Object[] objArr = (Object[]) obj2;
                                if (obj3 instanceof Object[]) {
                                    z = fuv.d(objArr, (Object[]) obj3);
                                }
                            }
                            z = obj2.equals(obj3);
                        }
                        if (!z) {
                        }
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i = 0;
        for (Map.Entry entry : this.f14916b.entrySet()) {
            Object value = entry.getValue();
            i += value instanceof Object[] ? Objects.hashCode(entry.getKey()) ^ Arrays.deepHashCode((Object[]) value) : entry.hashCode();
        }
        return i * 31;
    }

    public final String toString() {
        String str = "Data {" + gsv.bh(this.f14916b.entrySet(), null, vi.f20158a, 31) + "}";
        bff.e(str, "StringBuilder().apply(builderAction).toString()");
        return str;
    }
}
