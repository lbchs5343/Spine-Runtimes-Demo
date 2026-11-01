package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.util.Comparator;
import j$.util.List;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class cvm {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f13590a = dsr.k(cvm.class);

    /* renamed from: b, reason: collision with root package name */
    public bvx f13591b;

    /* renamed from: c, reason: collision with root package name */
    public final cqc f13592c;

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f13593d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f13594e;

    public cvm(cqc cqcVar) {
        ArrayList arrayList = new ArrayList();
        this.f13593d = arrayList;
        this.f13594e = new ArrayList();
        this.f13592c = cqcVar;
        arrayList.add(new apx());
    }

    public static Object f(awr awrVar, ery eryVar) {
        try {
            ffs ffsVar = awrVar.f10989a;
            if (ffsVar == null) {
                File file = new File(awrVar.f10992d);
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    Object h = eryVar.h(file.length(), bufferedInputStream);
                    bufferedInputStream.close();
                    return h;
                } finally {
                }
            }
            InputStream g2 = ffsVar.g();
            try {
                Object h2 = eryVar.h(ffsVar.c(), g2);
                if (g2 == null) {
                    return h2;
                }
                g2.close();
                return h2;
            } finally {
            }
        } catch (Exception e2) {
            throw new uc("Error decode: " + awrVar.f10992d, e2);
        }
        throw new uc("Error decode: " + awrVar.f10992d, e2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:243:0x0722, code lost:
    
        if (r9 == 95) goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:267:0x06ad, code lost:
    
        if (r2.f10586b >= r7.f10586b) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x06a6, code lost:
    
        if (r4 <= r5) goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:274:0x06b7, code lost:
    
        if (g.foj.c(r11) != false) goto L210;
     */
    /* JADX WARN: Removed duplicated region for block: B:199:0x06c9  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0792  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x079f  */
    /* JADX WARN: Removed duplicated region for block: B:220:0x074a  */
    /* JADX WARN: Removed duplicated region for block: B:230:0x0777  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x077b  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0780  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x0782  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x08ee A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final aew g(awr awrVar, InputStream inputStream) {
        long j;
        dwg dwgVar;
        ur urVar;
        int i;
        int i2;
        aew aewVar;
        int i3;
        bvi bviVar;
        bvi bviVar2;
        String str;
        long j2;
        bvi bviVar3;
        bvi bviVar4;
        dwg dwgVar2;
        String str2;
        int i4;
        ur urVar2;
        int i5;
        int i6;
        Iterator it;
        HashSet hashSet;
        bvi bviVar5;
        bvi bviVar6;
        long j3;
        ur urVar3;
        int i7;
        String str3;
        String str4;
        String str5;
        String str6;
        int i8;
        char c2;
        boolean z;
        int charCount;
        String sb;
        String str7;
        String str8;
        azy azyVar;
        String str9;
        ag agVar = awrVar.f10993e;
        String str10 = awrVar.f10992d;
        if (agVar != ag.ARSC) {
            throw new IllegalArgumentException("Unexpected resource type for decode: " + awrVar.f10993e + ", expect '.pb'/'.arsc'");
        }
        Iterator it2 = this.f13593d.iterator();
        aew aewVar2 = null;
        while (it2.hasNext()) {
            apx apxVar = (apx) it2.next();
            apxVar.getClass();
            aewVar2 = !str10.endsWith(".arsc") ? null : new aew(apxVar.f10637a);
            if (aewVar2 != null) {
                break;
            }
        }
        if (aewVar2 == null) {
            throw new gck(tn.x("Unknown type of resource file: ", str10));
        }
        String str11 = awrVar.f10990b;
        if (str11 != null) {
            str10 = str11;
        }
        aewVar2.f10126e = str10;
        long currentTimeMillis = System.currentTimeMillis();
        aewVar2.k = new gdu(new BufferedInputStream(inputStream, 32768));
        dwg dwgVar3 = aewVar2.f10125d;
        ur urVar4 = dwgVar3.i;
        aewVar2.f10127f = new gyo(urVar4.am);
        dba dbaVar = aew.f10123b;
        aewVar2.k.k(2, "Not a table chunk");
        aewVar2.k.k(12, "Unexpected table header size");
        int i9 = aewVar2.k.i();
        int i10 = aewVar2.k.i();
        int i11 = 0;
        while (true) {
            gdu gduVar = aewVar2.k;
            int i12 = i11;
            char c3 = 0;
            long j4 = gduVar.f17955f;
            if (j4 >= i9) {
                long j5 = currentTimeMillis;
                aew aewVar3 = aewVar2;
                int i13 = i10;
                if (i12 != i13) {
                    dbaVar.t(Integer.valueOf(i12), "Unexpected package chunks, read: {}, expected: {}", Integer.valueOf(i13));
                }
                gyo gyoVar = aewVar3.f10127f;
                List.b.sort(gyoVar.f19010d, Comparator.a.comparingInt(new dbm(12)));
                gyoVar.f19008b.clear();
                gyoVar.f19009c.clear();
                if (dbaVar.af()) {
                    dbaVar.a(Integer.valueOf(aewVar3.f10127f.f19010d.size()), "Resource table parsed: size: {}, time: {}ms", Long.valueOf(System.currentTimeMillis() - j5));
                }
                return aewVar3;
            }
            int h = gduVar.h();
            int h2 = aewVar2.k.h();
            aew aewVar4 = aewVar2;
            long i14 = (aewVar2.k.i() & 4294967295L) + j4;
            if (h == 1) {
                j = currentTimeMillis;
                dwgVar = dwgVar3;
                urVar = urVar4;
                i = i9;
                i2 = i10;
                aewVar = aewVar4;
                aewVar.f10124c = aewVar.n(j4, i14);
            } else if (h != 512) {
                j = currentTimeMillis;
                dwgVar = dwgVar3;
                urVar = urVar4;
                i = i9;
                i2 = i10;
                aewVar = aewVar4;
            } else {
                if (h2 < 284) {
                    aewVar4.m("Package header size too small");
                    throw null;
                }
                aewVar = aewVar4;
                int i15 = aewVar.k.i();
                String g2 = aewVar.k.g(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
                j = currentTimeMillis;
                long i16 = aewVar.k.i() + j4;
                aewVar.k.i();
                i = i9;
                i2 = i10;
                long i17 = aewVar.k.i() + j4;
                aewVar.k.i();
                if (h2 >= 288) {
                    aewVar.k.i();
                }
                aewVar.k.l(j4 + h2, "package header end");
                if (i16 != 0) {
                    aewVar.k.l(i16, "Expected typeStrings string pool");
                    i3 = 1;
                    aewVar.k.k(1, "String pool expected");
                    bviVar = aewVar.l();
                } else {
                    i3 = 1;
                    bviVar = null;
                }
                if (i17 != 0) {
                    aewVar.k.l(i17, "Expected keyStrings string pool");
                    aewVar.k.k(i3, "String pool expected");
                    bviVar2 = aewVar.l();
                } else {
                    bviVar2 = null;
                }
                gyo gyoVar2 = aewVar.f10127f;
                if (((cvp) gyoVar2.f19011e).f13600b.contains(nd.VERIFY_APP_PACKAGE)) {
                    Pattern pattern = cbd.f12584a;
                    if (!foj.c(g2) || cbd.f12586c.contains(g2) || !cbd.f12585b.matcher(g2).matches()) {
                        cvp.f13599a.p(g2, "App package '{}' has invalid format and will be ignored");
                        str = "INVALID_PACKAGE";
                        gyoVar2.f19012f = str;
                        while (true) {
                            gdu gduVar2 = aewVar.k;
                            j2 = gduVar2.f17955f;
                            if (j2 >= i14) {
                                int h3 = gduVar2.h();
                                dbaVar.r(Long.valueOf(j2), "res package chunk start at {} type {}", Integer.valueOf(h3));
                                if (h3 != 0) {
                                    switch (h3) {
                                        case MediaPlayer.MEDIA_PLAYER_OPTION_MODULE_ID /* 513 */:
                                            aewVar.k.h();
                                            long i18 = aewVar.k.i() & 4294967295L;
                                            long j6 = j2 + i18;
                                            aewVar.k.mark((int) i18);
                                            int j7 = aewVar.k.j();
                                            int i19 = j7 - 1;
                                            String f2 = bviVar.f(i19);
                                            int j8 = aewVar.k.j();
                                            boolean z2 = (j8 & 1) != 0;
                                            boolean z3 = (j8 & 2) != 0;
                                            aewVar.k.h();
                                            int i20 = aewVar.k.i();
                                            long i21 = j2 + aewVar.k.i();
                                            gdu gduVar3 = aewVar.k;
                                            str2 = g2;
                                            i4 = i15;
                                            long j9 = gduVar3.f17955f;
                                            int i22 = gduVar3.i();
                                            if (i22 < 4) {
                                                throw new IOException("Config size < 4");
                                            }
                                            int i23 = i22 - 4;
                                            byte[] bArr = new byte[Math.max(52, i23)];
                                            gdu gduVar4 = aewVar.k;
                                            dwgVar2 = dwgVar3;
                                            ur urVar5 = urVar4;
                                            gduVar4.f17955f += i23;
                                            if (i23 < 0) {
                                                throw new IndexOutOfBoundsException();
                                            }
                                            int i24 = 0;
                                            while (i24 < i23) {
                                                int read = gduVar4.f17954e.read(bArr, i24, i23 - i24);
                                                if (read < 0) {
                                                    throw new EOFException();
                                                }
                                                i24 += read;
                                            }
                                            gdu gduVar5 = new gdu(new ByteArrayInputStream(bArr));
                                            short h4 = (short) gduVar5.h();
                                            short h5 = (short) gduVar5.h();
                                            char[] h6 = aew.h((byte) gduVar5.j(), (byte) gduVar5.j(), 'a');
                                            char[] h7 = aew.h((byte) gduVar5.j(), (byte) gduVar5.j(), '0');
                                            byte j10 = (byte) gduVar5.j();
                                            byte j11 = (byte) gduVar5.j();
                                            int h8 = gduVar5.h();
                                            byte j12 = (byte) gduVar5.j();
                                            byte j13 = (byte) gduVar5.j();
                                            byte j14 = (byte) gduVar5.j();
                                            byte j15 = (byte) gduVar5.j();
                                            short h9 = (short) gduVar5.h();
                                            short h10 = (short) gduVar5.h();
                                            short h11 = (short) gduVar5.h();
                                            gduVar5.h();
                                            byte j16 = (byte) gduVar5.j();
                                            byte j17 = (byte) gduVar5.j();
                                            short h12 = (short) gduVar5.h();
                                            short h13 = (short) gduVar5.h();
                                            short h14 = (short) gduVar5.h();
                                            char[] charArray = aew.g(4, gduVar5).toCharArray();
                                            char[] charArray2 = aew.g(8, gduVar5).toCharArray();
                                            byte j18 = (byte) gduVar5.j();
                                            byte j19 = (byte) gduVar5.j();
                                            gduVar5.h();
                                            aewVar.k.m(j9 + i22, "Config skip trailing bytes");
                                            pr prVar = new pr(h4, h5, h6, h7, j10, j11, h8, j12, j13, j14, j15, h9, h10, h11, j16, j17, h12, h13, h14, charArray.length == 0 ? null : charArray, charArray2.length == 0 ? null : charArray2, j18, j19, i22);
                                            if (prVar.f19826d) {
                                                dbaVar.t(f2, "Invalid config flags detected: {}{}", prVar.f19828f);
                                            }
                                            ArrayList arrayList = new ArrayList(i20);
                                            if (z2) {
                                                for (int i25 = 0; i25 < i20; i25++) {
                                                    arrayList.add(new gaq(aewVar.k.h(), aewVar.k.h() * 4));
                                                }
                                            } else if (z3) {
                                                for (int i26 = 0; i26 < i20; i26++) {
                                                    int h15 = aewVar.k.h();
                                                    if (h15 != 65535) {
                                                        arrayList.add(new gaq(i26, h15 * 4));
                                                    }
                                                }
                                            } else {
                                                for (int i27 = 0; i27 < i20; i27++) {
                                                    arrayList.add(new gaq(i27, aewVar.k.i()));
                                                }
                                            }
                                            aewVar.k.l(i21, "Failed to skip to entries start");
                                            HashSet hashSet2 = new HashSet(arrayList.size() * 2);
                                            Iterator it3 = arrayList.iterator();
                                            int i28 = 0;
                                            while (it3.hasNext()) {
                                                gaq gaqVar = (gaq) it3.next();
                                                int i29 = gaqVar.f17814b;
                                                if (i29 != -1) {
                                                    int i30 = gaqVar.f17813a;
                                                    if (!z2 || hashSet2.add(Integer.valueOf(i30))) {
                                                        long j20 = i29 + i21;
                                                        if (j20 >= j6) {
                                                            i28++;
                                                        } else {
                                                            gdu gduVar6 = aewVar.k;
                                                            j3 = i21;
                                                            HashSet hashSet3 = hashSet2;
                                                            if (j20 < gduVar6.f17955f) {
                                                                gduVar6.reset();
                                                            }
                                                            aewVar.k.l(j20, "Expected start of entry " + i30);
                                                            int h16 = aewVar.k.h();
                                                            int h17 = aewVar.k.h();
                                                            boolean z4 = (h17 & 1) != 0;
                                                            boolean z5 = (h17 & 8) != 0;
                                                            int i31 = z5 ? h16 : aewVar.k.i();
                                                            if (i31 == -1) {
                                                                bviVar6 = bviVar;
                                                                bviVar5 = bviVar2;
                                                                hashSet = hashSet3;
                                                                it = it3;
                                                                i6 = i28;
                                                                i5 = i19;
                                                                urVar3 = urVar5;
                                                                i19 = i5;
                                                                urVar5 = urVar3;
                                                                i21 = j3;
                                                                bviVar = bviVar6;
                                                                bviVar2 = bviVar5;
                                                                hashSet2 = hashSet;
                                                                it3 = it;
                                                                i28 = i6;
                                                            } else {
                                                                int i32 = (i4 << 24) | (j7 << 16) | i30;
                                                                String f3 = bviVar.f(i19);
                                                                String f4 = bviVar2.f(i31);
                                                                bviVar6 = bviVar;
                                                                urVar3 = urVar5;
                                                                if (urVar3.am.f13601c.bt(f4)) {
                                                                    bviVar5 = bviVar2;
                                                                    String str12 = (String) aewVar.f10127f.f19009c.get(Integer.valueOf(i32));
                                                                    if (str12 != null) {
                                                                        str5 = str12;
                                                                        hashSet = hashSet3;
                                                                        it = it3;
                                                                        i6 = i28;
                                                                        i5 = i19;
                                                                        str6 = str2;
                                                                        i8 = i32;
                                                                    } else {
                                                                        chf chfVar = (chf) ((bqm) dwgVar2.f14934f.f14997c).f12023a.get(Integer.valueOf(i32));
                                                                        hcd hcdVar = chfVar instanceof hcd ? (hcd) chfVar : null;
                                                                        if (hcdVar != null) {
                                                                            i7 = i32;
                                                                            if (!hcdVar.f19216f.bd().l.g(csv.SYNTHETIC)) {
                                                                                cax caxVar = urVar3.al;
                                                                                String str13 = hcdVar.f19217g.f14712e;
                                                                                hashSet = hashSet3;
                                                                                int i33 = en.f15832a[caxVar.ordinal()];
                                                                                it = it3;
                                                                                if (i33 != 1) {
                                                                                    if (i33 != 2) {
                                                                                        if (i33 != 3) {
                                                                                            throw new gck("Unexpected ResourceNameSource value: " + caxVar);
                                                                                        }
                                                                                        str8 = str13;
                                                                                        str3 = str8;
                                                                                    }
                                                                                    str3 = f4;
                                                                                } else {
                                                                                    int i34 = aim.f10269a;
                                                                                    if (!f4.equals(str13)) {
                                                                                        if (!foj.l(f4) && !foj.l(str13)) {
                                                                                            aot aotVar = new aot(0);
                                                                                            foj.d(f4, new cen(aotVar));
                                                                                            aot aotVar2 = new aot(0);
                                                                                            foj.d(str13, new cen(aotVar2));
                                                                                            int i35 = aotVar.f10587c;
                                                                                            str8 = str13;
                                                                                            if (i35 != 0 || aotVar2.f10587c != 0) {
                                                                                                float f5 = i35 / aotVar.f10586b;
                                                                                                float f6 = aotVar2.f10587c / aotVar2.f10586b;
                                                                                                if (Math.abs(f6 - f5) >= 0.001d) {
                                                                                                    break;
                                                                                                }
                                                                                            }
                                                                                            break;
                                                                                        } else {
                                                                                            str8 = str13;
                                                                                            break;
                                                                                        }
                                                                                    }
                                                                                    str3 = f4;
                                                                                }
                                                                                if (urVar3.r.contains(ffl.VALID)) {
                                                                                    i6 = i28;
                                                                                    i5 = i19;
                                                                                    str4 = str3;
                                                                                } else {
                                                                                    boolean contains = urVar3.r.contains(ffl.PRINTABLE);
                                                                                    boolean z6 = !contains;
                                                                                    str4 = String.format("_res_0x%08x", Integer.valueOf(i7));
                                                                                    if (str3.isEmpty()) {
                                                                                        i6 = i28;
                                                                                        i5 = i19;
                                                                                    } else {
                                                                                        i6 = i28;
                                                                                        StringBuilder sb2 = new StringBuilder(str3.length() + 1);
                                                                                        i5 = i19;
                                                                                        int codePointAt = str3.codePointAt(0);
                                                                                        if (!contains || cbd.d(codePointAt)) {
                                                                                            if (codePointAt >= 880 || !Character.isUnicodeIdentifierStart(codePointAt)) {
                                                                                                c2 = '_';
                                                                                                break;
                                                                                            } else {
                                                                                                c2 = '_';
                                                                                            }
                                                                                            Pattern pattern2 = cbd.f12584a;
                                                                                            if (Character.isJavaIdentifierStart(codePointAt)) {
                                                                                                sb2.appendCodePoint(codePointAt);
                                                                                                z = false;
                                                                                                charCount = Character.charCount(codePointAt);
                                                                                                boolean z7 = z;
                                                                                                while (charCount < str3.length()) {
                                                                                                    int codePointAt2 = str3.codePointAt(charCount);
                                                                                                    if (kj.u(codePointAt2, z6)) {
                                                                                                        sb2.appendCodePoint(codePointAt2);
                                                                                                        str7 = str3;
                                                                                                    } else {
                                                                                                        str7 = str3;
                                                                                                        sb2.append('_');
                                                                                                        z7 = true;
                                                                                                    }
                                                                                                    charCount += Character.charCount(codePointAt2);
                                                                                                    str3 = str7;
                                                                                                }
                                                                                                sb = sb2.toString();
                                                                                                if (cbd.f12586c.contains(sb)) {
                                                                                                    z7 = true;
                                                                                                }
                                                                                                str4 = !z7 ? awf.c(sb, str4) : sb;
                                                                                            }
                                                                                        } else {
                                                                                            c2 = '_';
                                                                                        }
                                                                                        sb2.append(c2);
                                                                                        if (kj.u(codePointAt, z6)) {
                                                                                            sb2.appendCodePoint(codePointAt);
                                                                                        }
                                                                                        z = true;
                                                                                        charCount = Character.charCount(codePointAt);
                                                                                        boolean z72 = z;
                                                                                        while (charCount < str3.length()) {
                                                                                        }
                                                                                        sb = sb2.toString();
                                                                                        if (cbd.f12586c.contains(sb)) {
                                                                                        }
                                                                                        if (!z72) {
                                                                                        }
                                                                                    }
                                                                                }
                                                                                if (!f4.equals(str4)) {
                                                                                    aewVar.f10127f.f19009c.put(Integer.valueOf(i7), str4);
                                                                                }
                                                                                if (hcdVar != null) {
                                                                                    hcdVar.f19217g.f14710b = str4.replace('.', '_');
                                                                                    hcdVar.w(csv.DONT_RENAME);
                                                                                }
                                                                                str5 = str4;
                                                                                str6 = str2;
                                                                                i8 = i7;
                                                                            }
                                                                        } else {
                                                                            i7 = i32;
                                                                        }
                                                                        hashSet = hashSet3;
                                                                        it = it3;
                                                                        str3 = f4;
                                                                        if (urVar3.r.contains(ffl.VALID)) {
                                                                        }
                                                                        if (!f4.equals(str4)) {
                                                                        }
                                                                        if (hcdVar != null) {
                                                                        }
                                                                        str5 = str4;
                                                                        str6 = str2;
                                                                        i8 = i7;
                                                                    }
                                                                    azy azyVar2 = new azy(str6, f3, i8, str5, prVar.f19828f);
                                                                    int i36 = i8;
                                                                    str2 = str6;
                                                                    azy azyVar3 = (azy) aewVar.f10127f.f19008b.get(azyVar2);
                                                                    if (azyVar3 != null) {
                                                                        if (azyVar3.f11142d == i36) {
                                                                            dbaVar.b(azyVar3, "ResourceEntries with duplicate resource id found: {} {}", azyVar2);
                                                                            str9 = f4;
                                                                        } else {
                                                                            str9 = str5;
                                                                        }
                                                                        azyVar2 = azyVar2.i(str9);
                                                                        azy i37 = azyVar3.i(str9);
                                                                        String str14 = i37.f11140b;
                                                                        dbaVar.r(azyVar2.f11140b, "Resource name collision - renamed to {} and {}", str14);
                                                                        ArrayList arrayList2 = aewVar.f10127f.f19010d;
                                                                        int indexOf = arrayList2.indexOf(azyVar3);
                                                                        if (indexOf != -1) {
                                                                            arrayList2.set(indexOf, i37);
                                                                        }
                                                                        gyo gyoVar3 = aewVar.f10127f;
                                                                        gyoVar3.getClass();
                                                                        gyoVar3.f19009c.put(Integer.valueOf(i37.f11142d), str14);
                                                                    }
                                                                    azyVar = azyVar2;
                                                                    String str15 = azyVar.f11140b;
                                                                    if (!f4.equals(str15)) {
                                                                        gyo gyoVar4 = aewVar.f10127f;
                                                                        gyoVar4.getClass();
                                                                        gyoVar4.f19009c.put(Integer.valueOf(azyVar.f11142d), str15);
                                                                    }
                                                                    gyo gyoVar5 = aewVar.f10127f;
                                                                    gyoVar5.f19010d.add(azyVar);
                                                                    gyoVar5.f19008b.put(azyVar, azyVar);
                                                                } else {
                                                                    azyVar = aew.f10122a;
                                                                    bviVar5 = bviVar2;
                                                                    hashSet = hashSet3;
                                                                    it = it3;
                                                                    i6 = i28;
                                                                    i5 = i19;
                                                                }
                                                                if (z5) {
                                                                    azyVar.h = new aot(h17 >> 8, aewVar.k.i(), 3);
                                                                } else if (z4 || h16 == 16) {
                                                                    int i38 = aewVar.k.i();
                                                                    int i39 = aewVar.k.i();
                                                                    azyVar.f11143e = i38;
                                                                    ArrayList arrayList3 = new ArrayList(i39);
                                                                    for (int i40 = 0; i40 < i39; i40++) {
                                                                        arrayList3.add(new bbc(aewVar.k.i(), aewVar.i()));
                                                                    }
                                                                    azyVar.f11139a = arrayList3;
                                                                } else {
                                                                    azyVar.h = aewVar.i();
                                                                }
                                                                i19 = i5;
                                                                urVar5 = urVar3;
                                                                i21 = j3;
                                                                bviVar = bviVar6;
                                                                bviVar2 = bviVar5;
                                                                hashSet2 = hashSet;
                                                                it3 = it;
                                                                i28 = i6;
                                                            }
                                                        }
                                                    }
                                                }
                                                bviVar6 = bviVar;
                                                bviVar5 = bviVar2;
                                                hashSet = hashSet2;
                                                j3 = i21;
                                                it = it3;
                                                i6 = i28;
                                                i5 = i19;
                                                urVar3 = urVar5;
                                                i19 = i5;
                                                urVar5 = urVar3;
                                                i21 = j3;
                                                bviVar = bviVar6;
                                                bviVar2 = bviVar5;
                                                hashSet2 = hashSet;
                                                it3 = it;
                                                i28 = i6;
                                            }
                                            bviVar3 = bviVar;
                                            bviVar4 = bviVar2;
                                            int i41 = i28;
                                            urVar2 = urVar5;
                                            if (i41 > 0) {
                                                dbaVar.t(Integer.valueOf(i41), "{} entries of type {} has been ignored (invalid offset)", f2);
                                            }
                                            aewVar.k.l(j6, "End of chunk");
                                            break;
                                            break;
                                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_EXPIRED_LICENSE /* 514 */:
                                            aewVar.k.k(16, "Unexpected type spec header size");
                                            long i42 = aewVar.k.i() + j2;
                                            aewVar.k.j();
                                            aewVar.k.skip(3L);
                                            int i43 = aewVar.k.i();
                                            for (int i44 = 0; i44 < i43; i44++) {
                                                aewVar.k.i();
                                            }
                                            if (aewVar.k.f17955f != i42) {
                                                Object[] objArr = new Object[1];
                                                objArr[c3] = Long.valueOf(j2);
                                                throw new IOException(String.format("Error reading type spec chunk at offset 0x%x", objArr));
                                            }
                                            bviVar3 = bviVar;
                                            bviVar4 = bviVar2;
                                            dwgVar2 = dwgVar3;
                                            str2 = g2;
                                            i4 = i15;
                                            urVar2 = urVar4;
                                            break;
                                        case MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_SEEK_EXACT /* 515 */:
                                            dbaVar.e("parsing library type chunk starting at offset {}", Long.valueOf(j2));
                                            aewVar.k.k(12, "Unexpected header size");
                                            long i45 = aewVar.k.i() + j2;
                                            int i46 = aewVar.k.i();
                                            int i47 = 0;
                                            while (i47 < i46) {
                                                long j21 = i45;
                                                dbaVar.w(aewVar.k.g(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME), Integer.valueOf(aewVar.k.i()));
                                                if (aewVar.k.f17955f > j21) {
                                                    throw new IOException("reading after chunk end");
                                                }
                                                i47++;
                                                i45 = j21;
                                            }
                                            if (aewVar.k.f17955f != i45) {
                                                Object[] objArr2 = new Object[1];
                                                objArr2[c3] = Long.valueOf(j2);
                                                throw new IOException(String.format("Error reading library chunk at offset 0x%x", objArr2));
                                            }
                                            bviVar3 = bviVar;
                                            bviVar4 = bviVar2;
                                            dwgVar2 = dwgVar3;
                                            str2 = g2;
                                            i4 = i15;
                                            urVar2 = urVar4;
                                            break;
                                        case MediaPlayer.MEDIA_PLAYER_OPTION_FILE_FORMAT /* 516 */:
                                            dbaVar.e("parsing overlay type chunk starting at offset {}", Long.valueOf(j2));
                                            aewVar.k.h();
                                            dbaVar.r(aewVar.k.g(256), "Overlay header data: name={} actor={}", aewVar.k.g(256));
                                            aewVar.k.l(j2 + aewVar.k.i(), "overlay chunk end");
                                            bviVar3 = bviVar;
                                            bviVar4 = bviVar2;
                                            dwgVar2 = dwgVar3;
                                            str2 = g2;
                                            i4 = i15;
                                            urVar2 = urVar4;
                                            break;
                                        case MediaPlayer.MEDIA_PLAYER_OPTION_FILE_SIZE /* 517 */:
                                            Object[] objArr3 = new Object[1];
                                            objArr3[c3] = Long.valueOf(j2);
                                            throw new IOException(String.format("Encountered unsupported chunk type RES_TABLE_TYPE_OVERLAY_POLICY at offset 0x%x ", objArr3));
                                        case MediaPlayer.MEDIA_PLAYER_OPTION_TCP_FAST_OPEN_SUCCESS /* 518 */:
                                            dbaVar.e("parsing staged alias chunk starting at offset {}", Long.valueOf(j2));
                                            aewVar.k.h();
                                            long i48 = j2 + aewVar.k.i();
                                            int i49 = aewVar.k.i();
                                            for (int i50 = 0; i50 < i49; i50++) {
                                                dbaVar.a(Integer.valueOf(aewVar.k.i()), "Staged alias: stagedResId {} finalizedResId {}", Integer.valueOf(aewVar.k.i()));
                                            }
                                            aewVar.k.l(i48, "staged alias chunk end");
                                            bviVar3 = bviVar;
                                            bviVar4 = bviVar2;
                                            dwgVar2 = dwgVar3;
                                            str2 = g2;
                                            i4 = i15;
                                            urVar2 = urVar4;
                                            break;
                                        default:
                                            dbaVar.t(Integer.valueOf(h3), "Unknown chunk type {} encountered at offset {}", Long.valueOf(j2));
                                            bviVar3 = bviVar;
                                            bviVar4 = bviVar2;
                                            dwgVar2 = dwgVar3;
                                            str2 = g2;
                                            i4 = i15;
                                            urVar2 = urVar4;
                                            break;
                                    }
                                } else {
                                    bviVar3 = bviVar;
                                    bviVar4 = bviVar2;
                                    dwgVar2 = dwgVar3;
                                    str2 = g2;
                                    i4 = i15;
                                    urVar2 = urVar4;
                                    dbaVar.g(Long.valueOf(j2), "Null chunk type encountered at offset {}");
                                }
                                urVar4 = urVar2;
                                g2 = str2;
                                i15 = i4;
                                bviVar = bviVar3;
                                bviVar2 = bviVar4;
                                dwgVar3 = dwgVar2;
                                c3 = 0;
                            } else {
                                dwgVar = dwgVar3;
                                urVar = urVar4;
                                i11 = i12 + 1;
                                i14 = i14;
                            }
                        }
                    }
                }
                str = g2;
                gyoVar2.f19012f = str;
                while (true) {
                    gdu gduVar22 = aewVar.k;
                    j2 = gduVar22.f17955f;
                    if (j2 >= i14) {
                    }
                    urVar4 = urVar2;
                    g2 = str2;
                    i15 = i4;
                    bviVar = bviVar3;
                    bviVar2 = bviVar4;
                    dwgVar3 = dwgVar2;
                    c3 = 0;
                }
            }
            i11 = i12;
            aewVar.k.l(i14, "Skip to table chunk end");
            aewVar2 = aewVar;
            urVar4 = urVar;
            currentTimeMillis = j;
            i9 = i;
            i10 = i2;
            dwgVar3 = dwgVar;
        }
    }

    public final ArrayList h(dwg dwgVar) {
        FileInputStream fileInputStream;
        Iterator it = this.f13593d.iterator();
        while (it.hasNext()) {
            apx apxVar = (apx) it.next();
            try {
                apxVar.f10637a = dwgVar;
            } catch (Exception unused) {
                throw new gck("Failed to init res table provider: " + apxVar);
            }
        }
        Iterator it2 = this.f13594e.iterator();
        if (it2.hasNext()) {
            if (it2.next() != null) {
                throw new ClassCastException();
            }
            try {
                throw null;
            } catch (Exception unused2) {
                throw new gck("Failed to init res container factory: null");
            }
        }
        cqc cqcVar = this.f13592c;
        ArrayList<File> arrayList = cqcVar.k.ad;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        for (File file : arrayList) {
            if (file != null && !file.isDirectory()) {
                Iterator it3 = cqcVar.h.iterator();
                if (it3.hasNext()) {
                    throw tn.c(it3);
                }
                dba dbaVar = bqu.f12045c;
                boolean z = false;
                try {
                    fileInputStream = new FileInputStream(file);
                } catch (Exception e2) {
                    bqu.f12045c.b(file.getAbsolutePath(), "Failed to read zip file: {}", e2);
                }
                try {
                    byte[] bArr = bqu.f12044b;
                    int length = bArr.length;
                    byte[] bArr2 = new byte[length];
                    boolean z2 = fileInputStream.read(bArr2) == length && Arrays.equals(bArr2, bArr);
                    fileInputStream.close();
                    z = z2;
                    if (z) {
                        try {
                            eqm k = cqcVar.i.k(file);
                            cqcVar.o.add(k);
                            for (ffs ffsVar : k.f15999d) {
                                if (!ffsVar.isDirectory()) {
                                    String name = ffsVar.getName();
                                    awr awrVar = !cqcVar.k.am.f13601c.bt(name) ? null : new awr(cqcVar, name, ag.c(name));
                                    if (awrVar != null) {
                                        awrVar.f10989a = ffsVar;
                                        arrayList2.add(awrVar);
                                    }
                                }
                            }
                        } catch (Exception e3) {
                            throw new RuntimeException("Failed to open zip file: " + file.getAbsolutePath(), e3);
                        }
                    } else {
                        arrayList2.add(new awr(cqcVar, file.getAbsolutePath(), ag.c(file.getAbsolutePath())));
                    }
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
        }
        return arrayList2;
    }
}
