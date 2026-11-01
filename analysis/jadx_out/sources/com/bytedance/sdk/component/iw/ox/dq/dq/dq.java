package com.bytedance.sdk.component.iw.ox.dq.dq;

import g.tn;
import j$.util.Objects;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class dq implements Closeable {
    static final Pattern dq = Pattern.compile("[a-z0-9_-]{1,120}");
    public static final OutputStream ox = new OutputStream() { // from class: com.bytedance.sdk.component.iw.ox.dq.dq.dq.2
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    };

    /* renamed from: d, reason: collision with root package name */
    final ExecutorService f1955d;
    private final int ia;
    private Writer ig;
    private final File iw;
    private long kk;
    private final File mn;
    private final int o;
    private final File p;
    private int q;
    private final File s;
    private long no = 0;
    private final LinkedHashMap<String, d> mp = new LinkedHashMap<>(0, 0.75f, true);
    private long jy = -1;

    /* renamed from: f, reason: collision with root package name */
    private long f1956f = 0;
    private final Callable<Void> fw = new Callable<Void>() { // from class: com.bytedance.sdk.component.iw.ox.dq.dq.dq.1
        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (dq.this) {
                try {
                    if (dq.this.ig == null) {
                        return null;
                    }
                    dq.this.mn();
                    if (dq.this.s()) {
                        dq.this.p();
                        dq.this.q = 0;
                    }
                    return null;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };

    public final class d {

        /* renamed from: d, reason: collision with root package name */
        private final String f1957d;
        private long iw;
        private final long[] ox;
        private boolean p;
        private C0119dq s;

        private d(String str) {
            this.f1957d = str;
            this.ox = new long[dq.this.o];
        }

        private IOException d(String[] strArr) throws IOException {
            throw new IOException("unexpected journal line: " + Arrays.toString(strArr));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void dq(String[] strArr) throws IOException {
            if (strArr.length != dq.this.o) {
                throw d(strArr);
            }
            for (int i = 0; i < strArr.length; i++) {
                try {
                    this.ox[i] = Long.parseLong(strArr[i]);
                } catch (NumberFormatException unused) {
                    throw d(strArr);
                }
            }
        }

        public File d(int i) {
            return new File(dq.this.p, this.f1957d + "." + i + ".tmp");
        }

        public File dq(int i) {
            return new File(dq.this.p, this.f1957d + "." + i);
        }

        public String dq() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.ox) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }
    }

    /* renamed from: com.bytedance.sdk.component.iw.ox.dq.dq.dq$dq, reason: collision with other inner class name */
    public final class C0119dq {

        /* renamed from: d, reason: collision with root package name */
        private final d f1958d;
        private final boolean[] ox;
        private boolean p;
        private boolean s;

        /* renamed from: com.bytedance.sdk.component.iw.ox.dq.dq.dq$dq$dq, reason: collision with other inner class name */
        public class C0120dq extends FilterOutputStream {
            private C0120dq(OutputStream outputStream) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    C0119dq.this.p = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    C0119dq.this.p = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    C0119dq.this.p = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    C0119dq.this.p = true;
                }
            }
        }

        private C0119dq(d dVar) {
            this.f1958d = dVar;
            this.ox = dVar.p ? null : new boolean[dq.this.o];
        }

        public void d() throws IOException {
            dq.this.dq(this, false);
        }

        public OutputStream dq(int i) throws IOException {
            FileOutputStream fileOutputStream;
            C0120dq c0120dq;
            if (i < 0 || i >= dq.this.o) {
                StringBuilder z = tn.z(i, "Expected index ", " to be greater than 0 and less than the maximum value count of ");
                z.append(dq.this.o);
                throw new IllegalArgumentException(z.toString());
            }
            synchronized (dq.this) {
                try {
                    if (this.f1958d.s != this) {
                        throw new IllegalStateException();
                    }
                    if (!this.f1958d.p) {
                        this.ox[i] = true;
                    }
                    File d2 = this.f1958d.d(i);
                    try {
                        fileOutputStream = new FileOutputStream(d2);
                    } catch (FileNotFoundException unused) {
                        dq.this.p.mkdirs();
                        try {
                            fileOutputStream = new FileOutputStream(d2);
                        } catch (FileNotFoundException unused2) {
                            return dq.ox;
                        }
                    }
                    c0120dq = new C0120dq(fileOutputStream);
                } catch (Throwable th) {
                    throw th;
                }
            }
            return c0120dq;
        }

        public void dq() throws IOException {
            if (this.p) {
                dq.this.dq(this, false);
                dq.this.ox(this.f1958d.f1957d);
            } else {
                dq.this.dq(this, true);
            }
            this.s = true;
        }
    }

    public final class ox implements Closeable {

        /* renamed from: d, reason: collision with root package name */
        private final String f1959d;
        private final long ox;
        private final InputStream[] p;
        private final long[] s;

        private ox(String str, long j, InputStream[] inputStreamArr, long[] jArr) {
            this.f1959d = str;
            this.ox = j;
            this.p = inputStreamArr;
            this.s = jArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.p) {
                com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream);
            }
        }

        public InputStream dq(int i) {
            return this.p[i];
        }
    }

    private dq(File file, int i, int i2, long j, ExecutorService executorService) {
        this.p = file;
        this.ia = i;
        this.s = new File(file, "journal");
        this.iw = new File(file, "journal.tmp");
        this.mn = new File(file, "journal.bkp");
        this.o = i2;
        this.kk = j;
        this.f1955d = executorService;
    }

    private void d() throws IOException {
        com.bytedance.sdk.component.iw.ox.dq.dq.ox oxVar = new com.bytedance.sdk.component.iw.ox.dq.dq.ox(new FileInputStream(this.s), p.dq);
        try {
            String dq2 = oxVar.dq();
            String dq3 = oxVar.dq();
            String dq4 = oxVar.dq();
            String dq5 = oxVar.dq();
            String dq6 = oxVar.dq();
            if (!"libcore.io.DiskLruCache".equals(dq2) || !"1".equals(dq3) || !Integer.toString(this.ia).equals(dq4) || !Integer.toString(this.o).equals(dq5) || !"".equals(dq6)) {
                throw new IOException("unexpected journal header: [" + dq2 + ", " + dq3 + ", " + dq5 + ", " + dq6 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    p(oxVar.dq());
                    i++;
                } catch (EOFException unused) {
                    this.q = i - this.mp.size();
                    if (oxVar.d()) {
                        p();
                    } else {
                        this.ig = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.s, true), p.dq));
                    }
                    com.bytedance.sdk.component.iw.ox.ox.d.dq(oxVar);
                    return;
                }
            }
        } catch (Throwable th) {
            com.bytedance.sdk.component.iw.ox.ox.d.dq(oxVar);
            throw th;
        }
    }

    private synchronized C0119dq dq(String str, long j) throws IOException {
        iw();
        s(str);
        d dVar = this.mp.get(str);
        if (j != -1 && (dVar == null || dVar.iw != j)) {
            return null;
        }
        if (dVar == null) {
            dVar = new d(str);
            this.mp.put(str, dVar);
        } else if (dVar.s != null) {
            return null;
        }
        C0119dq c0119dq = new C0119dq(dVar);
        dVar.s = c0119dq;
        this.ig.write("DIRTY " + str + '\n');
        this.ig.flush();
        return c0119dq;
    }

    public static dq dq(File file, int i, int i2, long j, ExecutorService executorService) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                dq(file2, file3, false);
            }
        }
        dq dqVar = new dq(file, i, i2, j, executorService);
        if (dqVar.s.exists()) {
            try {
                dqVar.d();
                dqVar.ox();
                return dqVar;
            } catch (IOException e2) {
                Objects.toString(file);
                e2.getMessage();
                dqVar.delete();
            }
        }
        file.mkdirs();
        dq dqVar2 = new dq(file, i, i2, j, executorService);
        dqVar2.p();
        return dqVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void dq(C0119dq c0119dq, boolean z) throws IOException {
        d dVar = c0119dq.f1958d;
        if (dVar.s != c0119dq) {
            throw new IllegalStateException();
        }
        if (z && !dVar.p) {
            for (int i = 0; i < this.o; i++) {
                if (!c0119dq.ox[i]) {
                    c0119dq.d();
                    throw new IllegalStateException("Newly created entry didn't create value for index ".concat(String.valueOf(i)));
                }
                if (!dVar.d(i).exists()) {
                    c0119dq.d();
                    return;
                }
            }
        }
        for (int i2 = 0; i2 < this.o; i2++) {
            File d2 = dVar.d(i2);
            if (!z) {
                dq(d2);
            } else if (d2.exists()) {
                File dq2 = dVar.dq(i2);
                d2.renameTo(dq2);
                long j = dVar.ox[i2];
                long length = dq2.length();
                dVar.ox[i2] = length;
                this.no = (this.no - j) + length;
            }
        }
        this.q++;
        dVar.s = null;
        if (dVar.p || z) {
            dVar.p = true;
            this.ig.write("CLEAN " + dVar.f1957d + dVar.dq() + '\n');
            if (z) {
                long j2 = this.f1956f;
                this.f1956f = 1 + j2;
                dVar.iw = j2;
            }
        } else {
            this.mp.remove(dVar.f1957d);
            this.ig.write("REMOVE " + dVar.f1957d + '\n');
        }
        this.ig.flush();
        if (this.no > this.kk || s()) {
            this.f1955d.submit(this.fw);
        }
    }

    private static void dq(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    private static void dq(File file, File file2, boolean z) throws IOException {
        if (z) {
            dq(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    private void iw() {
        if (this.ig == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void mn() throws IOException {
        long j = this.kk;
        long j2 = this.jy;
        if (j2 >= 0) {
            j = j2;
        }
        while (this.no > j) {
            ox(this.mp.entrySet().iterator().next().getKey());
        }
        this.jy = -1L;
    }

    private void ox() throws IOException {
        dq(this.iw);
        Iterator<d> it = this.mp.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i = 0;
            if (next.s == null) {
                while (i < this.o) {
                    this.no += next.ox[i];
                    i++;
                }
            } else {
                next.s = null;
                while (i < this.o) {
                    dq(next.dq(i));
                    dq(next.d(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void p() throws IOException {
        try {
            Writer writer = this.ig;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.iw), p.dq));
            try {
                bufferedWriter.write("libcore.io.DiskLruCache");
                bufferedWriter.write("\n");
                bufferedWriter.write("1");
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.ia));
                bufferedWriter.write("\n");
                bufferedWriter.write(Integer.toString(this.o));
                bufferedWriter.write("\n");
                bufferedWriter.write("\n");
                for (d dVar : this.mp.values()) {
                    if (dVar.s != null) {
                        bufferedWriter.write("DIRTY " + dVar.f1957d + '\n');
                    } else {
                        bufferedWriter.write("CLEAN " + dVar.f1957d + dVar.dq() + '\n');
                    }
                }
                bufferedWriter.close();
                if (this.s.exists()) {
                    dq(this.s, this.mn, true);
                }
                dq(this.iw, this.s, false);
                this.mn.delete();
                this.ig = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.s, true), p.dq));
            } catch (Throwable th) {
                bufferedWriter.close();
                throw th;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void p(String str) throws IOException {
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
                this.mp.remove(substring);
                return;
            }
        } else {
            substring = str.substring(i, indexOf2);
        }
        d dVar = this.mp.get(substring);
        if (dVar == null) {
            dVar = new d(substring);
            this.mp.put(substring, dVar);
        }
        if (indexOf2 != -1 && indexOf == 5 && str.startsWith("CLEAN")) {
            String[] split = str.substring(indexOf2 + 1).split(" ");
            dVar.p = true;
            dVar.s = null;
            dVar.dq(split);
            return;
        }
        if (indexOf2 == -1 && indexOf == 5 && str.startsWith("DIRTY")) {
            dVar.s = new C0119dq(dVar);
        } else if (indexOf2 != -1 || indexOf != 4 || !str.startsWith("READ")) {
            throw new IOException("unexpected journal line: ".concat(str));
        }
    }

    private void s(String str) {
        if (!dq.matcher(str).matches()) {
            throw new IllegalArgumentException(tn.ad("keys must match regex [a-z0-9_-]{1,120}: \"", str, "\""));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s() {
        int i = this.q;
        return i >= 2000 && i >= this.mp.size();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        try {
            if (this.ig == null) {
                return;
            }
            Iterator it = new ArrayList(this.mp.values()).iterator();
            while (it.hasNext()) {
                d dVar = (d) it.next();
                if (dVar.s != null) {
                    dVar.s.d();
                }
            }
            mn();
            this.ig.close();
            this.ig = null;
        } catch (Throwable th) {
            throw th;
        }
    }

    public C0119dq d(String str) throws IOException {
        return dq(str, -1L);
    }

    public void delete() throws IOException {
        close();
        p.dq(this.p);
    }

    public synchronized ox dq(String str) throws IOException {
        Throwable th;
        InputStream inputStream;
        try {
            iw();
            s(str);
            d dVar = this.mp.get(str);
            if (dVar == null) {
                return null;
            }
            if (!dVar.p) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.o];
            for (int i = 0; i < this.o; i++) {
                try {
                    try {
                        try {
                            inputStreamArr[i] = new FileInputStream(dVar.dq(i));
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    } catch (FileNotFoundException unused) {
                        for (int i2 = 0; i2 < this.o && (inputStream = inputStreamArr[i2]) != null; i2++) {
                            com.bytedance.sdk.component.iw.ox.ox.d.dq(inputStream);
                        }
                        return null;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    throw th;
                }
            }
            this.q++;
            this.ig.append((CharSequence) ("READ " + str + '\n'));
            if (s()) {
                this.f1955d.submit(this.fw);
            }
            return new ox(str, dVar.iw, inputStreamArr, dVar.ox);
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public synchronized void dq() throws IOException {
        iw();
        mn();
        this.ig.flush();
    }

    public void dq(long j) {
        this.jy = j;
        this.f1955d.submit(this.fw);
    }

    public synchronized boolean ox(String str) throws IOException {
        try {
            iw();
            s(str);
            d dVar = this.mp.get(str);
            if (dVar != null && dVar.s == null) {
                for (int i = 0; i < this.o; i++) {
                    File dq2 = dVar.dq(i);
                    if (dq2.exists() && !dq2.delete()) {
                        throw new IOException("failed to delete ".concat(String.valueOf(dq2)));
                    }
                    this.no -= dVar.ox[i];
                    dVar.ox[i] = 0;
                }
                this.q++;
                this.ig.append((CharSequence) ("REMOVE " + str + '\n'));
                this.mp.remove(str);
                if (s()) {
                    this.f1955d.submit(this.fw);
                }
                return true;
            }
            return false;
        } finally {
        }
    }
}
