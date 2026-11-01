package g;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class bcs {

    /* renamed from: a, reason: collision with root package name */
    protected HashMap<String, HashMap<String, byte[]>> f11297a = new HashMap<>();

    /* renamed from: b, reason: collision with root package name */
    protected HashMap<String, Object> f11298b = new HashMap<>();

    /* renamed from: e, reason: collision with root package name */
    private HashMap<String, Object> f11301e = new HashMap<>();

    /* renamed from: c, reason: collision with root package name */
    protected String f11299c = "GBK";

    /* renamed from: d, reason: collision with root package name */
    com.tencent.bugly.proguard.k f11300d = new com.tencent.bugly.proguard.k();

    public void a(String str, Object obj) {
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (obj == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (obj instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        com.tencent.bugly.proguard.l lVar = new com.tencent.bugly.proguard.l();
        lVar.a(this.f11299c);
        lVar.a(obj, 0);
        byte[] a2 = com.tencent.bugly.proguard.n.a(lVar.f9774a);
        HashMap<String, byte[]> hashMap = new HashMap<>(1);
        ArrayList arrayList = new ArrayList(1);
        while (true) {
            if (obj.getClass().isArray()) {
                if (!obj.getClass().getComponentType().toString().equals("byte")) {
                    throw new IllegalArgumentException("only byte[] is supported");
                }
                if (Array.getLength(obj) <= 0) {
                    arrayList.add("Array");
                    arrayList.add("?");
                    break;
                } else {
                    arrayList.add("java.util.List");
                    obj = Array.get(obj, 0);
                }
            } else if (!(obj instanceof Array)) {
                if (!(obj instanceof List)) {
                    if (!(obj instanceof Map)) {
                        arrayList.add(obj.getClass().getName());
                        break;
                    }
                    arrayList.add("java.util.Map");
                    Map map = (Map) obj;
                    if (map.size() <= 0) {
                        arrayList.add("?");
                        arrayList.add("?");
                        break;
                    } else {
                        Object next = map.keySet().iterator().next();
                        obj = map.get(next);
                        arrayList.add(next.getClass().getName());
                    }
                } else {
                    arrayList.add("java.util.List");
                    List list = (List) obj;
                    if (list.size() <= 0) {
                        arrayList.add("?");
                        break;
                    }
                    obj = list.get(0);
                }
            } else {
                throw new IllegalArgumentException("can not support Array, please use List");
            }
        }
        hashMap.put(com.tencent.bugly.proguard.a.a(arrayList), a2);
        this.f11301e.remove(str);
        this.f11297a.put(str, hashMap);
    }

    public void a(byte[] bArr) {
        this.f11300d.a(bArr);
        this.f11300d.a(this.f11299c);
        HashMap hashMap = new HashMap(1);
        HashMap hashMap2 = new HashMap(1);
        hashMap2.put("", new byte[0]);
        hashMap.put("", hashMap2);
        this.f11297a = this.f11300d.a((Map) hashMap, 0, false);
    }
}
