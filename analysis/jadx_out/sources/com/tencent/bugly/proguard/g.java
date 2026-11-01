package com.tencent.bugly.proguard;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class g extends m {
    static byte[] k = null;
    static Map<String, String> l = null;
    static final /* synthetic */ boolean m = true;

    /* renamed from: g, reason: collision with root package name */
    public byte[] f9767g;
    public Map<String, String> i;
    public Map<String, String> j;

    /* renamed from: a, reason: collision with root package name */
    public short f9761a = 0;

    /* renamed from: b, reason: collision with root package name */
    public byte f9762b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f9763c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f9764d = 0;

    /* renamed from: e, reason: collision with root package name */
    public String f9765e = null;

    /* renamed from: f, reason: collision with root package name */
    public String f9766f = null;
    public int h = 0;

    @Override // com.tencent.bugly.proguard.m
    public final void a(k kVar) {
        try {
            this.f9761a = kVar.a(this.f9761a, 1, true);
            this.f9762b = kVar.a(this.f9762b, 2, true);
            this.f9763c = kVar.a(this.f9763c, 3, true);
            this.f9764d = kVar.a(this.f9764d, 4, true);
            this.f9765e = kVar.b(5, true);
            this.f9766f = kVar.b(6, true);
            if (k == null) {
                k = new byte[]{0};
            }
            this.f9767g = kVar.c(7, true);
            this.h = kVar.a(this.h, 8, true);
            if (l == null) {
                HashMap hashMap = new HashMap();
                l = hashMap;
                hashMap.put("", "");
            }
            this.i = (Map) kVar.a((k) l, 9, true);
            if (l == null) {
                HashMap hashMap2 = new HashMap();
                l = hashMap2;
                hashMap2.put("", "");
            }
            this.j = (Map) kVar.a((k) l, 10, true);
        } catch (Exception e2) {
            e2.printStackTrace();
            System.out.println("RequestPacket decode error " + f.a(this.f9767g));
            throw new RuntimeException(e2);
        }
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(l lVar) {
        lVar.a(this.f9761a, 1);
        lVar.a(this.f9762b, 2);
        lVar.a(this.f9763c, 3);
        lVar.a(this.f9764d, 4);
        lVar.a(this.f9765e, 5);
        lVar.a(this.f9766f, 6);
        lVar.a(this.f9767g, 7);
        lVar.a(this.h, 8);
        lVar.a((Map) this.i, 9);
        lVar.a((Map) this.j, 10);
    }

    @Override // com.tencent.bugly.proguard.m
    public final void a(StringBuilder sb, int i) {
        i iVar = new i(sb, i);
        iVar.a(this.f9761a, "iVersion");
        iVar.a(this.f9762b, "cPacketType");
        iVar.a(this.f9763c, "iMessageType");
        iVar.a(this.f9764d, "iRequestId");
        iVar.a(this.f9765e, "sServantName");
        iVar.a(this.f9766f, "sFuncName");
        iVar.a(this.f9767g, "sBuffer");
        iVar.a(this.h, "iTimeout");
        iVar.a((Map) this.i, "context");
        iVar.a((Map) this.j, "status");
    }

    public final Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException unused) {
            if (m) {
                return null;
            }
            throw new AssertionError();
        }
    }

    public final boolean equals(Object obj) {
        g gVar = (g) obj;
        return n.a(1, (int) gVar.f9761a) && n.a(1, (int) gVar.f9762b) && n.a(1, gVar.f9763c) && n.a(1, gVar.f9764d) && n.a((Object) 1, (Object) gVar.f9765e) && n.a((Object) 1, (Object) gVar.f9766f) && n.a((Object) 1, (Object) gVar.f9767g) && n.a(1, gVar.h) && n.a((Object) 1, (Object) gVar.i) && n.a((Object) 1, (Object) gVar.j);
    }
}
