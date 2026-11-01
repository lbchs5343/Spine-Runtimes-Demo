package com.bykv.vk.openvk.preload.dq.d;

import com.bykv.vk.openvk.preload.dq.cd;
import com.bykv.vk.openvk.preload.dq.d.dq.q;
import com.bykv.vk.openvk.preload.dq.jy;
import com.bykv.vk.openvk.preload.dq.mp;
import java.io.EOFException;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes.dex */
public final class no {

    public static final class dq extends Writer {

        /* renamed from: d, reason: collision with root package name */
        private final C0013dq f617d = new C0013dq();
        private final Appendable dq;

        /* renamed from: com.bykv.vk.openvk.preload.dq.d.no$dq$dq, reason: collision with other inner class name */
        public static class C0013dq implements CharSequence {
            char[] dq;

            @Override // java.lang.CharSequence
            public final char charAt(int i) {
                return this.dq[i];
            }

            @Override // java.lang.CharSequence
            public final int length() {
                return this.dq.length;
            }

            @Override // java.lang.CharSequence
            public final CharSequence subSequence(int i, int i2) {
                return new String(this.dq, i, i2 - i);
            }
        }

        public dq(Appendable appendable) {
            this.dq = appendable;
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
        }

        @Override // java.io.Writer, java.io.Flushable
        public final void flush() {
        }

        @Override // java.io.Writer
        public final void write(int i) throws IOException {
            this.dq.append((char) i);
        }

        @Override // java.io.Writer
        public final void write(char[] cArr, int i, int i2) throws IOException {
            C0013dq c0013dq = this.f617d;
            c0013dq.dq = cArr;
            this.dq.append(c0013dq, i, i2 + i);
        }
    }

    public static com.bykv.vk.openvk.preload.dq.no dq(com.bykv.vk.openvk.preload.dq.p.dq dqVar) throws jy {
        boolean z;
        try {
            try {
                dqVar.iw();
                z = false;
            } catch (EOFException e2) {
                e = e2;
                z = true;
            }
            try {
                return q.ds.dq(dqVar);
            } catch (EOFException e3) {
                e = e3;
                if (z) {
                    return mp.dq;
                }
                throw new cd(e);
            }
        } catch (com.bykv.vk.openvk.preload.dq.p.p e4) {
            throw new cd(e4);
        } catch (IOException e5) {
            throw new com.bykv.vk.openvk.preload.dq.ig(e5);
        } catch (NumberFormatException e6) {
            throw new cd(e6);
        }
    }

    public static Writer dq(Appendable appendable) {
        return appendable instanceof Writer ? (Writer) appendable : new dq(appendable);
    }

    public static void dq(com.bykv.vk.openvk.preload.dq.no noVar, com.bykv.vk.openvk.preload.dq.p.ox oxVar) throws IOException {
        q.ds.dq(oxVar, noVar);
    }
}
