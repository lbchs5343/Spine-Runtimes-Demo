package com.bytedance.sdk.component.ox.d;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/* loaded from: classes.dex */
public final class le extends h {
    private final List<d> ig;
    private final com.bytedance.sdk.component.ox.dq.iw kk;
    private long mp = -1;
    private final i no;
    private final i o;
    public static final i dq = i.dq("multipart/mixed");

    /* renamed from: d, reason: collision with root package name */
    public static final i f2131d = i.dq("multipart/alternative");
    public static final i ox = i.dq("multipart/digest");
    public static final i p = i.dq("multipart/parallel");
    public static final i s = i.dq("multipart/form-data");
    private static final byte[] iw = {58, 32};
    private static final byte[] mn = {13, 10};
    private static final byte[] ia = {45, 45};

    public static final class d {

        /* renamed from: d, reason: collision with root package name */
        final h f2132d;
        final cd dq;

        private d(cd cdVar, h hVar) {
            this.dq = cdVar;
            this.f2132d = hVar;
        }

        public static d dq(cd cdVar, h hVar) {
            if (hVar == null) {
                throw new NullPointerException("body == null");
            }
            if (cdVar != null && cdVar.dq("Content-Type") != null) {
                throw new IllegalArgumentException("Unexpected header: Content-Type");
            }
            if (cdVar == null || cdVar.dq("Content-Length") == null) {
                return new d(cdVar, hVar);
            }
            throw new IllegalArgumentException("Unexpected header: Content-Length");
        }

        public static d dq(String str, String str2, h hVar) {
            if (str == null) {
                throw new NullPointerException("name == null");
            }
            StringBuilder sb = new StringBuilder("form-data; name=");
            le.dq(sb, str);
            if (str2 != null) {
                sb.append("; filename=");
                le.dq(sb, str2);
            }
            return dq(cd.dq("Content-Disposition", sb.toString()), hVar);
        }
    }

    public static final class dq {

        /* renamed from: d, reason: collision with root package name */
        private i f2133d;
        private final com.bytedance.sdk.component.ox.dq.iw dq;
        private final List<d> ox;

        public dq() {
            this(UUID.randomUUID().toString());
        }

        public dq(String str) {
            this.f2133d = le.dq;
            this.ox = new ArrayList();
            this.dq = com.bytedance.sdk.component.ox.dq.iw.dq(str);
        }

        public dq dq(i iVar) {
            if (iVar == null) {
                throw new NullPointerException("type == null");
            }
            if (!iVar.dq().equals("multipart")) {
                throw new IllegalArgumentException("multipart != ".concat(String.valueOf(iVar)));
            }
            this.f2133d = iVar;
            return this;
        }

        public dq dq(d dVar) {
            if (dVar == null) {
                throw new NullPointerException("part == null");
            }
            this.ox.add(dVar);
            return this;
        }

        public dq dq(String str, String str2, h hVar) {
            return dq(d.dq(str, str2, hVar));
        }

        public le dq() {
            if (this.ox.isEmpty()) {
                throw new IllegalStateException("Multipart body must have at least one part.");
            }
            return new le(this.dq, this.f2133d, this.ox);
        }
    }

    public le(com.bytedance.sdk.component.ox.dq.iw iwVar, i iVar, List<d> list) {
        this.kk = iwVar;
        this.o = iVar;
        this.no = i.dq(iVar + "; boundary=" + iwVar.dq());
        this.ig = com.bytedance.sdk.component.ox.d.dq.ox.dq(list);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private long dq(com.bytedance.sdk.component.ox.dq.p pVar, boolean z) throws IOException {
        com.bytedance.sdk.component.ox.dq.ox oxVar;
        if (z) {
            pVar = new com.bytedance.sdk.component.ox.dq.ox();
            oxVar = pVar;
        } else {
            oxVar = 0;
        }
        int size = this.ig.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            d dVar = this.ig.get(i);
            cd cdVar = dVar.dq;
            h hVar = dVar.f2132d;
            pVar.ox(ia);
            pVar.d(this.kk);
            pVar.ox(mn);
            if (cdVar != null) {
                int dq2 = cdVar.dq();
                for (int i2 = 0; i2 < dq2; i2++) {
                    pVar.d(cdVar.dq(i2)).ox(iw).d(cdVar.d(i2)).ox(mn);
                }
            }
            i dq3 = hVar.dq();
            if (dq3 != null) {
                pVar.d("Content-Type: ").d(dq3.toString()).ox(mn);
            }
            long d2 = hVar.d();
            if (d2 != -1) {
                pVar.d("Content-Length: ").ig(d2).ox(mn);
            } else if (z) {
                oxVar.cd();
                return -1L;
            }
            byte[] bArr = mn;
            pVar.ox(bArr);
            if (z) {
                j += d2;
            } else {
                hVar.dq(pVar);
            }
            pVar.ox(bArr);
        }
        byte[] bArr2 = ia;
        pVar.ox(bArr2);
        pVar.d(this.kk);
        pVar.ox(bArr2);
        pVar.ox(mn);
        if (!z) {
            return j;
        }
        long d3 = oxVar.d() + j;
        oxVar.cd();
        return d3;
    }

    public static StringBuilder dq(StringBuilder sb, String str) {
        sb.append('\"');
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            if (charAt == '\n') {
                sb.append("%0A");
            } else if (charAt == '\r') {
                sb.append("%0D");
            } else if (charAt != '\"') {
                sb.append(charAt);
            } else {
                sb.append("%22");
            }
        }
        sb.append('\"');
        return sb;
    }

    @Override // com.bytedance.sdk.component.ox.d.h
    public long d() throws IOException {
        long j = this.mp;
        if (j != -1) {
            return j;
        }
        long dq2 = dq((com.bytedance.sdk.component.ox.dq.p) null, true);
        this.mp = dq2;
        return dq2;
    }

    @Override // com.bytedance.sdk.component.ox.d.h
    public i dq() {
        return this.no;
    }

    @Override // com.bytedance.sdk.component.ox.d.h
    public void dq(com.bytedance.sdk.component.ox.dq.p pVar) throws IOException {
        dq(pVar, false);
    }
}
