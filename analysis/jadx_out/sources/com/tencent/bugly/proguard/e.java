package com.tencent.bugly.proguard;

import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class e extends d {
    static HashMap<String, byte[]> h;
    static HashMap<String, HashMap<String, byte[]>> i;

    /* renamed from: g, reason: collision with root package name */
    protected g f9758g;
    private int j;

    public e() {
        g gVar = new g();
        this.f9758g = gVar;
        this.j = 0;
        gVar.f9761a = (short) 2;
    }

    @Override // com.tencent.bugly.proguard.d, g.bcs
    public final <T> void a(String str, T t) {
        if (str.startsWith(".")) {
            throw new IllegalArgumentException("put name can not startwith . , now is ".concat(str));
        }
        super.a(str, t);
    }

    @Override // com.tencent.bugly.proguard.d, g.bcs
    public final void a(byte[] bArr) {
        if (bArr.length < 4) {
            throw new IllegalArgumentException("decode package must include size head");
        }
        try {
            k kVar = new k(bArr, (byte) 0);
            kVar.a(this.f11299c);
            this.f9758g.a(kVar);
            g gVar = this.f9758g;
            if (gVar.f9761a == 3) {
                k kVar2 = new k(gVar.f9767g);
                kVar2.a(this.f11299c);
                if (h == null) {
                    HashMap<String, byte[]> hashMap = new HashMap<>();
                    h = hashMap;
                    hashMap.put("", new byte[0]);
                }
                ((d) this).f9755e = kVar2.a((Map) h, 0, false);
                return;
            }
            k kVar3 = new k(gVar.f9767g);
            kVar3.a(this.f11299c);
            if (i == null) {
                i = new HashMap<>();
                HashMap<String, byte[]> hashMap2 = new HashMap<>();
                hashMap2.put("", new byte[0]);
                i.put("", hashMap2);
            }
            this.f11297a = kVar3.a((Map) i, 0, false);
            this.f11298b = new HashMap<>();
        } catch (Exception e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // com.tencent.bugly.proguard.d
    public final byte[] a() {
        g gVar = this.f9758g;
        if (gVar.f9761a != 2) {
            if (gVar.f9765e == null) {
                gVar.f9765e = "";
            }
            if (gVar.f9766f == null) {
                gVar.f9766f = "";
            }
        } else {
            if (gVar.f9765e.equals("")) {
                throw new IllegalArgumentException("servantName can not is null");
            }
            if (this.f9758g.f9766f.equals("")) {
                throw new IllegalArgumentException("funcName can not is null");
            }
        }
        l lVar = new l(0);
        lVar.a(this.f11299c);
        if (this.f9758g.f9761a == 2) {
            lVar.a((Map) this.f11297a, 0);
        } else {
            lVar.a((Map) ((d) this).f9755e, 0);
        }
        this.f9758g.f9767g = n.a(lVar.f9774a);
        l lVar2 = new l(0);
        lVar2.a(this.f11299c);
        this.f9758g.a(lVar2);
        byte[] a2 = n.a(lVar2.f9774a);
        int length = a2.length + 4;
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length).put(a2).flip();
        return allocate.array();
    }

    @Override // com.tencent.bugly.proguard.d
    public final void b() {
        super.b();
        this.f9758g.f9761a = (short) 3;
    }

    public final void b(String str) {
        this.f9758g.f9765e = str;
    }

    public final void c() {
        this.f9758g.f9764d = 1;
    }

    public final void c(String str) {
        this.f9758g.f9766f = str;
    }
}
