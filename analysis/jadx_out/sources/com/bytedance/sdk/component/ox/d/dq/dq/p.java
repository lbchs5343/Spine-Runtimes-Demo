package com.bytedance.sdk.component.ox.d.dq.dq;

import com.bytedance.sdk.component.ox.dq.cd;
import com.bytedance.sdk.component.ox.dq.gh;
import com.bytedance.sdk.component.ox.dq.ig;
import g.tn;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class p implements Closeable, Flushable {
    static final Pattern dq = Pattern.compile("[a-z0-9_-]{1,120}");
    static final /* synthetic */ boolean mp = true;
    private long cd;

    /* renamed from: d, reason: collision with root package name */
    final com.bytedance.sdk.component.ox.d.dq.iw.dq f2055d;

    /* renamed from: f, reason: collision with root package name */
    private final File f2056f;
    private final int fw;
    private long gh;
    private final Executor i;
    boolean ia;
    boolean ig;
    final LinkedHashMap<String, d> iw;
    private final File jy;
    boolean kk;
    private final Runnable le;
    int mn;
    boolean no;
    boolean o;
    final File ox;
    final int p;
    private final File q;
    private long r;
    com.bytedance.sdk.component.ox.dq.p s;

    public final class d {

        /* renamed from: d, reason: collision with root package name */
        final long[] f2058d;
        final String dq;
        dq iw;
        long mn;
        final File[] ox;
        final File[] p;
        boolean s;

        public d(String str) {
            this.dq = str;
            int i = p.this.p;
            this.f2058d = new long[i];
            this.ox = new File[i];
            this.p = new File[i];
            StringBuilder sb = new StringBuilder(str);
            sb.append('.');
            int length = sb.length();
            for (int i2 = 0; i2 < p.this.p; i2++) {
                sb.append(i2);
                this.ox[i2] = new File(p.this.ox, sb.toString());
                sb.append(".tmp");
                this.p[i2] = new File(p.this.ox, sb.toString());
                sb.setLength(length);
            }
        }

        private IOException d(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        public void dq(com.bytedance.sdk.component.ox.dq.p pVar) throws IOException {
            for (long j : this.f2058d) {
                pVar.kk(32).ig(j);
            }
        }

        public void dq(String[] strArr) throws IOException {
            if (strArr.length != p.this.p) {
                throw d(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.f2058d[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw d(strArr);
                }
            }
        }
    }

    public final class dq {

        /* renamed from: d, reason: collision with root package name */
        final boolean[] f2059d;
        final d dq;
        private boolean p;

        public dq(d dVar) {
            this.dq = dVar;
            this.f2059d = dVar.s ? null : new boolean[p.this.p];
        }

        public void d() throws IOException {
            synchronized (p.this) {
                try {
                    if (this.p) {
                        throw new IllegalStateException();
                    }
                    if (this.dq.iw == this) {
                        p.this.dq(this, true);
                    }
                    this.p = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public cd dq(int i) {
            synchronized (p.this) {
                try {
                    if (this.p) {
                        throw new IllegalStateException();
                    }
                    d dVar = this.dq;
                    if (dVar.iw != this) {
                        return ig.dq();
                    }
                    if (!dVar.s) {
                        this.f2059d[i] = true;
                    }
                    try {
                        return new s(p.this.f2055d.d(dVar.p[i])) { // from class: com.bytedance.sdk.component.ox.d.dq.dq.p.dq.1
                            @Override // com.bytedance.sdk.component.ox.d.dq.dq.s
                            public void dq(IOException iOException) {
                                synchronized (p.this) {
                                    dq.this.dq();
                                }
                            }
                        };
                    } catch (FileNotFoundException unused) {
                        return ig.dq();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void dq() {
            if (this.dq.iw != this) {
                return;
            }
            int i = 0;
            while (true) {
                p pVar = p.this;
                if (i >= pVar.p) {
                    this.dq.iw = null;
                    return;
                } else {
                    try {
                        pVar.f2055d.delete(this.dq.p[i]);
                    } catch (IOException unused) {
                    }
                    i++;
                }
            }
        }

        public void ox() throws IOException {
            synchronized (p.this) {
                try {
                    if (this.p) {
                        throw new IllegalStateException();
                    }
                    if (this.dq.iw == this) {
                        p.this.dq(this, false);
                    }
                    this.p = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public final class ox implements Closeable {

        /* renamed from: d, reason: collision with root package name */
        private final String f2060d;
        final /* synthetic */ p dq;
        private final long ox;
        private final gh[] p;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (gh ghVar : this.p) {
                com.bytedance.sdk.component.ox.d.dq.ox.dq(ghVar);
            }
        }

        public dq dq() throws IOException {
            return this.dq.dq(this.f2060d, this.ox);
        }
    }

    private void d(String str) {
        if (!dq.matcher(str).matches()) {
            throw new IllegalArgumentException(tn.ad("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
        }
    }

    private void dq(String str) throws IOException {
        String substring;
        int indexOf = str.indexOf(32);
        if (indexOf == -1) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
        int i = indexOf + 1;
        int indexOf2 = str.indexOf(32, i);
        if (indexOf2 == -1) {
            substring = str.substring(i);
            if (indexOf == 6 && str.startsWith("REMOVE")) {
                this.iw.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        d dVar = this.iw.get(substring);
        if (dVar == null) {
            dVar = new d(substring);
            this.iw.put(substring, dVar);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            dVar.s = true;
            dVar.iw = null;
            dVar.dq(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            dVar.iw = new dq(dVar);
        } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
    }

    private void ia() throws IOException {
        this.f2055d.delete(this.jy);
        Iterator<d> it = this.iw.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i = 0;
            if (next.iw == null) {
                while (i < this.p) {
                    this.gh += next.f2058d[i];
                    i++;
                }
            } else {
                next.iw = null;
                while (i < this.p) {
                    this.f2055d.delete(next.ox[i]);
                    this.f2055d.delete(next.p[i]);
                    i++;
                }
                it.remove();
            }
        }
    }

    private void iw() throws IOException {
        com.bytedance.sdk.component.ox.dq.s dq2 = ig.dq(this.f2055d.dq(this.q));
        try {
            String f2 = dq2.f();
            String f3 = dq2.f();
            String f4 = dq2.f();
            String f5 = dq2.f();
            String f6 = dq2.f();
            if (!"libcore.io.DiskLruCache".equals(f2) || !"1".equals(f3) || !Integer.toString(this.fw).equals(f4) || !Integer.toString(this.p).equals(f5) || !"".equals(f6)) {
                throw new IOException("unexpected journal header: [" + f2 + ", " + f3 + ", " + f5 + ", " + f6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    dq(dq2.f());
                    i++;
                } catch (EOFException unused) {
                    this.mn = i - this.iw.size();
                    if (dq2.s()) {
                        this.s = mn();
                    } else {
                        d();
                    }
                    com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2);
                    return;
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.ox.d.dq.ox.dq(dq2);
            throw th;
        }
    }

    private synchronized void kk() {
        if (p()) {
            throw new IllegalStateException("cache is closed");
        }
    }

    private com.bytedance.sdk.component.ox.dq.p mn() throws FileNotFoundException {
        return ig.dq(new s(this.f2055d.ox(this.q)) { // from class: com.bytedance.sdk.component.ox.d.dq.dq.p.1
            static final /* synthetic */ boolean dq = true;

            @Override // com.bytedance.sdk.component.ox.d.dq.dq.s
            public void dq(IOException iOException) {
                if (!dq && !Thread.holdsLock(p.this)) {
                    throw new AssertionError();
                }
                p.this.ia = true;
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.kk && !this.o) {
                for (d dVar : (d[]) this.iw.values().toArray(new d[this.iw.size()])) {
                    dq dqVar = dVar.iw;
                    if (dqVar != null) {
                        dqVar.ox();
                    }
                }
                s();
                this.s.close();
                this.s = null;
                this.o = true;
                return;
            }
            this.o = true;
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void d() throws IOException {
        try {
            com.bytedance.sdk.component.ox.dq.p pVar = this.s;
            if (pVar != null) {
                pVar.close();
            }
            com.bytedance.sdk.component.ox.dq.p dq2 = ig.dq(this.f2055d.d(this.jy));
            try {
                dq2.d("libcore.io.DiskLruCache").kk(10);
                dq2.d("1").kk(10);
                dq2.ig(this.fw).kk(10);
                dq2.ig(this.p).kk(10);
                dq2.kk(10);
                for (d dVar : this.iw.values()) {
                    if (dVar.iw != null) {
                        dq2.d("DIRTY").kk(32);
                        dq2.d(dVar.dq);
                        dq2.kk(10);
                    } else {
                        dq2.d("CLEAN").kk(32);
                        dq2.d(dVar.dq);
                        dVar.dq(dq2);
                        dq2.kk(10);
                    }
                }
                dq2.close();
                if (this.f2055d.p(this.q)) {
                    this.f2055d.dq(this.q, this.f2056f);
                }
                this.f2055d.dq(this.jy, this.q);
                this.f2055d.delete(this.f2056f);
                this.s = mn();
                this.ia = false;
                this.ig = false;
            } catch (Throwable th) {
                dq2.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void delete() throws IOException {
        close();
        this.f2055d.iw(this.ox);
    }

    public synchronized dq dq(String str, long j) throws IOException {
        dq();
        kk();
        d(str);
        d dVar = this.iw.get(str);
        if (j != -1 && (dVar == null || dVar.mn != j)) {
            return null;
        }
        if (dVar != null && dVar.iw != null) {
            return null;
        }
        if (!this.no && !this.ig) {
            this.s.d("DIRTY").kk(32).d(str).kk(10);
            this.s.flush();
            if (this.ia) {
                return null;
            }
            if (dVar == null) {
                dVar = new d(str);
                this.iw.put(str, dVar);
            }
            dq dqVar = new dq(dVar);
            dVar.iw = dqVar;
            return dqVar;
        }
        this.i.execute(this.le);
        return null;
    }

    public synchronized void dq() throws IOException {
        try {
            if (!mp && !Thread.holdsLock(this)) {
                throw new AssertionError();
            }
            if (this.kk) {
                return;
            }
            if (this.f2055d.p(this.f2056f)) {
                if (this.f2055d.p(this.q)) {
                    this.f2055d.delete(this.f2056f);
                } else {
                    this.f2055d.dq(this.f2056f, this.q);
                }
            }
            if (this.f2055d.p(this.q)) {
                try {
                    iw();
                    ia();
                    this.kk = true;
                    return;
                } catch (IOException e2) {
                    com.bytedance.sdk.component.ox.d.dq.mn.s.d().dq(5, "DiskLruCache " + this.ox + " is corrupt: " + e2.getMessage() + ", removing", e2);
                    try {
                        delete();
                        this.o = false;
                    } catch (Throwable th) {
                        this.o = false;
                        throw th;
                    }
                }
            }
            d();
            this.kk = true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void dq(dq dqVar, boolean z) throws IOException {
        d dVar = dqVar.dq;
        if (dVar.iw != dqVar) {
            throw new IllegalStateException();
        }
        if (z && !dVar.s) {
            for (int i = 0; i < this.p; i++) {
                if (!dqVar.f2059d[i]) {
                    dqVar.ox();
                    throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i)));
                }
                if (!this.f2055d.p(dVar.p[i])) {
                    dqVar.ox();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.p; i2++) {
            File file = dVar.p[i2];
            if (!z) {
                this.f2055d.delete(file);
            } else if (this.f2055d.p(file)) {
                File file2 = dVar.ox[i2];
                this.f2055d.dq(file, file2);
                long j = dVar.f2058d[i2];
                long s = this.f2055d.s(file2);
                dVar.f2058d[i2] = s;
                this.gh = (this.gh - j) + s;
            }
        }
        this.mn++;
        dVar.iw = null;
        if (dVar.s || z) {
            dVar.s = true;
            this.s.d("CLEAN").kk(32);
            this.s.d(dVar.dq);
            dVar.dq(this.s);
            this.s.kk(10);
            if (z) {
                long j2 = this.r;
                this.r = 1 + j2;
                dVar.mn = j2;
            }
        } else {
            this.iw.remove(dVar.dq);
            this.s.d("REMOVE").kk(32);
            this.s.d(dVar.dq);
            this.s.kk(10);
        }
        this.s.flush();
        if (this.gh > this.cd || ox()) {
            this.i.execute(this.le);
        }
    }

    public boolean dq(d dVar) throws IOException {
        dq dqVar = dVar.iw;
        if (dqVar != null) {
            dqVar.dq();
        }
        for (int i = 0; i < this.p; i++) {
            this.f2055d.delete(dVar.ox[i]);
            long j = this.gh;
            long[] jArr = dVar.f2058d;
            this.gh = j - jArr[i];
            jArr[i] = 0;
        }
        this.mn++;
        this.s.d("REMOVE").kk(32).d(dVar.dq).kk(10);
        this.iw.remove(dVar.dq);
        if (ox()) {
            this.i.execute(this.le);
        }
        return true;
    }

    @Override // java.io.Flushable
    public synchronized void flush() throws IOException {
        if (this.kk) {
            kk();
            s();
            this.s.flush();
        }
    }

    public boolean ox() {
        int i = this.mn;
        return i >= 2000 && i >= this.iw.size();
    }

    public synchronized boolean p() {
        return this.o;
    }

    public void s() throws IOException {
        while (this.gh > this.cd) {
            dq(this.iw.values().iterator().next());
        }
        this.no = false;
    }
}
