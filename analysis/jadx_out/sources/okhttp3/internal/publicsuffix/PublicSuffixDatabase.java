package okhttp3.internal.publicsuffix;

import g.awf;
import g.baf;
import g.bff;
import g.bop;
import g.cfg;
import g.cro;
import g.dcv;
import g.deb;
import g.dot;
import g.fai;
import g.gsv;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes3.dex */
public final class PublicSuffixDatabase {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f21205a = {42};

    /* renamed from: b, reason: collision with root package name */
    public static final List f21206b = cro.r("*");

    /* renamed from: c, reason: collision with root package name */
    public static final PublicSuffixDatabase f21207c = new PublicSuffixDatabase();

    /* renamed from: d, reason: collision with root package name */
    public byte[] f21208d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f21209e = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    public final CountDownLatch f21210f = new CountDownLatch(1);

    /* renamed from: g, reason: collision with root package name */
    public byte[] f21211g;

    public static List h(String str) {
        List bt = dcv.bt(str, new char[]{'.'});
        if (!bff.n(gsv.bg(bt), "")) {
            return bt;
        }
        int size = bt.size() - 1;
        if (size < 0) {
            size = 0;
        }
        if (size < 0) {
            throw new IllegalArgumentException(awf.b(size, "Requested element count ", " is less than zero.").toString());
        }
        fai faiVar = fai.f16469a;
        if (size == 0) {
            return faiVar;
        }
        if (size >= bt.size()) {
            return gsv.bf(bt);
        }
        if (size == 1) {
            if (bt.isEmpty()) {
                throw new NoSuchElementException("List is empty.");
            }
            return cro.r(bt.get(0));
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator it = bt.iterator();
        int i = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i++;
            if (i == size) {
                break;
            }
        }
        int size2 = arrayList.size();
        return size2 != 0 ? size2 != 1 ? arrayList : cro.r(arrayList.get(0)) : faiVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x009f, code lost:
    
        if (r2 <= 1) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a1, code lost:
    
        r6 = (byte[][]) r5.clone();
        r10 = r6.length - 1;
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00aa, code lost:
    
        if (r11 >= r10) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ac, code lost:
    
        r6[r11] = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f21205a;
        r12 = r13.f21211g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00b2, code lost:
    
        if (r12 == null) goto L117;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b4, code lost:
    
        r12 = g.cfg.l(r12, r6, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b8, code lost:
    
        if (r12 == null) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00bb, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00c3, code lost:
    
        if (r12 == null) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00c5, code lost:
    
        r2 = r2 - 1;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00c7, code lost:
    
        if (r6 >= r2) goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00c9, code lost:
    
        r8 = r13.f21208d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cb, code lost:
    
        if (r8 == null) goto L122;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00cd, code lost:
    
        r8 = g.cfg.l(r8, r5, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00d1, code lost:
    
        if (r8 == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d4, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e0, code lost:
    
        if (r8 == null) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e2, code lost:
    
        r1 = g.dcv.bt("!".concat(r8), new char[]{'.'});
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0123, code lost:
    
        if (r0.size() != r1.size()) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x012f, code lost:
    
        if (((java.lang.String) r1.get(0)).charAt(0) == '!') goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0131, code lost:
    
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x013c, code lost:
    
        if (((java.lang.String) r1.get(0)).charAt(0) != '!') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013e, code lost:
    
        r0 = r0.size();
        r1 = r1.size();
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0146, code lost:
    
        r0 = r0 - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0152, code lost:
    
        r1 = new g.fjj(0, h(r14));
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x015b, code lost:
    
        if (r0 < 0) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x015d, code lost:
    
        if (r0 != 0) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0160, code lost:
    
        r1 = new g.gsi(r1, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0166, code lost:
    
        r14 = new java.lang.StringBuilder();
        r14.append((java.lang.CharSequence) "");
        r1 = r1.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0178, code lost:
    
        if (r1.hasNext() == false) goto L123;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x017a, code lost:
    
        r2 = r1.next();
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x017f, code lost:
    
        if (r3 <= 1) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0181, code lost:
    
        r14.append((java.lang.CharSequence) ".");
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0186, code lost:
    
        g.gs.u(r14, r2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x018a, code lost:
    
        r14.append((java.lang.CharSequence) "");
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0191, code lost:
    
        return r14.toString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x01a3, code lost:
    
        throw new java.lang.IllegalArgumentException(g.awf.b(r0, "Requested element count ", " is less than zero.").toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0148, code lost:
    
        r0 = r0.size();
        r1 = r1.size() + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00f1, code lost:
    
        if (r9 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f3, code lost:
    
        if (r12 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00f5, code lost:
    
        r1 = okhttp3.internal.publicsuffix.PublicSuffixDatabase.f21206b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00f8, code lost:
    
        if (r9 == null) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00fa, code lost:
    
        r5 = g.dcv.bt(r9, new char[]{'.'});
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0104, code lost:
    
        if (r12 == null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0106, code lost:
    
        r1 = g.dcv.bt(r12, new char[]{'.'});
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0116, code lost:
    
        if (r5.size() <= r1.size()) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0118, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0103, code lost:
    
        r5 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00d7, code lost:
    
        g.bff.v("publicSuffixExceptionListBytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00dc, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00dd, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00be, code lost:
    
        g.bff.v("publicSuffixListBytes");
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00c1, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00c2, code lost:
    
        r12 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String i(String str) {
        String str2;
        String unicode = IDN.toUnicode(str);
        bff.e(unicode, "unicodeDomain");
        List h = h(unicode);
        List list = fai.f16469a;
        int i = 0;
        if (this.f21209e.get() || !this.f21209e.compareAndSet(false, true)) {
            try {
                this.f21210f.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z = false;
            while (true) {
                try {
                    try {
                        j();
                        break;
                    } catch (InterruptedIOException unused2) {
                        Thread.interrupted();
                        z = true;
                    } catch (IOException e2) {
                        bop bopVar = bop.h;
                        bop.h.getClass();
                        bop.j(5, "Failed to read public suffix list", e2);
                        if (z) {
                        }
                    }
                } finally {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }
        if (this.f21211g == null) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.");
        }
        int size = h.size();
        byte[][] bArr = new byte[size][];
        for (int i2 = 0; i2 < size; i2++) {
            String str3 = (String) h.get(i2);
            Charset charset = StandardCharsets.UTF_8;
            bff.e(charset, "UTF_8");
            byte[] bytes = str3.getBytes(charset);
            bff.e(bytes, "this as java.lang.String).getBytes(charset)");
            bArr[i2] = bytes;
        }
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                str2 = null;
                break;
            }
            byte[] bArr2 = this.f21211g;
            if (bArr2 == null) {
                bff.v("publicSuffixListBytes");
                throw null;
            }
            str2 = cfg.l(bArr2, bArr, i3);
            if (str2 != null) {
                break;
            }
            i3++;
        }
    }

    public final void j() {
        try {
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
            if (resourceAsStream != null) {
                deb ai = baf.ai(new dot(baf.bk(resourceAsStream)));
                try {
                    long readInt = ai.readInt();
                    ai.v(readInt);
                    byte[] z = ai.f14037d.z(readInt);
                    long readInt2 = ai.readInt();
                    ai.v(readInt2);
                    byte[] z2 = ai.f14037d.z(readInt2);
                    ai.close();
                    synchronized (this) {
                        this.f21211g = z;
                        this.f21208d = z2;
                    }
                } finally {
                }
            }
        } finally {
            this.f21210f.countDown();
        }
    }
}
