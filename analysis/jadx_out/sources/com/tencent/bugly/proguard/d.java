package com.tencent.bugly.proguard;

import g.bcs;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class d extends bcs {

    /* renamed from: e, reason: collision with root package name */
    protected HashMap<String, byte[]> f9755e = null;

    /* renamed from: g, reason: collision with root package name */
    private HashMap<String, Object> f9757g = new HashMap<>();

    /* renamed from: f, reason: collision with root package name */
    k f9756f = new k();

    private void c(String str, Object obj) {
        this.f9757g.put(str, obj);
    }

    public final void a(String str) {
        this.f11299c = str;
    }

    @Override // g.bcs
    public <T> void a(String str, T t) {
        if (this.f9755e == null) {
            super.a(str, t);
            return;
        }
        if (str == null) {
            throw new IllegalArgumentException("put key can not is null");
        }
        if (t == null) {
            throw new IllegalArgumentException("put value can not is null");
        }
        if (t instanceof Set) {
            throw new IllegalArgumentException("can not support Set");
        }
        l lVar = new l();
        lVar.a(this.f11299c);
        lVar.a(t, 0);
        this.f9755e.put(str, n.a(lVar.f9774a));
    }

    @Override // g.bcs
    public void a(byte[] bArr) {
        try {
            super.a(bArr);
        } catch (Exception unused) {
            this.f9756f.a(bArr);
            this.f9756f.a(this.f11299c);
            HashMap hashMap = new HashMap(1);
            hashMap.put("", new byte[0]);
            this.f9755e = this.f9756f.a((Map) hashMap, 0, false);
        }
    }

    public byte[] a() {
        if (this.f9755e != null) {
            l lVar = new l(0);
            lVar.a(this.f11299c);
            lVar.a((Map) this.f9755e, 0);
            return n.a(lVar.f9774a);
        }
        l lVar2 = new l(0);
        lVar2.a(this.f11299c);
        lVar2.a((Map) this.f11297a, 0);
        return n.a(lVar2.f9774a);
    }

    public final <T> T b(String str, T t) throws b {
        HashMap<String, byte[]> hashMap = this.f9755e;
        if (hashMap != null) {
            if (!hashMap.containsKey(str)) {
                return null;
            }
            if (this.f9757g.containsKey(str)) {
                return (T) this.f9757g.get(str);
            }
            try {
                this.f9756f.a(this.f9755e.get(str));
                this.f9756f.a(this.f11299c);
                T t2 = (T) this.f9756f.a((k) t, 0, true);
                if (t2 == null) {
                    return t2;
                }
                c(str, t2);
                return t2;
            } catch (Exception e2) {
                throw new b(e2);
            }
        }
        if (!this.f11297a.containsKey(str)) {
            return null;
        }
        if (this.f9757g.containsKey(str)) {
            return (T) this.f9757g.get(str);
        }
        byte[] bArr = new byte[0];
        Iterator<Map.Entry<String, byte[]>> it = this.f11297a.get(str).entrySet().iterator();
        if (it.hasNext()) {
            Map.Entry<String, byte[]> next = it.next();
            next.getKey();
            bArr = next.getValue();
        }
        try {
            this.f9756f.a(bArr);
            this.f9756f.a(this.f11299c);
            T t3 = (T) this.f9756f.a((k) t, 0, true);
            c(str, t3);
            return t3;
        } catch (Exception e3) {
            throw new b(e3);
        }
    }

    public void b() {
        this.f9755e = new HashMap<>();
    }
}
