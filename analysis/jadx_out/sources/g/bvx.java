package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.util.Map;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;

/* loaded from: classes.dex */
public final class bvx extends bmc {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f12292a = dsr.k(bvx.class);

    /* renamed from: b, reason: collision with root package name */
    public final boolean f12293b;

    /* renamed from: c, reason: collision with root package name */
    public HashSet f12294c;

    /* renamed from: d, reason: collision with root package name */
    public bvi f12295d;

    /* renamed from: e, reason: collision with root package name */
    public flc f12296e;

    /* renamed from: f, reason: collision with root package name */
    public HashSet f12297f;
    public int[] h;
    public String i;
    public final dwg o;
    public final HashMap s;
    public HashMap t;
    public boolean u;
    public HashMap w;
    public final gql x;
    public bpo y;
    public final HashMap r = new HashMap();
    public String q = "ERROR";
    public boolean p = true;
    public boolean v = true;

    /* renamed from: g, reason: collision with root package name */
    public int f12298g = 0;

    public bvx(dwg dwgVar) {
        this.o = dwgVar;
        this.x = dwgVar.ah();
        dwgVar.i.getClass();
        this.f12293b = true;
        try {
            this.s = (HashMap) dwgVar.f14934f.f14995a;
        } catch (Exception e2) {
            throw new gck("BinaryXMLParser init error", e2);
        }
    }

    public final void aa(flc flcVar, String str, String str2) {
        flcVar.getClass();
        if (str2 == null || !str.equals("android:name")) {
            return;
        }
        if (str2.startsWith(".")) {
            str2 = awf.ad(new StringBuilder(), this.i, str2);
        }
        if (this.w == null) {
            dwg dwgVar = this.o;
            dwgVar.getClass();
            HashMap hashMap = new HashMap(dwgVar.f14933e.size());
            Iterator it = dwgVar.f14933e.iterator();
            while (it.hasNext()) {
                cci cciVar = (cci) it.next();
                ve veVar = cciVar.ak;
                String str3 = veVar.f20147b;
                String m = veVar.m();
                hashMap.put(str3, cciVar);
                if (m != null && !str3.equals(m)) {
                    hashMap.put(m, cciVar);
                }
            }
            this.w = hashMap;
        }
        cci cciVar2 = (cci) this.w.get(str2);
        if (cciVar2 != null) {
            flcVar.b(cciVar2);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x01d5, code lost:
    
        if (r28.f12297f.size() != r28.t.size()) goto L72;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ab() {
        int i;
        ?? r16;
        long j;
        String str;
        String z;
        HashSet hashSet;
        String str2;
        String str3;
        int i2 = this.k.i();
        while (true) {
            gdu gduVar = this.k;
            if (gduVar.f17955f >= i2) {
                return;
            }
            int h = gduVar.h();
            if (h != 0) {
                HashMap hashMap = this.s;
                if (h == 1) {
                    i = i2;
                    this.f12295d = l();
                    this.y = new bpo(this.f12295d, hashMap);
                } else if (h != 384) {
                    dba dbaVar = f12292a;
                    switch (h) {
                        case 256:
                            i = i2;
                            int h2 = this.k.h();
                            if (h2 > 16) {
                                dbaVar.k("Invalid namespace header");
                            } else if (h2 < 16) {
                                m("NAMESPACE header is not 0x10 big");
                                throw null;
                            }
                            int i3 = this.k.i();
                            if (i3 > 24) {
                                dbaVar.k("Invalid namespace size");
                            } else if (i3 < 24) {
                                m("NAMESPACE header chunk is not 0x18 big");
                                throw null;
                            }
                            this.k.i();
                            this.k.i();
                            int i4 = this.k.i();
                            int i5 = this.k.i();
                            this.k.skip(h2 - 16);
                            String z2 = z(i5);
                            String z3 = z(i4);
                            if (foj.c(z2) && !z2.trim().isEmpty() && !this.t.containsValue(z3)) {
                                Map.b.putIfAbsent(this.t, z2, z3);
                            }
                            this.f12298g++;
                            continue;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_FALLBACK_SW_DEC /* 257 */:
                            i = i2;
                            int h3 = this.k.h();
                            if (h3 > 16) {
                                dbaVar.k("Invalid namespace end");
                            } else if (h3 < 16) {
                                m("NAMESPACE end is not 0x10 big");
                                throw null;
                            }
                            if (this.k.i() != 24) {
                                dbaVar.k("Invalid namespace end size");
                            }
                            this.k.i();
                            this.k.i();
                            int i6 = this.k.i();
                            int i7 = this.k.i();
                            this.k.skip(h3 - 16);
                            this.f12298g--;
                            String z4 = z(i7);
                            String z5 = z(i6);
                            if (foj.c(z4)) {
                                if (!z4.trim().isEmpty() && !this.t.containsValue(z5)) {
                                    Map.b.putIfAbsent(this.t, z4, z5);
                                    break;
                                }
                            } else {
                                continue;
                            }
                            break;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_RANGE_MODE /* 258 */:
                            if (this.u) {
                                this.u = false;
                            } else {
                                this.f12296e.aa();
                            }
                            if (this.k.h() != 16) {
                                m("ELEMENT HEADER SIZE is not 0x10");
                                throw null;
                            }
                            gdu gduVar2 = this.k;
                            long j2 = gduVar2.f17955f;
                            int i8 = gduVar2.i();
                            int i9 = this.k.i();
                            this.k.i();
                            this.k.i();
                            int i10 = this.k.i();
                            if (this.p) {
                                r16 = 0;
                            } else {
                                Object obj = null;
                                r16 = obj;
                                if (!"ERROR".equals(this.q)) {
                                    this.f12296e.a('>');
                                    r16 = obj;
                                }
                            }
                            this.v = true;
                            this.p = false;
                            String ae = ae(z(i10));
                            this.q = ae;
                            this.q = ac(ae);
                            flc flcVar = this.f12296e;
                            flcVar.ad('<');
                            flcVar.d(this.q);
                            this.f12296e.e(i9);
                            if (this.k.h() != 20) {
                                m("startNS's attributeStart is not 0x14");
                                throw r16;
                            }
                            int h4 = this.k.h();
                            if (h4 < 20) {
                                m("startNS's attributeSize is less than 0x14");
                                throw r16;
                            }
                            int h5 = this.k.h();
                            this.k.h();
                            this.k.h();
                            this.k.h();
                            if (!"manifest".equals(this.q)) {
                                j = 4;
                                break;
                            } else {
                                j = 4;
                            }
                            for (Map.Entry entry : this.t.entrySet()) {
                                if (!this.f12297f.contains(entry.getKey())) {
                                    this.f12297f.add((String) entry.getKey());
                                    String ac = ac((String) entry.getValue());
                                    this.f12296e.o(" xmlns");
                                    if (ac != null && !ac.trim().isEmpty()) {
                                        this.f12296e.a(':');
                                        this.f12296e.o(ac);
                                    }
                                    flc flcVar2 = this.f12296e;
                                    flcVar2.o("=\"");
                                    flcVar2.o(foj.m((String) entry.getKey()));
                                    flcVar2.a('\"');
                                }
                            }
                            HashSet hashSet2 = new HashSet();
                            boolean z6 = h5 != 1 && this.f12293b;
                            int i11 = 0;
                            while (i11 < h5) {
                                int i12 = this.k.i();
                                int i13 = this.k.i();
                                int i14 = i2;
                                this.k.i();
                                int i15 = h5;
                                boolean z7 = z6;
                                this.k.skip(3L);
                                int j3 = this.k.j();
                                int i16 = this.k.i();
                                int i17 = i11;
                                long j4 = j2;
                                int i18 = h4;
                                this.k.skip(h4 - 20);
                                if (i12 != -1) {
                                    String z8 = z(i12);
                                    if (z8 == null || z8.isEmpty()) {
                                        if (((-65536) & i12) == 0 || (i12 & 16711680) != 0) {
                                            z8 = "http://schemas.android.com/apk/res/android";
                                        } else {
                                            str3 = r16;
                                            str = str3;
                                        }
                                    }
                                    str3 = (String) this.t.get(z8);
                                    if (str3 == null) {
                                        if ("http://schemas.android.com/apk/res/android".equals(z8)) {
                                            this.t.put("http://schemas.android.com/apk/res/android", "android");
                                            str3 = "android";
                                        } else {
                                            int i19 = 1;
                                            while (true) {
                                                String ac2 = awf.ac(i19, "ns");
                                                if (this.f12294c.contains(ac2) || this.t.containsValue(ac2)) {
                                                    i19++;
                                                } else {
                                                    this.f12294c.add(ac2);
                                                    str3 = ac2;
                                                }
                                            }
                                        }
                                        if (z7) {
                                            flc flcVar3 = this.f12296e;
                                            flcVar3.ag();
                                            flcVar3.d(flcVar3.v);
                                        } else {
                                            this.f12296e.a(' ');
                                        }
                                        flc flcVar4 = this.f12296e;
                                        flcVar4.o("xmlns:");
                                        flcVar4.o(str3);
                                        flcVar4.o("=\"");
                                        flcVar4.o(z8);
                                        flcVar4.o("\" ");
                                    }
                                    str = str3;
                                } else {
                                    str = r16;
                                }
                                int[] iArr = this.h;
                                if (iArr == null || i13 < 0 || i13 >= iArr.length || (z = dqf.b(iArr[i13])) == null) {
                                    z = z(i13);
                                    if (z == null || z.isEmpty()) {
                                        z = awf.d(new StringBuilder("NOT_FOUND_0x"), i13);
                                    }
                                } else {
                                    int indexOf = z.indexOf(47);
                                    if (indexOf != -1) {
                                        z = z.substring(indexOf + 1);
                                    }
                                }
                                String ac3 = ac(z);
                                String i20 = str != null ? awf.i(str, ":", ac3) : ac3;
                                if (hashSet2.add(i20)) {
                                    if (z7) {
                                        flc flcVar5 = this.f12296e;
                                        flcVar5.ag();
                                        flcVar5.d(flcVar5.v);
                                    } else {
                                        this.f12296e.a(' ');
                                    }
                                    flc flcVar6 = this.f12296e;
                                    flcVar6.o(i20);
                                    flcVar6.o("=\"");
                                    String str4 = str;
                                    String g2 = this.x.g(i16, i20);
                                    if (g2 != null) {
                                        if ("manifest".equals(this.q) && "package".equals(ac3)) {
                                            this.i = g2;
                                        }
                                        if ("android:name".equals(i20)) {
                                            g2 = ae(g2);
                                        }
                                        aa(this.f12296e, ac3, g2);
                                        this.f12296e.o(foj.m(g2));
                                        hashSet = hashSet2;
                                    } else {
                                        hashSet = hashSet2;
                                        if (j3 == 1) {
                                            String str5 = (String) hashMap.get(Integer.valueOf(i16));
                                            if (str5 != null) {
                                                this.f12296e.a('@');
                                                if (str5.startsWith("id/")) {
                                                    this.f12296e.a('+');
                                                }
                                                this.f12296e.o(str5);
                                            } else {
                                                String b2 = dqf.b(i16);
                                                if (b2 != null) {
                                                    flc flcVar7 = this.f12296e;
                                                    flcVar7.o("@android:");
                                                    flcVar7.o(b2);
                                                } else if (i16 == 0) {
                                                    this.f12296e.o("@null");
                                                } else {
                                                    flc flcVar8 = this.f12296e;
                                                    flcVar8.o("0x");
                                                    flcVar8.o(Integer.toHexString(i16));
                                                }
                                            }
                                        } else {
                                            try {
                                                str2 = this.y.e(j3, i16);
                                            } catch (gck e2) {
                                                dbaVar.b(i20, "Failed to decode attribute value of \"{}\"", e2);
                                                str2 = r16;
                                            }
                                            if ("manifest".equals(this.q) && "package".equals(i20)) {
                                                this.i = str2;
                                            }
                                            if ("android:name".equals(i20)) {
                                                str2 = ae(str2);
                                            }
                                            aa(this.f12296e, i20, str2);
                                            this.f12296e.o(str2 != null ? foj.m(str2) : "null");
                                        }
                                    }
                                    if (str4 != null && str4.equals("android")) {
                                        boolean equals = ac3.equals("pathData");
                                        dwg dwgVar = this.o;
                                        if (equals) {
                                            dwgVar.f14931c.getClass();
                                        } else if (ac3.equals("fillType")) {
                                            dwgVar.f14931c.getClass();
                                        }
                                    }
                                    this.f12296e.a('\"');
                                } else {
                                    hashSet = hashSet2;
                                }
                                i11 = i17 + 1;
                                h4 = i18;
                                i2 = i14;
                                h5 = i15;
                                z6 = z7;
                                j2 = j4;
                                hashSet2 = hashSet;
                            }
                            i = i2;
                            gdu gduVar3 = this.k;
                            long j5 = (gduVar3.f17955f - j2) + j;
                            long j6 = i8;
                            if (j5 < j6) {
                                gduVar3.skip(j6 - j5);
                                break;
                            } else {
                                continue;
                            }
                            break;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_VIDEO_RANGE_TIME /* 259 */:
                            if (this.k.h() != 16) {
                                m("ELEMENT END header is not 0x10");
                                throw null;
                            }
                            if (this.k.i() != 24) {
                                m("ELEMENT END header chunk is not 0x18 big");
                                throw null;
                            }
                            int i21 = this.k.i();
                            this.k.i();
                            this.k.i();
                            String ac4 = ac(ae(z(this.k.i())));
                            if (this.q.equals(ac4) && this.v && !this.p) {
                                this.f12296e.o("/>");
                            } else {
                                this.f12296e.ae("</");
                                this.f12296e.e(i21);
                                flc flcVar9 = this.f12296e;
                                flcVar9.o(ac4);
                                flcVar9.a('>');
                            }
                            this.p = true;
                            flc flcVar10 = this.f12296e;
                            if (flcVar10.z != 0) {
                                flcVar10.ab();
                                break;
                            }
                            break;
                        case MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_RANGE_TIME /* 260 */:
                            if (this.k.h() != 16) {
                                m("CDATA header is not 0x10");
                                throw null;
                            }
                            if (this.k.i() != 28) {
                                m("CDATA header chunk is not 0x1C");
                                throw null;
                            }
                            int i22 = this.k.i();
                            this.k.skip(4L);
                            String z9 = z(this.k.i());
                            if (!this.p) {
                                this.p = true;
                                this.f12296e.a('>');
                            }
                            this.f12296e.e(i22);
                            this.f12296e.o(foj.m(z9));
                            this.k.skip(this.k.h() - 2);
                            break;
                        default:
                            if (this.f12298g == 0) {
                                return;
                            }
                            m("Type: 0x" + Integer.toHexString(h) + " not yet implemented");
                            throw null;
                    }
                } else {
                    i = i2;
                    if (this.k.h() != 8) {
                        m("Header size of resmap is not 8!");
                        throw null;
                    }
                    int i23 = (this.k.i() - 8) / 4;
                    this.h = new int[i23];
                    for (int i24 = 0; i24 < i23; i24++) {
                        this.h[i24] = this.k.i();
                    }
                }
                i2 = i;
            }
            i = i2;
            i2 = i;
        }
    }

    public final String ac(String str) {
        String sb;
        char charAt;
        int i;
        byte[] bArr = bud.f12211a;
        int length = str.length();
        if (length != 0 && (charAt = str.charAt(0)) < 0 && (bArr[charAt] & 4) != 0) {
            while (i < length) {
                char charAt2 = str.charAt(i);
                i = (charAt2 < 0 && (bArr[charAt2] & 8) != 0) ? i + 1 : 1;
            }
            return str;
        }
        HashMap hashMap = this.r;
        if (hashMap.containsKey(str)) {
            return (String) hashMap.get(str);
        }
        do {
            Random random = new Random();
            StringBuilder sb2 = new StringBuilder();
            for (int i2 = 1; i2 <= 6; i2++) {
                sb2.append((char) (random.nextInt(26) + 97));
            }
            sb = sb2.toString();
        } while (hashMap.containsValue(sb));
        hashMap.put(str, sb);
        return sb;
    }

    public final synchronized emz ad(InputStream inputStream) {
        String byteArrayOutputStream;
        this.h = null;
        gdu gduVar = new gdu(inputStream);
        this.k = gduVar;
        gduVar.mark(4);
        this.k.h();
        if (this.k.h() == 8) {
            this.f12294c = new HashSet();
            this.t = new HashMap();
            this.f12297f = new HashSet();
            flc ac = this.o.ac();
            this.f12296e = ac;
            ac.o("<?xml version=\"1.0\" encoding=\"utf-8\"?>");
            this.u = true;
            ab();
            this.t = null;
            this.f12297f = null;
            emz finish = this.f12296e.finish();
            this.w = null;
            return finish;
        }
        this.k.reset();
        gdu gduVar2 = this.k;
        Charset charset = StandardCharsets.UTF_8;
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream(8192);
        dba dbaVar = bqu.f12045c;
        byte[] bArr = new byte[8192];
        while (true) {
            int read = gduVar2.read(bArr);
            if (read == -1) {
                byteArrayOutputStream = byteArrayOutputStream2.toString(StandardCharsets.UTF_8);
                return new grx(byteArrayOutputStream);
            }
            byteArrayOutputStream2.write(bArr, 0, read);
        }
    }

    public final String ae(String str) {
        String str2 = this.i;
        String str3 = null;
        if (str.indexOf(46) != -1) {
            ve veVar = (ve) ((HashMap) this.o.h.h).get(cwx.bf((str2 == null || !str.startsWith(".")) ? str : str2.concat(str)));
            if (veVar != null) {
                str3 = veVar.m();
            }
        }
        return str3 != null ? str3 : str;
    }

    public final String z(int i) {
        if (i >= 0) {
            bvi bviVar = this.f12295d;
            if (i < bviVar.f12268e) {
                return bviVar.f(i);
            }
        }
        return awf.d(new StringBuilder("NOT_FOUND_STR_0x"), i);
    }
}
