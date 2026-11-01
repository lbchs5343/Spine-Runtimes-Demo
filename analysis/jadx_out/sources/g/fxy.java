package g;

import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.Flushable;
import java.io.IOException;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes3.dex */
public final class fxy implements Closeable, Flushable {

    /* renamed from: f, reason: collision with root package name */
    public final LinkedHashMap f17611f;

    /* renamed from: g, reason: collision with root package name */
    public long f17612g;
    public ago h;
    public boolean i;
    public boolean j;
    public final File k;
    public boolean l;
    public boolean m;
    public final File n;
    public final File o;
    public final lm p;
    public final File q;
    public int r;
    public final long s;
    public boolean t;
    public final gfw u;
    public boolean v;
    public long w;

    /* renamed from: d, reason: collision with root package name */
    public static final hu f17609d = new hu("[a-z0-9_-]{1,120}");

    /* renamed from: a, reason: collision with root package name */
    public static final String f17606a = "CLEAN";

    /* renamed from: c, reason: collision with root package name */
    public static final String f17608c = "DIRTY";

    /* renamed from: b, reason: collision with root package name */
    public static final String f17607b = "REMOVE";

    /* renamed from: e, reason: collision with root package name */
    public static final String f17610e = "READ";

    public fxy(File file, long j, amr amrVar) {
        bff.p(amrVar, "taskRunner");
        this.q = file;
        this.s = j;
        this.f17611f = new LinkedHashMap(0, 0.75f, true);
        this.u = amrVar.l();
        this.p = new lm(this, awf.ad(new StringBuilder(), erq.f16047g, " Cache"), 0);
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        this.k = new File(file, "journal");
        this.n = new File(file, "journal.tmp");
        this.o = new File(file, "journal.bkp");
    }

    public static void x(String str) {
        if (f17609d.a(str)) {
            return;
        }
        throw new IllegalArgumentException(("keys must match regex [a-z0-9_-]{1,120}: \"" + str + '\"').toString());
    }

    public final synchronized px aa(String str) {
        bff.p(str, "key");
        ae();
        ag();
        x(str);
        egq egqVar = (egq) this.f17611f.get(str);
        if (egqVar == null) {
            return null;
        }
        px k = egqVar.k();
        if (k == null) {
            return null;
        }
        this.r++;
        ago agoVar = this.h;
        bff.d(agoVar);
        agoVar.j(f17610e);
        agoVar.writeByte(32);
        agoVar.j(str);
        agoVar.writeByte(10);
        if (ak()) {
            this.u.l(this.p, 0L);
        }
        return k;
    }

    public final void ab(egq egqVar) {
        ago agoVar;
        String str = egqVar.f15508d;
        if (!this.m) {
            if (egqVar.f15505a > 0 && (agoVar = this.h) != null) {
                agoVar.j(f17608c);
                agoVar.writeByte(32);
                agoVar.j(str);
                agoVar.writeByte(10);
                agoVar.flush();
            }
            if (egqVar.f15505a > 0 || egqVar.j != null) {
                egqVar.f15509e = true;
                return;
            }
        }
        abv abvVar = egqVar.j;
        if (abvVar != null) {
            abvVar.h();
        }
        for (int i = 0; i < 2; i++) {
            File file = (File) egqVar.i.get(i);
            bff.p(file, "file");
            if (!file.delete() && file.exists()) {
                throw new IOException("failed to delete " + file);
            }
            long j = this.w;
            long[] jArr = egqVar.f15511g;
            this.w = j - jArr[i];
            jArr[i] = 0;
        }
        this.r++;
        ago agoVar2 = this.h;
        if (agoVar2 != null) {
            agoVar2.j(f17607b);
            agoVar2.writeByte(32);
            agoVar2.j(str);
            agoVar2.writeByte(10);
        }
        this.f17611f.remove(str);
        if (ak()) {
            this.u.l(this.p, 0L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
    
        ab(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void ac() {
        while (this.w > this.s) {
            for (egq egqVar : this.f17611f.values()) {
                if (!egqVar.f15509e) {
                    break;
                }
            }
            return;
        }
        this.t = false;
    }

    public final synchronized void ad() {
        dgz dgzVar;
        try {
            ago agoVar = this.h;
            if (agoVar != null) {
                agoVar.close();
            }
            File file = this.n;
            bff.p(file, "file");
            try {
                Logger logger = aro.f10725a;
                dgzVar = new dgz(new FileOutputStream(file, false), 1, new dme());
            } catch (FileNotFoundException unused) {
                file.getParentFile().mkdirs();
                Logger logger2 = aro.f10725a;
                dgzVar = new dgz(new FileOutputStream(file, false), 1, new dme());
            }
            ago w = baf.w(dgzVar);
            try {
                w.j("libcore.io.DiskLruCache");
                w.writeByte(10);
                w.j("1");
                w.writeByte(10);
                w.l(201105);
                w.writeByte(10);
                w.l(2);
                w.writeByte(10);
                w.writeByte(10);
                for (egq egqVar : this.f17611f.values()) {
                    if (egqVar.j != null) {
                        w.j(f17608c);
                        w.writeByte(32);
                        w.j(egqVar.f15508d);
                        w.writeByte(10);
                    } else {
                        w.j(f17606a);
                        w.writeByte(32);
                        w.j(egqVar.f15508d);
                        egqVar.l(w);
                        w.writeByte(10);
                    }
                }
                w.close();
                bfy bfyVar = bfy.r;
                if (bfyVar.ag(this.k)) {
                    bfyVar.ae(this.k, this.o);
                }
                bfyVar.ae(this.n, this.k);
                bfyVar.ai(this.o);
                this.h = y();
                this.j = false;
                this.i = false;
            } finally {
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void ae() {
        boolean z;
        try {
            byte[] bArr = erq.f16043c;
            if (this.l) {
                return;
            }
            bfy bfyVar = bfy.r;
            if (bfyVar.ag(this.o)) {
                if (bfyVar.ag(this.k)) {
                    bfyVar.ai(this.o);
                } else {
                    bfyVar.ae(this.o, this.k);
                }
            }
            File file = this.o;
            bff.p(file, "file");
            dgz af = bfyVar.af(file);
            try {
                bfyVar.ai(file);
                af.close();
                z = true;
            } catch (IOException unused) {
                af.close();
                bfyVar.ai(file);
                z = false;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    ckd.n(af, th);
                    throw th2;
                }
            }
            this.m = z;
            File file2 = this.k;
            bff.p(file2, "file");
            if (file2.exists()) {
                try {
                    aj();
                    ah();
                    this.l = true;
                    return;
                } catch (IOException e2) {
                    bop bopVar = bop.h;
                    bop bopVar2 = bop.h;
                    String str = "DiskLruCache " + this.q + " is corrupt: " + e2.getMessage() + ", removing";
                    bopVar2.getClass();
                    bop.j(5, str, e2);
                    try {
                        close();
                        bfy.r.ad(this.q);
                        this.v = false;
                    } catch (Throwable th3) {
                        this.v = false;
                        throw th3;
                    }
                }
            }
            ad();
            this.l = true;
        } catch (Throwable th4) {
            throw th4;
        }
    }

    public final void af(String str) {
        String substring;
        int bh = dcv.bh(str, ' ', 0, 6);
        if (bh == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i = bh + 1;
        int bh2 = dcv.bh(str, ' ', i, 4);
        LinkedHashMap linkedHashMap = this.f17611f;
        if (bh2 == -1) {
            substring = str.substring(i);
            bff.e(substring, "this as java.lang.String).substring(startIndex)");
            String str2 = f17607b;
            if (bh == str2.length() && dmc.bw(str, str2, false)) {
                linkedHashMap.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, bh2);
            bff.e(substring, "this as java.lang.String…ing(startIndex, endIndex)");
        }
        egq egqVar = (egq) linkedHashMap.get(substring);
        if (egqVar == null) {
            egqVar = new egq(this, substring);
            linkedHashMap.put(substring, egqVar);
        }
        if (bh2 != -1) {
            String str3 = f17606a;
            if (bh == str3.length() && dmc.bw(str, str3, false)) {
                String substring2 = str.substring(bh2 + 1);
                bff.e(substring2, "this as java.lang.String).substring(startIndex)");
                List bt = dcv.bt(substring2, new char[]{' '});
                egqVar.f15507c = true;
                egqVar.j = null;
                int size = bt.size();
                egqVar.h.getClass();
                if (size != 2) {
                    throw new IOException("unexpected journal line: " + bt);
                }
                try {
                    int size2 = bt.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        egqVar.f15511g[i2] = Long.parseLong((String) bt.get(i2));
                    }
                    return;
                } catch (NumberFormatException unused) {
                    throw new IOException("unexpected journal line: " + bt);
                }
            }
        }
        if (bh2 == -1) {
            String str4 = f17608c;
            if (bh == str4.length() && dmc.bw(str, str4, false)) {
                egqVar.j = new abv(this, egqVar);
                return;
            }
        }
        if (bh2 == -1) {
            String str5 = f17610e;
            if (bh == str5.length() && dmc.bw(str, str5, false)) {
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    public final synchronized void ag() {
        if (this.v) {
            throw new IllegalStateException("cache is closed");
        }
    }

    public final void ah() {
        bfy bfyVar = bfy.r;
        bfyVar.ai(this.n);
        Iterator it = this.f17611f.values().iterator();
        while (it.hasNext()) {
            Object next = it.next();
            bff.e(next, "i.next()");
            egq egqVar = (egq) next;
            int i = 0;
            if (egqVar.j == null) {
                while (i < 2) {
                    this.w += egqVar.f15511g[i];
                    i++;
                }
            } else {
                egqVar.j = null;
                while (i < 2) {
                    bfyVar.ai((File) egqVar.i.get(i));
                    bfyVar.ai((File) egqVar.f15506b.get(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public final synchronized void ai(abv abvVar, boolean z) {
        egq egqVar = abvVar.f9947b;
        if (!bff.n(egqVar.j, abvVar)) {
            throw new IllegalStateException("Check failed.");
        }
        if (z && !egqVar.f15507c) {
            for (int i = 0; i < 2; i++) {
                boolean[] zArr = abvVar.f9948c;
                bff.d(zArr);
                if (!zArr[i]) {
                    abvVar.f();
                    throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                }
                File file = (File) egqVar.f15506b.get(i);
                bff.p(file, "file");
                if (!file.exists()) {
                    abvVar.f();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < 2; i2++) {
            File file2 = (File) egqVar.f15506b.get(i2);
            if (!z || egqVar.f15509e) {
                bff.p(file2, "file");
                if (!file2.delete() && file2.exists()) {
                    throw new IOException("failed to delete " + file2);
                }
            } else {
                bfy bfyVar = bfy.r;
                if (bfyVar.ag(file2)) {
                    File file3 = (File) egqVar.i.get(i2);
                    bfyVar.ae(file2, file3);
                    long j = egqVar.f15511g[i2];
                    long length = file3.length();
                    egqVar.f15511g[i2] = length;
                    this.w = (this.w - j) + length;
                }
            }
        }
        egqVar.j = null;
        if (egqVar.f15509e) {
            ab(egqVar);
            return;
        }
        this.r++;
        ago agoVar = this.h;
        bff.d(agoVar);
        if (!egqVar.f15507c && !z) {
            this.f17611f.remove(egqVar.f15508d);
            agoVar.j(f17607b);
            agoVar.writeByte(32);
            agoVar.j(egqVar.f15508d);
            agoVar.writeByte(10);
            agoVar.flush();
            if (this.w <= this.s || ak()) {
                this.u.l(this.p, 0L);
            }
        }
        egqVar.f15507c = true;
        agoVar.j(f17606a);
        agoVar.writeByte(32);
        agoVar.j(egqVar.f15508d);
        egqVar.l(agoVar);
        agoVar.writeByte(10);
        if (z) {
            long j2 = this.f17612g;
            this.f17612g = 1 + j2;
            egqVar.f15510f = j2;
        }
        agoVar.flush();
        if (this.w <= this.s) {
        }
        this.u.l(this.p, 0L);
    }

    public final void aj() {
        File file = this.k;
        bff.p(file, "file");
        Logger logger = aro.f10725a;
        deb ai = baf.ai(new dix(new FileInputStream(file), dme.n));
        try {
            String s = ai.s(Long.MAX_VALUE);
            String s2 = ai.s(Long.MAX_VALUE);
            String s3 = ai.s(Long.MAX_VALUE);
            String s4 = ai.s(Long.MAX_VALUE);
            String s5 = ai.s(Long.MAX_VALUE);
            if (!"libcore.io.DiskLruCache".equals(s) || !"1".equals(s2) || !bff.n(String.valueOf(201105), s3) || !bff.n(String.valueOf(2), s4) || s5.length() > 0) {
                throw new IOException("unexpected journal header: [" + s + ", " + s2 + ", " + s4 + ", " + s5 + ']');
            }
            int i = 0;
            while (true) {
                try {
                    af(ai.s(Long.MAX_VALUE));
                    i++;
                } catch (EOFException unused) {
                    this.r = i - this.f17611f.size();
                    if (ai.i()) {
                        this.h = y();
                    } else {
                        ad();
                    }
                    ai.close();
                    return;
                }
            }
        } finally {
        }
    }

    public final boolean ak() {
        int i = this.r;
        return i >= 2000 && i >= this.f17611f.size();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        try {
            if (this.l && !this.v) {
                Collection values = this.f17611f.values();
                bff.e(values, "lruEntries.values");
                for (egq egqVar : (egq[]) values.toArray(new egq[0])) {
                    abv abvVar = egqVar.j;
                    if (abvVar != null) {
                        abvVar.h();
                    }
                }
                ac();
                ago agoVar = this.h;
                bff.d(agoVar);
                agoVar.close();
                this.h = null;
                this.v = true;
                return;
            }
            this.v = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Flushable
    public final synchronized void flush() {
        if (this.l) {
            ag();
            ac();
            ago agoVar = this.h;
            bff.d(agoVar);
            agoVar.flush();
        }
    }

    public final ago y() {
        dgz dgzVar;
        File file = this.k;
        bff.p(file, "file");
        try {
            Logger logger = aro.f10725a;
            dgzVar = new dgz(new FileOutputStream(file, true), 1, new dme());
        } catch (FileNotFoundException unused) {
            file.getParentFile().mkdirs();
            Logger logger2 = aro.f10725a;
            dgzVar = new dgz(new FileOutputStream(file, true), 1, new dme());
        }
        return baf.w(new eqv(dgzVar, new bmq(this)));
    }

    public final synchronized abv z(long j, String str) {
        bff.p(str, "key");
        ae();
        ag();
        x(str);
        egq egqVar = (egq) this.f17611f.get(str);
        if (j != -1 && (egqVar == null || egqVar.f15510f != j)) {
            return null;
        }
        if ((egqVar != null ? egqVar.j : null) != null) {
            return null;
        }
        if (egqVar != null && egqVar.f15505a != 0) {
            return null;
        }
        if (!this.t && !this.i) {
            ago agoVar = this.h;
            bff.d(agoVar);
            agoVar.j(f17608c);
            agoVar.writeByte(32);
            agoVar.j(str);
            agoVar.writeByte(10);
            agoVar.flush();
            if (this.j) {
                return null;
            }
            if (egqVar == null) {
                egqVar = new egq(this, str);
                this.f17611f.put(str, egqVar);
            }
            abv abvVar = new abv(this, egqVar);
            egqVar.j = abvVar;
            return abvVar;
        }
        this.u.l(this.p, 0L);
        return null;
    }
}
